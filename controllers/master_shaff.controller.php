<?php
    require_once './models/master_user.class.php';
    require_once './controllers/master_user.controller.php';
    require_once './models/master_shaff.class.php';
    require_once './controllers/master_shaff.controller.generate.php';
    if (!isset($_SESSION)){
        session_start();
    }

    class master_shaffController extends master_shaffControllerGenerate
    {
        function showDataAllByShaff($shaffid) {
            $sql = "SELECT * FROM master_shaff WHERE IF('0'='$shaffid',TRUE,id='$shaffid')";
            return $this->createList($sql);
        }
        
        function showKelompokByCabangByRanting($cabangid,$rantingid){
            $sql = "SELECT DISTINCT b.id,b.`kode_shaff`,b.`nama_shaff` FROM master_anggota a 
            INNER JOIN master_shaff b ON a.`shaff`=b.`id`
            WHERE IF(0=$cabangid,TRUE,a.`cabang_id`=".$cabangid.") AND IF(0=$rantingid,TRUE,a.`ranting_id`=".$rantingid.")
            ORDER BY b.`kode_shaff`";
            return $this->createList($sql);
        }
    }
?>
