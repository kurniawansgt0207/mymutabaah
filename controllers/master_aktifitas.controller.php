<?php
    require_once './models/master_user.class.php';
    require_once './controllers/master_user.controller.php';
    require_once './models/master_aktifitas.class.php';
    require_once './controllers/master_aktifitas.controller.generate.php';
    if (!isset($_SESSION)){
        session_start();
    }

    class master_aktifitasController extends master_aktifitasControllerGenerate
    {
        function showDataAllActive(){
            $sql = "SELECT * FROM master_aktifitas WHERE active=1 ORDER BY peruntukan,visorder";
            return $this->createList($sql);
        }
        
        function showDataAllActivePeruntukan($peruntukan){
            $sql = "SELECT * FROM master_aktifitas "
                    . "WHERE active=1 AND IF('0'='$peruntukan',TRUE,peruntukan='".$peruntukan."') "
                    . "ORDER BY peruntukan,visorder";
            return $this->createList($sql);
        }
        
        function showDataAllActivityByPeruntukanByUnit($mode,$unit){
            $sql = "SELECT a.* FROM master_aktifitas a
                INNER JOIN master_setting_aktifitas b ON a.`id`=b.`aktifitas_id`
                WHERE b.`is_active`='1' AND IF('0'='$mode',TRUE,peruntukan='".$mode."') 
                AND IF(0=$unit, TRUE, b.`unit_id`=$unit) GROUP BY a.`id` ORDER BY a.visorder";
            return $this->createList($sql);
        }
    }
?>
