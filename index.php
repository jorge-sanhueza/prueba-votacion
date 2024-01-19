<?php

header('Access-Control-Allow-Origin: *');
header("Access-Control-Allow-Headers: *");
header('Access-Control-Allow-Methods: GET, POST');

function exception_error_handler($errno, $errstr, $errfile, $errline ) {
    throw new ErrorException($errstr, $errno, 0, $errfile, $errline);
}

set_error_handler("exception_error_handler");

$method = $_SERVER['REQUEST_METHOD'];

try {
    $conn=@pg_connect("host=localhost user=postgres dbname=pruebauno");
} Catch (Exception $e) {
    Echo $e->getMessage();
}

$res = pg_query($conn, "select * from region");
$response = pg_fetch_all($res);

if ($method == 'POST'){
    $content = trim(file_get_contents("php://input"));

    $decoded = json_decode($content, true);

    error_log($decoded['request']);

    switch ($decoded['request']) {
        case 0:
            error_log("fetching comunas para region ".$decoded['payload']);
            $res = pg_query($conn, "select * from comuna where region = ".$decoded['payload']);
            $response = pg_fetch_all($res);
            break;
        case 1:
            error_log("fetching candidatos");
            $res = pg_query($conn, "select * from candidato");
            $response = pg_fetch_all($res);
            break;
        case 2:
            error_log("Formulario recibido!");

            $menErr="";

            strlen(array_values($decoded['payload'])[0]) ? $nombre = array_values($decoded['payload'])[0] : $menErr="Debe ingresar nombre";

            strlen(array_values($decoded['payload'])[1]) > 5 && ctype_alnum(array_values($decoded['payload'])[1]) ? $alias = array_values($decoded['payload'])[1] : $menErr="Alias debe ser alfanumerico y sobre 5 caracteres";

/*             strlen(array_values($decoded['payload'])[2]) && is_numeric(array_values($decoded['payload'])[2]) ? $rut = array_values($decoded['payload'])[2] : $menErr="Debe ingresar rut válido"; */

            $rut = array_values($decoded['payload'])[2];

            $email = array_values($decoded['payload'])[3];

            strlen(array_values($decoded['payload'])[4]) ? $region = array_values($decoded['payload'])[4] : $menErr="Seleccione región";

            strlen(array_values($decoded['payload'])[5]) ? $comuna = array_values($decoded['payload'])[5] : $menErr="Seleccione comuna";

            $candidato = array_values($decoded['payload'])[6];

            $web = array_values($decoded['payload'])[7];

            $tv = array_values($decoded['payload'])[8];

            $rrss = array_values($decoded['payload'])[9];

            $amigo = array_values($decoded['payload'])[10];

/*             $voto = array(

                "nombre" => $nombre,
                "alias" => $alias,
                "rut" => $rut,
                "email" => $email,
                "region" => $region,
                "comuna" => $comuna,
                "candidato" => $candidato,
                "web" => $web,
                "tv" => $tv,
                "rrss" => $rrss,
                "amigo" => $amigo
            );

            $res = pg_insert($conn, 'voto', $voto, PGSQL_DML_ESCAPE);

            if ($res) {
                $response = "Exito";
            } else {
                error_log($res);
                $response = "Error";
            }
 */

            if(strlen($menErr)>1){
                error_log($menErr);
                $response = $menErr;
            } else{
                $voto = "insert into voto (nombre, alias, rut, email, region, comuna, candidato, web, tv, rrss, amigo) values ('".$nombre."', '".$alias."', ".$rut.", '".$email."', ".$region.", ".$comuna.", ".$candidato.", ".$web.", ".$tv.", ".$rrss.", ".$amigo.")";
                try {
                    pg_query($conn, $voto);
                    $res = "Ingreso exitoso";
                } Catch (Exception $e) {
                    error_log($e->getMessage());
                    $res = "Ud. ya votó";
                }
                $response = $res;
            }

            break;
    }
}

echo json_encode($response);

?>