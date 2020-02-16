<?php 

class Tbltipodocumento_model{

    private $bd;
    private $tbltipodocumento;


    public function __construct(){

        $this->bd = Conexion::getConexion();
        $this->tbltipodocumento= array();



    }

public function consultar($sql){

    $consulta= $this->bd->query($sql);
    while($fila= $consulta->fetch_assoc()){
        $this->tbltipodocumento[] = $fila;
    }
return $this->tbltipodocumento;



}

public function consultarPorId($sql){

    $consulta= $this->bd->query($sql);
    $fila= $consulta->fetch_assoc();
    $this->tbltipodocumento[] = $fila;
    
return $this->tbltipodocumento;



}
public function actualizarTipoDocumento($dato){
    $id= $dato['id'];
    $nombre= $dato['nombre'];
    $consulta = "UPDATE tbltipodocumento set nombre = '$nombre' where idtipo = $id";
    mysqli_query ($this->bd,$consulta) or die ("Error al actualizar los datos");
}

public function eliminarTipoDocumento($id){

    $consulta= "DELETE FROM tbltipodocumento where idtipo =$id";
    mysqli_query ($this->bd,$consulta) or die ("Error al eliminar los datos");
}

public function insertTipodocumento($dato){

    $nombre= $dato['nombre'];
    $consulta="INSERT INTO tbltipodocumento (nombre) VALUES ('$nombre')";
    mysqli_query ($this->bd,$consulta) or die ("Error al insertar los datos");
}

}




?>