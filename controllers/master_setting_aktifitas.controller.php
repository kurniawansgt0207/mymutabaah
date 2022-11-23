<?php
    require_once './models/master_user.class.php';
    require_once './controllers/master_user.controller.php';
    require_once './models/master_setting_aktifitas.class.php';
    require_once './controllers/master_setting_aktifitas.controller.generate.php';
    require_once './models/master_unit.class.php';
    require_once './controllers/master_unit.controller.php';
    require_once './models/master_aktifitas.class.php';
    require_once './controllers/master_aktifitas.controller.php';
    require_once './models/master_setting_aktifitas.class.php';
    require_once './controllers/master_setting_aktifitas.controller.php';
    
    if (!isset($_SESSION)){
        session_start();
    }

    class master_setting_aktifitasController extends master_setting_aktifitasControllerGenerate
    {
        function showFormJQuery() {
            $id = isset($_REQUEST['id']) ? $_REQUEST['id'] : 0;
            
            $master_setting_aktifitas_ = $this->showData($id);
            
            $user = $this->user;
            
            $master_user = new master_user();
            $master_userCtrl = new master_userController($master_user, $this->dbh);
            $user_ = $master_userCtrl->showData($user); 
            
            $unit = isset($_REQUEST['unitid']) ? $_REQUEST['unitid'] : 0;
            
            $master_unit = new master_unit();
            $master_unitCtrl = new master_unitController($master_unit, $this->dbh);
            $unit_list_ = $master_unitCtrl->showDataAll();
            
            $master_aktifitas = new master_aktifitas();
            $master_aktifitasCtrl = new master_aktifitasController($master_aktifitas, $this->dbh);
            $aktifitas_list_ = $master_aktifitasCtrl->showDataAllActive();
            
            $setting_aktifitas_list_ = $this->showDataByUnit($unit);
            
            require_once './views/master_setting_aktifitas/master_setting_aktifitas_jquery_form.php';
        }
        
        function saveFormJQuery() {
            $jmlData = isset($_REQUEST['jmlAktifitas']) ? $_REQUEST['jmlAktifitas'] : 0;
            $unit = isset($_REQUEST['unitid']) ? $_REQUEST['unitid'] : 0;
            $aktifitas = isset($_REQUEST['aktifitas_id']) ? $_REQUEST['aktifitas_id'] : 0;
            $active = isset($_REQUEST['is_active']) ? $_REQUEST['is_active'] : 0;
            
            $this->deleteDataByUnit($unit);
            
            for($a=0;$a<=$jmlData;$a++){
                $activity = isset($aktifitas[$a])?$aktifitas[$a]:0;
                $isActive = isset($active[$a])?$active[$a]:0;
                
                if($unit!="" && $activity!=0){                    
                    $master_setting_aktifitas = new master_setting_aktifitas();
                    $master_setting_aktifitasCtrl = new master_setting_aktifitasController($master_setting_aktifitas, $this->dbh);
            
                    $master_setting_aktifitas->setUnit_id($unit);
                    $master_setting_aktifitas->setAktifitas_id($activity);
                    $master_setting_aktifitas->setIs_active($isActive);
                    $master_setting_aktifitas->setCreated_by(date("Y-m-d H:i:s"));
                    $master_setting_aktifitas->setCreated_by($this->user);
                    $master_setting_aktifitasCtrl->setIsadmin(true);
                    $master_setting_aktifitasCtrl->saveData();
                }                
            }
            
            echo "Data Berhasil Tersimpan";
        }
        
        function showDataByUnit($unit){
            $sql = "SELECT a.* FROM master_setting_aktifitas a
            INNER JOIN master_aktifitas b ON a.`aktifitas_id`=b.`id`
            WHERE a.`unit_id`=$unit AND a.`is_active`='1' 
            ORDER BY b.`visorder`";
            return $this->createList($sql);
        }
        
        function deleteDataByUnit($id){
            $sql = "DELETE FROM master_setting_aktifitas WHERE unit_id = '".$id."'";
            $execute = $this->dbh->query($sql);
        }
    }
?>
