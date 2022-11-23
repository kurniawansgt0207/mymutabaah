<?php
    require_once './models/master_user.class.php';
    require_once './controllers/master_user.controller.php';
    require_once './models/aktifitas_harian_detail.class.php';
    require_once './controllers/aktifitas_harian_detail.controller.generate.php';
    if (!isset($_SESSION)){
        session_start();
    }

    class aktifitas_harian_detailController extends aktifitas_harian_detailControllerGenerate
    {
        function showDataByIdAktifitas($id_aktifitas){
            $sql = "SELECT * FROM aktifitas_harian_detail WHERE aktifitas_id=".$id_aktifitas;
            return $this->createList($sql);
        }
        
        function showDataByIdAktifitasByKdAktifitas($id_aktifitas,$kode_aktifitas){
            $sql = "SELECT * FROM aktifitas_harian_detail WHERE aktifitas_id=".$id_aktifitas." AND kode_aktifitas='".$kode_aktifitas."'";
            $row = $this->dbh->query($sql)->fetch();
            $this->loadData($this->aktifitas_harian_detail, $row);
            
            return $this->aktifitas_harian_detail;
        }
    }
?>
