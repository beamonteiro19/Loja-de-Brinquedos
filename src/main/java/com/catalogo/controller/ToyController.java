package com.catalogo.controller;

import java.io.IOException;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.view.freemarker.FreeMarkerConfigurer;

import com.catalogo.model.Toy;
import com.catalogo.service.ToyService;

import freemarker.template.Template;
import freemarker.template.TemplateException;

@Controller
public class ToyController {

    @Autowired
    private ToyService toyService;

    @Autowired
    private FreeMarkerConfigurer freeMarkerConfigurer;

    @GetMapping("/")
    public String viewAddToys(Model model) throws IOException, TemplateException {
        findPaginated(1, "name", "asc", model);
        List<Toy> listToys = toyService.getAllToys();
        model.addAttribute("toys", listToys);
        return "index";
    }

    @GetMapping("/list_toys")
    public String showListToysPage(Model model) {
        List<Toy> listToys = toyService.getAllToys();
        model.addAttribute("listToys", listToys);
        return "list_toys";
    }

    @GetMapping("/search")
    public String searchToys(@RequestParam(name = "query", required = false) String query, Model model) {
        List<Toy> searchResults = new ArrayList<>();

        if (query != null && !query.isEmpty()) {
            searchResults = toyService.searchToys(query);
        }

        model.addAttribute("listToys", searchResults);
        model.addAttribute("query", query);
        return "index";
    }

    @GetMapping("/toy_detail/{idToy}")
    public String showToyDetail(@PathVariable(value = "idToy") String idToy, Model model) {
        Toy toy = toyService.getToyById(idToy);
        model.addAttribute("toy", toy);
        return "toy_detail";
    }

    @GetMapping("/showNewToyForm")
    public String showNewToyFormString(Model model) {
        Toy toy = new Toy();
        model.addAttribute("toy", toy);
        return "new_toy";
    }

    @GetMapping("/new_toy")
    public String showNewToyPage(Model model) {
        model.addAttribute("toy", new Toy());
        return "new_toy";
    }

    @PostMapping("/saveToy")
    public String saveToy(@ModelAttribute("toy") Toy toy) {
        toyService.saveToy(toy);
        return "redirect:/";
    }

    @GetMapping("/showFormUpdate/{idToy}")
    public String showFormUpdate(@PathVariable(value = "idToy") String idToy, Model model) {
        Toy toy = toyService.getToyById(idToy);
        model.addAttribute("toy", toy);
        return "update_toy";
    }

    @GetMapping("/deleteToy/{idToy}")
    public String deleteToy(@PathVariable(value = "idToy") String idToy) {
        toyService.deleteToyById(idToy);
        return "redirect:/";
    }

    @GetMapping("/page/{pageNo}")
    public String findPaginated(@PathVariable(value = "pageNo") int pageNo,
                                @RequestParam("sortField") String sortField,
                                @RequestParam("sortDir") String sortDir,
                                Model model) throws IOException, TemplateException {

        int pageSize = 10;

        Template freeMarkerTemplate = freeMarkerConfigurer.getConfiguration().getTemplate("index.ftl");

        Map<String, Object> data = new HashMap<>();
        data.put("currentPage", pageNo);
        data.put("sortField", sortField);
        data.put("sortDir", sortDir);
        data.put("reverseSortDir", sortDir.equals("asc") ? "desc" : "asc");

        Page<Toy> page = toyService.findPaginated(pageNo, pageSize, sortField, sortDir);
        List<Toy> listToys = page.getContent();
        data.put("listToys", listToys); 

        data.put("totalPages", page.getTotalPages());
        data.put("totalItems", page.getTotalElements());

        StringWriter writer = new StringWriter();
        freeMarkerTemplate.process(data, writer);

        model.addAttribute("pagination", writer.toString());
        model.addAttribute("toys", listToys); 
        return "index";
    }
}
