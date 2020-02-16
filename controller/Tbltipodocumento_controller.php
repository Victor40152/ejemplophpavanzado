<?php 

require_once 'model/tbltipodocumento_model.php';

class tbltipodocumento_controller{
    private $model_tipodocumento;

    public function __construct(){
       $this->model_tipodocumento = new Tbltipodocumento_model();
    }

    public function index(){
        $consulta=$this->model_tipodocumento->consultar('SELECT * FROM tbltipodocumento');
        require_once 'view/tbltipodocumento_view.php';
    }

public function modificar(){
    $id = $_REQUEST['id'];
    $consulta=$this->model_tipodocumento->consultarPorId("SELECT * FROM tbltipodocumento where idtipo=$id");
    require_once 'view/tbltipodocumento_modificar.php';
}

public function guardarCambiosTipoDocumento(){

    $dato['id']= $_POST['txtid'];
    $dato['nombre']= $_POST['txtnombre'];
    $this->model_tipodocumento->actualizarTipoDocumento($dato);
    $this->index();
}

public function eliminar(){
    $id=$_REQUEST['id'];
  $this->model_tipodocumento->eliminarTipoDocumento($id);
  $this->index();
}

public function guardar(){
    $dato['nombre']= $_POST["txtnombre"];
    $this->model_tipodocumento->insertTipodocumento($dato);
    $this->index();
}

}



?>