<!DOCTYPE html>
<html lang="en">
<#import "spring.ftl" as spring />

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Detalhes do Brinquedo</title>
    <link rel="stylesheet" href="style.css" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
        crossorigin="anonymous" />
</head>

<body>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand">Detalhes do Brinquedo</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
            aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse justify-content-center" id="navbarNav"></div>
        <ul class="navbar-nav">
            <li class="nav-item">
                <a class="nav-link" href="/">Início</a>
            </li>
        </ul>
    </nav>
    <div class="container">
        <div class="toy-detail-container">
            <div class="toy-detail-image">
                <!-- Usando a sintaxe do FreeMarker para acessar atributos do modelo -->
                <img src="${toy.image}" alt="Brinquedo" />
            </div>
            <div class="toy-detail-info">
                <h2>${toy.name}</h2>
                <p><strong>Categoria:</strong> ${toy.category}</p>
                <p><strong>Descrição:</strong> ${toy.description}</p>
                <p><strong>Preço:</strong> R$${toy.price}</p>
                <button type="button" class="btn btn-primary">Comprar</button>
                <button type="button" class="btn btn-success">Adicionar ao Carrinho</button>
            </div>
        </div>
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
</body>

</html>
