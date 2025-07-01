<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home-Page</title>

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"
        integrity="sha384-f4AahzSj0Ir04hFQHJ9QYbne1CdGO2Jc0x1A0aY6d7flfr2b7ksQjDStb4RTfK2c" crossorigin="anonymous">

    <script>
        $(document).ready(function () {
            $('.carousel').carousel({
                interval: 5000,
                pause: 'hover'
            });
        });
    </script>

</head>

<body>

    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand">Loja de Brinquedos</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
            aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse justify-content-center" id="navbarNav">
            <form class="form-inline my-2 my-lg-0" action="/search" method="get">
                <input class="form-control mr-sm-2" type="search" placeholder="Buscar" aria-label="Search"
                    name="query">
                <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Buscar</button>
            </form>
        </div>
        <ul class="navbar-nav ml-auto">
            <li class="nav-item">
                <a class="nav-link" href="/new_toy">Administração</a>
            </li>
        </ul>
    </nav>

    <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
        <div class="carousel-inner">
            <#list listToys as toy>
                <div class="carousel-item<#if toy_index == 0> active</#if>">
                    <img src="${toy.image}" class="d-block w-100" alt="Imagem ${toy_index + 1}">
                </div>
            </#list>
        </div>        <!-- Setas de navegação -->
        <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Anterior</span>
        </a>
        <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Próximo</span>
        </a>
    </div>

    <div class="container mt-5">
        <div class="row">
            <#list listToys as toy>
                <div class="col-md-4 mb-4">
                    <div class="card">
                        <img src="${toy.image}" class="card-img-top" alt="Toy Image">
                        <div class="card-body">
                            <h5 class="card-title">${toy.name}</h5>
                            <p class="card-text">${toy.description}</p>
                            <p class="card-text">Preço: <span>${toy.price}</span></p>
                            <a href="#" class="btn btn-primary"><i class="fas fa-shopping-cart"></i> Adicionar ao
                                Carrinho</a>
                        </div>
                    </div>
                </div>
            </#list>
        </div>

        <#if searchResults??>
            <h3>Resultados da Pesquisa</h3>
            <div class="row">
                <#list searchResults as result>
                    <div class="col-md-4 mb-4">
                        <div class="card">
                            <div class="card-body">
                                <h5 class="card-title">${result.name}</h5>
                                <p class="card-text">${result.description}</p>
                                <p class="card-text">Preço: <span>${result.price}</span></p>
                                <a href="/toy/${result.toyId}" class="btn btn-primary"><i
                                        class="fas fa-info"></i> Detalhes</a>
                            </div>
                        </div>
                    </div>
                </#list>
            </div>
        </#if>
    </div>

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
        crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
        integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjJjNqH/8RSZ9vB4KT0t7U8dB4I9Ml"
        crossorigin="anonymous"></script>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/js/all.min.js" crossorigin="anonymous"></script>
</body>

</html>
