<?php
//formato de hora
date_default_timezone_set('America/Lima');
//conexion a la base de datos
require("_database//database.php");
//global $db;
/**
 * 1----- insertar
 * 2---- listar
 * 3----listar por id
 * 4-----editar
 */

switch ($_GET['DTO']) {
        //caso uno insertar informacion del pacinete 
    case 1:
        //parametrso resividos 
        $nombre = $_POST['nombre'];
        //consulta
        $sql = "INSERT INTO () tabla (:nombre)";
        //preparo consulta 
        $ejecutar = $this->db->prepare($sql);
        //preparo parametros
        $ejecutar->bindValue(':nombre', $nombre);
        //ejecuto consulta
        $ejecutar->execute();
        //validar
        if (($ejecutar->rowCount() > 0)) {
            //retornar datos
            return json_encode($ejecutar->fetchAll(PDO::FETCH_OBJ));
        }
        break;

        //caso dos listar informacion del pacinete
    case 2:
        //conuslta a la base de datos
        $sql = "SELECT * FROM  ";
        //preparar consulta
        $ejecutar = $this->db->prepare($sql);
        //eejcutar consulta
        $ejecutar->execute();
        //validar
        if (($ejecutar->rowCount() > 0)) {
            //retornar datos
            return json_encode($ejecutar->fetchAll(PDO::FETCH_OBJ));
        }
        break;

        //caso 3 listar informacion del pacinete por id
    case 3:
        //paramtros resiviods 
        $id = $_POST['id'];
        //conuslta a la base de datos
        $sql = "SELECT * FROM tabla WHERE id = ':id'  ";
        //preparar consulta
        $ejecutar = $this->db->prepare($sql);
        //variables a usar 
        $validar->bindValue(':id', $id);
        //ejcutar consulta
        $ejecutar->execute();
        //validar
        if (($ejecutar->rowCount() > 0)) {
            //retornar datos
            return $ejecutar->fetchAll(PDO::FETCH_OBJ);
        }
        break;

        //caso 4 ediatr informacion del pacinete
    case 4:
        //parametros resividos 
        $id = $_POST['id'];
        //consulta update a la base de datos
        $sql = "UPDATE  table SET  'nombre' = :nombre WHERE  id = :id";
        //prepara consulta
        $ejecutar = $this->db->prepare($ejecutar);
        //datos a actualizar
        $ejecutar->bindValue(':id', $id);
        //ejecutar consulta
        $ejecutar->execute();
        //validar 
        if ($ejecutar->rowCount() > 0) {
            //retornar datos
            return json_encode($ejecutar->fetchAll(PDO::FETCH_OBJ));
        }

        break;
}
