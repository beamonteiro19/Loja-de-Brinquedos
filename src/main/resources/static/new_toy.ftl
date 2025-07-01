<!DOCTYPE html>
<html lang="en">
<#import "spring.ftl" as spring />
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Administração - Cadastro de Produtos</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
          integrity="sha384-rBSKg5X3s6gT5hKIjToqWy58tR8Xp0aY0JG1a4nhwq8DZyyMsRj8eRdDVeY5S7M"
          crossorigin="anonymous" />
</head>
<body>
    
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand">Administração - Cadastro de Produtos</a>
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
        <ul class="navbar-nav ml-auto">
            <li class="nav-item">
                <a class="nav-link" href="/list_toys">Lista de Produtos</a>
            </li>
        </ul>
    </nav>

    <div class="container mt-4">
        <!-- Título da página -->
        <h1>Cadastro de Produtos</h1>
        <hr />

        <form action="/saveToy" method="POST">
            <div class="mb-3">
                <label for="name" class="form-label">Nome do Brinquedo</label>
                <input type="text" name="name" class="form-control" id="name" placeholder="Nome do Brinquedo" />
            </div>
            <div class="mb-3">
                <label for="category" class="form-label">Categoria</label>
                <input type="text" name="category" class="form-control" id="category" placeholder="Categoria" />
            </div>
            <div class="mb-3">
                <label for="description" class="form-label">Descrição</label>
                <input type="text" name="description" class="form-control" id="description" placeholder="Descrição" />
            </div>
            <div class="mb-3">
                <label for="price" class="form-label">Preço</label>
                <input type="number" name="price" class="form-control" id="price" placeholder="Preço" />
            </div>
            <div class="mb-3">
                <label for="image" class="form-label">URL da Imagem</label>
                <input type="text" name="image" class="form-control" id="image" placeholder="URL da Imagem" />
            </div>
            <button type="submit" class="btn btn-info">Cadastrar</button>
        </form>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
            crossorigin="anonymous"></script>
</body>
</html>