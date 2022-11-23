<?php
    require_once './models/master_user.class.php';
    require_once './controllers/master_user.controller.php';
    require_once './models/aktifitas_bulanan.class.php';
    require_once './controllers/aktifitas_bulanan.controller.generate.php';
    if (!isset($_SESSION)){
        session_start();
    }

    class aktifitas_bulananController extends aktifitas_bulananControllerGenerate
    {
        function showDataByMopYop($mop,$yop,$user){
            $sql = "SELECT * FROM aktifitas_bulanan WHERE mop='$mop' AND yop='$yop' AND user_id='$user'";
            $row = $this->dbh->query($sql)->fetch();
            $this->loadData($this->aktifitas_bulanan, $row);
            
            return $this->aktifitas_bulanan;            
        }
    }
?>
