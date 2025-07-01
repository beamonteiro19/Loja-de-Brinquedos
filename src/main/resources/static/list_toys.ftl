<!DOCTYPE html>
<html lang="en">
<#import "spring.ftl" as spring />

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Listagem de Produtos</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"
        integrity="sha384-f4AahzSj0Ir04hFQHJ9QYbne1CdGO2Jc0x1A0aY6d7flfr2b7ksQjDStb4RTfK2c" crossorigin="anonymous">
</head>

<body>

    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand">Administração - Listagem de Produtos</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
            aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse justify-content-center" id="navbarNav">
        </div>
        <ul class="navbar-nav">
            <li class="nav-item">
                <a class="nav-link" href="/">Início</a>
            </li>
        </ul>
    </nav>

    <div class="container my-2">
        <a href="/showNewToyForm" class="btn btn-primary btn-sm mb-3">Cadastrar Novo</a>

        <table class="table table-striped">
            <thead>
                <tr>
                    <th><a href="/page/${currentPage}?sortField=name&sortDir=${reverseSortDir}">Nome</a></th>
                    <th><a href="/page/${currentPage}?sortField=category&sortDir=${reverseSortDir}">Categoria</a></th>
                    <th>Descrição</th>
                    <th><a href="/page/${currentPage}?sortField=price&sortDir=${reverseSortDir}">Preço</a></th>
                    <th>Ações</th>
                </tr>
            </thead>
            <tbody>
                <#list listToys as toy>
                    <tr>
                        <td>${toy.name}</td>
                        <td>${toy.category}</td>
                        <td>${toy.description}</td>
                        <td>${toy.price}</td>
                        <td>
                            <a href="/showFormUpdate/${toy.toyId}" class="btn btn-primary btn-sm">Editar</a>
                            <a href="/deleteToy/${toy.toyId}" class="btn btn-danger btn-sm">Excluir</a>
                        </td>
                    </tr>
                </#list>
            </tbody>
        </table>

        <#if totalPages > 1>
            <div class="row col-sm-10">
                <div class="col-sm-2">
                    Total de Linhas: ${totalItems}
                </div>
                <div class="col-sm-1">
                    <#list 1..totalPages as i>
                        <a th:if="${currentPage != i}" href="/page/${i}?sortField=${sortField}&sortDir=${sortDir}">${i}</a>
                        <span th:unless="${currentPage != i}">${i}</span>
                    </#list>
                </div>
                <div class="col-sm-1">
                    <a th:if="${currentPage < totalPages}" href="/page/${currentPage + 1}?sortField=${sortField}&sortDirection=${sortDir}">Próximo</a>
                    <span th:unless="${currentPage < totalPages}">Próximo</span>
                </div>

                <div class="col-sm-1">
                    <a th:if="${currentPage > 1}" href="/page/${currentPage - 1}?sortField=${sortField}&sortDirection=${sortDir}">Anterior</a>
                    <span th:unless="${currentPage > 1}">Anterior</span>
                </div>
            </div>
        </#if>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
        crossorigin="anonymous"></script>
</body>

</html>
