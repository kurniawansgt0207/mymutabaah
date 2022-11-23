<?php
    require_once './models/master_user.class.php';
    require_once './controllers/master_user.controller.php';
    require_once './models/aktifitas_harian.class.php';
    require_once './controllers/aktifitas_harian.controller.generate.php';
    if (!isset($_SESSION)){
        session_start();
    }

    class aktifitas_harianController extends aktifitas_harianControllerGenerate
    {
        function showDataByDate($tgl,$user){
            //$tgl = isset($_REQUEST['tgl_aktifitas'])?$_REQUEST['tgl_aktifitas']:date("Y-m-d");
            $sql = "SELECT * FROM aktifitas_harian WHERE tgl_aktifitas='".$tgl."' AND user_id=".$user;
            $row = $this->dbh->query($sql)->fetch();
            $this->loadData($this->aktifitas_harian, $row);
            
            return $this->aktifitas_harian;
        }
    }
?>
