<!DOCTYPE html>
<html lang="en">
<#import "spring.ftl" as spring />

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Administração - Atualizar Produtos</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
        crossorigin="anonymous" />

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"
        integrity="sha384-f4AahzSj0Ir04hFQHJ9QYbne1CdGO2Jc0x1A0aY6d7flfr2b7ksQjDStb4RTfK2c"
        crossorigin="anonymous">
</head>

<body>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand">Administração - Atualizar Produtos</a>
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
                <a class="nav-link" th:href="@{/list_toys}">Lista de Produtos</a>
            </li>
        </ul>
    </nav>

    <div class="container">
        <h2>Atualizar Brinquedo</h2>
        <form action="#" th:action="@{/updateToy}" th:object="${toy}" method="POST">
            <input type="hidden" th:field="*{toyId}" />

            <div class="mb-4">
                <label for="name" class="form-label">Nome do Brinquedo</label>
                <input type="text" th:field="*{name}" class="form-control col-4" id="name"
                    placeholder="Nome do Brinquedo" />
            </div>
            <div class="mb-4">
                <label for="category" class="form-label">Categoria</label>
                <input type="text" th:field="*{category}" class="form-control col-4" id="category"
                    placeholder="Categoria" />
            </div>
            <div class="mb-4">
                <label for="description" class="form-label">Descrição</label>
                <input type="text" th:field="*{description}" class="form-control col-4" id="description"
                    placeholder="Descrição" />
            </div>
            <div class="mb-4">
                <label for="price" class="form-label">Preço</label>
                <input type="number" th:field="*{price}" class="form-control col-4" id="price"
                    placeholder="Preço" />
            </div>
            <div class="mb-4">
                <label for="image" class="form-label">URL da Imagem</label>
                <input type="text" th:field="*{image}" class="form-control col-4" id="image"
                    placeholder="URL da Imagem" />
            </div>
            <button type="submit" class="btn btn-info col-2">Atualizar</button>
        </form>
    </div>
</body>

</html>
