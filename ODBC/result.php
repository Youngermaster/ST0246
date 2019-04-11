<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>ODBC Proof - Result</title>

     <!-- Bootstrap CSS --> 
     <link rel="stylesheet" href="css/bootstrap.min.css">
</head>
<body>
    <h1>ODBC Proof - Result</h1>
    <br>
    <br>    
    <?php
        echo "GOLA";
        /* 
        $id = odbc_connect("Driver={MySQL ODBC 8.0 ANSI Driver};Server=localhost;port=3306;Database=sakila;", "root", "");
        if ($id == false)
            die("Error en conexión");
            
        // $sentencia_sql = "SELECT * FROM paciente WHERE 1 = 1";
        $sentencia_sql = "SELECT * FROM paciente WHERE nombre LIKE '%{$_POST['nombre']}%'";

        $resultado = odbc_exec($id, $sentencia_sql);
        if ($resultado === false)
            die("Error en SELECT" . odbc_errormsg($id));

        odbc_result_all($resultado);

        // En principio se supone que php hará esto por mi al acabar el script.
        // Pero por si las moscas.
        odbc_free_result($resultado);
        odbc_close($id);

        */
    ?>
</body>
</html>