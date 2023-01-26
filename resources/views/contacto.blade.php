<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>

    <table class="table-primary">
        <thead>
            <th>Nombre</th>
            <th>Apellido</th>
            <th>Teléfono</th>
            <th>Email</th>
        </thead>
        <tbody>
            <tr class="table-success">
                <td>{{ $nombre }}</td>
                <td>{{ $apellido }}</td>
                <td>{{ $telefono }}</td>
                <td>{{ $email }}</td>
            </tr>
        </tbody>
    <table>
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12">
                <h2>Comentario</h2>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <p>{{ $comentario }}</p>
            </div>
        </div>
    </div>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
</body>
</html>
