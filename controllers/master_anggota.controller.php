<?php
    require_once './models/master_user.class.php';
    require_once './controllers/master_user.controller.php';
    require_once './models/master_user_detail.class.php';
    require_once './controllers/master_user_detail.controller.php';
    require_once './models/master_anggota.class.php';
    require_once './controllers/master_anggota.controller.generate.php';
    require_once './models/master_user_detail.class.php';
    require_once './controllers/master_user_detail.controller.php';
    require_once './controllers/master_unit.controller.php';
    require_once './models/master_unit.class.php';
    require_once './models/master_department.class.php';
    require_once './controllers/master_department.controller.php';
    require_once './models/master_shaff.class.php';
    require_once './controllers/master_shaff.controller.php';    
    require_once './models/master_group.class.php';
    require_once './controllers/master_group.controller.php';
    require_once './controllers/excel_reader2.php';
    require_once './controllers/tools.controller.php';
    
    if (!isset($_SESSION)){
        session_start();
    }

    class master_anggotaController extends master_anggotaControllerGenerate
    {        
        function showAllJQuery(){
            if ($this->ispublic || $this->isadmin || $this->isread ){
                $last = $this->countDataAll();
                $limit = isset($_REQUEST["limit"]) ? $_REQUEST["limit"] : $this->limit;
                $skip = isset($_REQUEST["skip"]) ? $_REQUEST["skip"] : 0;
                $search = isset($_REQUEST["search"]) ? $_REQUEST["search"] : "";
                $cabang = isset($_REQUEST["cabangid"]) ? $_REQUEST["cabangid"] : "";
                $ranting = isset($_REQUEST["rantingid"]) ? $_REQUEST["rantingid"] : "0";
                $grup = isset($_REQUEST["groupid"]) ? $_REQUEST["groupid"] : "0";
                $kelompok = isset($_REQUEST["kelompokid"]) ? $_REQUEST["kelompokid"] : "0";

                $sisa = intval($last % $limit);

                if ($sisa > 0) {                    
                    $last = $last - $sisa;
                }else if ($last - $limit < 0){                    
                    $last = 0;
                }else{                    
                    $last = $last -$limit;
                }
                
                $previous = $skip - $limit < 0 ? 0 : $skip - $limit ;

                if ($skip + $limit > $last) {
                    $next = $last;
                }else if($skip == 0 ) {
                    $next = $skip + $limit + 1;
                }else{
                    $next = $skip + $limit;
                }
                $first = 0;
                
                $pageactive = $last == 0 ? $sisa == 0 ? 0 : 1 : intval(($skip / $limit)) + 1;
                $pagecount = $last == 0 ? $sisa == 0 ? 0 : 1 : intval(($last / $limit)) + 1;
                
                $master_user = new master_user();
                $master_userCtrl = new master_userController($master_user, $this->dbh);
                $user_list = $master_userCtrl->showData($this->user);

                $master_user_detail = new master_user_detail();
                $master_user_detailCtrl = new master_user_detailController($master_user_detail, $this->dbh);
                $user_detail = $master_user_detailCtrl->showDataByUser($this->user);

                $master_group = new master_group();
                $master_groupCtrl = new master_groupController($master_group, $this->dbh);
                $group_ = $master_groupCtrl->showData($user_detail->getGroupcode());
                $groupID = ($group_->getId()==1 || $group_->getId()==3) ? 0 : $group_->getId();

                $master_unit = new master_unit();
                $master_unitCtrl = new master_unitController($master_unit, $this->dbh);
                $unit_list_ = $master_unitCtrl->showDataAllByCabang($user_list->getUnitid());
                
                $master_department = new master_department();
                $master_departmentCtrl = new master_departmentController($master_department, $this->dbh);
                $department_list_ = $master_departmentCtrl->showDataAllByRanting($user_list->getDepartmentid());
                
                $master_group = new master_group();
                $master_groupCtrl = new master_groupController($master_group, $this->dbh);
                if($group_->getId()==1 || $group_->getId()==3){
                    $group_list_ = $master_groupCtrl->showDataDakwahPembinaan();
                } else {
                    $group_list_ = $master_groupCtrl->showDataDakwahPembinaanByGroup($group_->getId());
                }
                
                $master_shaff = new master_shaff();
                $master_shaffCtrl = new master_shaffController($master_shaff, $this->dbh);
                $shaff_list_ = $master_shaffCtrl->showDataAllByShaff($user_list->getShaffid());
                
                $master_anggota_list = $this->showDataAllLimit();
                $isadmin = $this->isadmin;
                $ispublic = $this->ispublic;
                $isread = $this->isread;
                $isconfirm = $this->isconfirm;
                $isentry = $this->isentry;
                $isupdate = $this->isupdate;
                $isdelete = $this->isdelete;
                $isprint = $this->isprint;
                $isexport = $this->isexport ;
                $isimport = $this->isimport;
                require_once './views/master_anggota/master_anggota_jquery_list.php';
            }else{
                echo "You cannot access this module";
            }
        }
        
        function showFormJQuery() {
            if ($this->ispublic || $this->isadmin || ($this->isread && $this->isupdate)){
                $id = isset($_REQUEST['id']) ? $_REQUEST['id'] : 0;
                $skip = isset($_REQUEST["skip"]) ? $_REQUEST["skip"] : 0;
                $search = isset($_REQUEST["search"]) ? $_REQUEST["search"] : "";
                $master_anggota_ = $this->showData($id);
                
                $master_unit = new master_unit();
                $master_unit_controller= new master_unitController($master_unit, $this->dbh);
                $master_unit_list=  $master_unit_controller->showDataUnit();

                $master_department = new master_department();
                $master_department_controller = new master_departmentController($master_department, $this->dbh);
                $master_department_list = $master_department_controller->showDataDepartment();
                
                $master_shaff = new master_shaff();
                $master_shaffCtrl = new master_shaffController($master_shaff, $this->dbh);
                $master_shaff_list = $master_shaffCtrl->showDataAll();
                
                require_once './views/master_anggota/master_anggota_jquery_form.php';
            }else{
                echo "You cannot access this module";
            }
        }
        
        function saveFormJQuery() {
            $id = isset($_POST['id'])?$_POST['id'] : "";
	    $nama_anggota = isset($_POST['nama_anggota'])?$_POST['nama_anggota'] : "";
	    $cabang_id = isset($_POST['cabang_id'])?$_POST['cabang_id'] : "";
	    $ranting_id = isset($_POST['ranting_id'])?$_POST['ranting_id'] : "";
            $group_id = isset($_POST['group_id'])?$_POST['group_id'] : "0";
            $shaff_id = isset($_POST['shaff'])?$_POST['shaff'] : "0";
	    $created_date = isset($_POST['created_date'])?$_POST['created_date'] : date("Y-m-d H:i:s");
	    $created_by = isset($_POST['created_by'])?$_POST['created_by'] : $this->user;
	    $updated_date = isset($_POST['updated_date'])?$_POST['updated_date'] : date("Y-m-d H:i:s");
	    $updated_by = isset($_POST['updated_by'])?$_POST['updated_by'] : $this->user;
	    $ip_address = isset($_POST['ip_address'])?$_POST['ip_address'] : $this->ip;
	    $this->master_anggota->setId($id);
	    $this->master_anggota->setNama_anggota($nama_anggota);
	    $this->master_anggota->setCabang_id($cabang_id);
	    $this->master_anggota->setRanting_id($ranting_id);
	    $this->master_anggota->setGroup_id($group_id);
	    $this->master_anggota->setShaff($shaff_id);
	    $this->master_anggota->setCreated_date($created_date);
	    $this->master_anggota->setCreated_by($created_by);
	    $this->master_anggota->setUpdated_date($updated_date);
	    $this->master_anggota->setUpdated_by($updated_by);
	    $this->master_anggota->setIp_address($ip_address);            
            $this->saveData();
            
            $idAnggota = ($id=="")?$this->lastID:$id;
            
            $this->saveDataUser($id,$idAnggota,$nama_anggota,$cabang_id,$ranting_id,$shaff_id);
        }
        
        function saveDataUser($id,$idAnggota,$nama_anggota,$cabang_id,$ranting_id,$shaff_id){
            
            $master_user = new master_user();
            $master_userCtrl = new master_userController($master_user, $this->dbh);
            $m_user = $master_userCtrl->showDataByIdAnggota($idAnggota);
            
            echo "<br> Id : ".$user_id = ($m_user->getId() != "") ? $m_user->getId() : "";
            
            $username = "";
            $anggotaExpl = explode(" ", $nama_anggota);            
            $jmlKataNama = count($anggotaExpl);
                        
            if($id == ""){
                if($jmlKataNama == 1){
                    $username = $nama_anggota;
                } elseif ($jmlKataNama == 2) {               
                    if(strlen($anggotaExpl[0]) > 2 && strlen($anggotaExpl[1]) > 2){
                        $username = substr($nama_anggota, 0, 1).$anggotaExpl[1];
                    } else {
                        $username = $anggotaExpl[0].substr($anggotaExpl[1],0,1);
                    }
                } elseif ($jmlKataNama == 3){
                    if(strlen($anggotaExpl[0]) > 2 && strlen($anggotaExpl[1]) > 2 && strlen($anggotaExpl[2]) > 2){
                        $username = substr($nama_anggota, 0, 1).substr($anggotaExpl[1], 0, 1).$anggotaExpl[2];
                    } else if(strlen($anggotaExpl[0]) > 2 && strlen($anggotaExpl[1]) > 2 && strlen($anggotaExpl[2]) < 2){
                        $username = substr($nama_anggota, 0, 1).$anggotaExpl[1];
                    } else {
                        $username = $anggotaExpl[0].substr($anggotaExpl[1],0,1);
                    }
                } elseif ($jmlKataNama == 4){
                    if(strlen($anggotaExpl[0]) > 2 && strlen($anggotaExpl[1]) > 2 && strlen($anggotaExpl[2]) > 2 && strlen($anggotaExpl[3]) > 2){
                        $username = substr($nama_anggota, 0, 1).substr($anggotaExpl[1], 0, 1).substr($anggotaExpl[2],0,1).$anggotaExpl[3];
                    } else if(strlen($anggotaExpl[0]) > 2 && strlen($anggotaExpl[1]) > 2 && strlen($anggotaExpl[2]) > 2 && strlen($anggotaExpl[3]) < 2){
                        $username = substr($nama_anggota, 0, 1).substr($anggotaExpl[1], 0, 1).$anggotaExpl[2];
                    } else if(strlen($anggotaExpl[0]) > 2 && strlen($anggotaExpl[1]) > 2 && strlen($anggotaExpl[2]) < 2 && strlen($anggotaExpl[3]) < 2){
                        $username = substr($nama_anggota, 0, 1).$anggotaExpl[1];                        
                    }
                }
                echo "Ini Baru";
            } else {
                $username = $m_user->getUser();
                echo "Ini Lama";
            }
            
            echo "<br>username: ".$username."<br>";
            $description = "Pengguna";
            
            $master_user->setId($user_id);
            $master_user->setUser($username);
            $master_user->setPassword(md5('123456'));
            $master_user->setDescription($description);
            $master_user->setUsername($nama_anggota);
            $master_user->setDepartmentid($ranting_id);
            $master_user->setUnitid($cabang_id);
            $master_user->setShaffid($shaff_id);
            $master_user->setNik(0);
            $master_user->setIdanggota($idAnggota);
            $master_user->setDefaultpassword('123456');
            $master_user->setEntrytime(date("Y-m-d H:i:s"));
            $master_user->setEntryuser($this->user);
            $master_userCtrl->setIsadmin(true);
            $master_userCtrl->saveData();
            
            $master_user_detail = new master_user_detail();
            $master_user_detailCtrl = new master_user_detailController($master_user_detail, $this->dbh);
            $user_dtl = $master_user_detailCtrl->showDataByUser($username);
            $uertIdDtl = count($user_dtl->getId()) > 0 ? $user_dtl->getId() : "";
            
            $master_user_detail->setId($user_dtl->getId());
            $master_user_detail->setUser($username);
            $master_user_detail->setGroupcode("User");
            $master_user_detail->setEntrytime(date("Y-m-d H:i:s"));
            $master_user_detail->setEntryuser($this->user);
            $master_user_detail->setEntryip($this->ip);
            $master_user_detailCtrl->setIsadmin(true);
            $master_user_detailCtrl->saveData();
            
            echo "Data Berhasil Tersimpan";
        }
        
        function checkAnggota($nm_anggota,$cabang_id,$ranting_id,$group_id,$shaff){            
            $toolsController = new toolsController();
            echo $sql = "SELECT count(*) FROM master_anggota "
            . " where nama_anggota = '".$toolsController->replacecharFind($nm_anggota, $this->dbh)."'"
            . " AND cabang_id='".$cabang_id."'";
            $row = $this->dbh->query($sql)->fetch();
            return $row[0];
        }
        
        function deleteFormJQuery() {
            $id = isset($_REQUEST['id']) ? $_REQUEST['id'] : 0;
            
            $master_user = new master_user();
            $master_userCtrl = new master_userController($master_user, $this->dbh);
            $user_list = $master_userCtrl->showDataByIdAnggota($id);
            $username = $user_list->getUser();
            
            $master_user_detail = new master_user_detail();
            $master_user_detailCtrl = new master_user_detailController($master_user_detail, $this->dbh);
            
            $master_user_detailCtrl->deleteData($username);
            $master_userCtrl->deleteDataByIdAnggota($id);
            $this->deleteData($id);
            
            $this->showAllJQuery();
        }
        
        function uploadData(){
            $master_unit = new master_unit();
            $master_unitCtrl = new master_unitController($master_unit, $this->dbh);
            $master_unit_list_ = $master_unitCtrl->showDataAll();
            
            $master_user = new master_user();
            $master_userCtrl = new master_userController($master_user, $this->dbh);
            $user_list = $master_userCtrl->showData($this->user);
            $cabang_ = $user_list->getUnitid();
            
            require_once './views/master_anggota/master_anggota_jquery_upload.php';
        }
        
        function importAnggota(){
            $get_filename = $_FILES['akuFile']['name'];
            $get_the_file = $_FILES['akuFile']['tmp_name'];
            $cabang_id = $_REQUEST['cabang_id'];
            $nowDate = date("Y-m-d");
            
            $target_file = "./views/master_anggota/files/" . $get_filename;
            
            move_uploaded_file($get_the_file, $target_file);

            $data = new Spreadsheet_Excel_Reader();
            $data->setOutputEncoding('CP1251');
            $data->read("$target_file");
            error_reporting(E_ALL ^ E_NOTICE);
            
            $toolsController = new toolsController();
            
            for ($i=5; $i<=$data->sheets[0]['numRows']; $i++) {
                if ($data->sheets[0]['cells'][$i][2] != ""){
                    $id = "";
                    //$nm_anggota = $toolsController->replacecharFind($data->sheets[0]['cells'][$i][2], $this->dbh);
                    $nm_anggota = $data->sheets[0]['cells'][$i][2];
                    $ranting_id = $data->sheets[0]['cells'][$i][3];
                    $shaff_id = $data->sheets[0]['cells'][$i][4];
                    $group_id = $data->sheets[0]['cells'][$i][5];
                    $created_date = date("Y-m-d H:i:s");
                    $created_by = $this->user;
                    $updated_date = date("Y-m-d H:i:s");
                    $updated_by = $this->user;
                    $ip_address = $this->ip;
                                        
                    
                    $check = $this->checkAnggota($nm_anggota,$cabang_id,$ranting_id,$group_id,$shaff_id);
                    echo "Jml Cek: ".$check."<br>";
                    
                    if($check == 0){
                        $this->master_anggota->setId("");
                        $this->master_anggota->setNama_anggota($nm_anggota);
                        $this->master_anggota->setCabang_id($cabang_id);
                        $this->master_anggota->setRanting_id($ranting_id);
                        $this->master_anggota->setGroup_id($group_id);
                        $this->master_anggota->setShaff($shaff_id);
                        $this->master_anggota->setCreated_date($created_date);
                        $this->master_anggota->setCreated_by($created_by);
                        $this->master_anggota->setUpdated_date($updated_date);
                        $this->master_anggota->setUpdated_by($updated_by);
                        $this->master_anggota->setIp_address($ip_address);            
                        $this->saveData();

                        $idAnggota = ($id=="")?$this->lastID:$id;

                        $this->saveDataUser($id,$idAnggota,$nm_anggota,$cabang_id,$ranting_id,$shaff_id);
                        
                        echo " ".$idAnggota."-".$nm_anggota."-".$cabang_id."-".$ranting_id."-".$shaff_id."<br>";
                    }
                }
            }
        }
        
        function showAnggotaByNameGroupSubGroup($namaanggota,$group,$subGroup){
            $namaanggota = ($namaanggota!="") ? $namaanggota : "";
            $sql = "SELECT * FROM master_anggota "
            . "WHERE IF(''='".$namaanggota."',TRUE,nama_anggota='".$namaanggota."') "
            . "AND IF('0'='".$group."',TRUE,cabang_id=".$group.") "
            . "AND IF('0'='".$subGroup."',TRUE,ranting_id=".$subGroup.") ";
            
            return $this->createList($sql);
        }
        
        function showAnggotaByGroupSubGroup($group,$subGroup){
            $sql = "SELECT * FROM master_anggota "
            . "WHERE IF('0'='".$group."',TRUE,cabang_id=".$group.") "
            . "AND IF('0'='".$subGroup."',TRUE,ranting_id=".$subGroup.") ";
            
            return $this->createList($sql);
        }
        
        function showDataAllLimit() {
            $master_user = new master_user();
            $master_userCtrl = new master_userController($master_user, $this->dbh);
            $user_list = $master_userCtrl->showData($this->user);
            
            $master_user_detail = new master_user_detail();
            $master_user_detailCtrl = new master_user_detailController($master_user_detail, $this->dbh);
            $user_detail = $master_user_detailCtrl->showDataByUser($this->user);
            
            $master_group = new master_group();
            $master_groupCtrl = new master_groupController($master_group, $this->dbh);
            $group_ = $master_groupCtrl->showData($user_detail->getGroupcode());
            
            $group_name = $user_detail->getGroupcode();
            $group = ($group_name=="Admin_Group" || $group_name=="Admin") ? 0 : $group_->getId();     
            $unit = $user_list->getUnitid();
            $subUnit = $user_list->getDepartmentid();  
            $shaff = $user_list->getShaffid();
            
            $cabang_id = isset($_REQUEST['cabangid']) ? $_REQUEST['cabangid'] : $unit;
            $ranting_id = isset($_REQUEST['rantingid']) ? $_REQUEST['rantingid'] : $subUnit;
            $group_id = isset($_REQUEST['grupid']) ? $_REQUEST['grupid'] : $group;
            $shaff_id = isset($_REQUEST['kelompokid']) ? $_REQUEST['kelompokid'] : $shaff;                            
            
            $skip = isset($_REQUEST["skip"]) ? $_REQUEST["skip"] : 0;
            $limit = isset($_REQUEST["limit"]) ? $_REQUEST["limit"] : 20;
            $search = isset($_REQUEST["search"]) ? $_REQUEST["search"] : "";
            $sql = "SELECT * FROM master_anggota";
            $sql .= " WHERE IF('0'='".$cabang_id."',TRUE,cabang_id=".$cabang_id.") ";
            $sql .= " AND IF('0'='".$ranting_id."',TRUE,ranting_id=".$ranting_id.") ";
            $sql .= " AND IF('0'='".$group_id."',TRUE,group_id=".$group_id.") ";
            $sql .= " AND IF('0'='".$shaff_id."',TRUE,shaff=".$shaff_id.") ";
            $sql .= " AND (nama_anggota like '%$search%')";
            $sql .= " limit ". $skip . ", ". $limit;
            
            return $this->createList($sql);
        }
        
        function countDataAll() {
            $master_user = new master_user();
            $master_userCtrl = new master_userController($master_user, $this->dbh);
            $user_list = $master_userCtrl->showData($this->user);
            
            $master_user_detail = new master_user_detail();
            $master_user_detailCtrl = new master_user_detailController($master_user_detail, $this->dbh);
            $user_detail = $master_user_detailCtrl->showDataByUser($this->user);
            
            $master_group = new master_group();
            $master_groupCtrl = new master_groupController($master_group, $this->dbh);
            $group_ = $master_groupCtrl->showData($user_detail->getGroupcode());
            
            $group_name = $user_detail->getGroupcode();
            $group = ($group_name=="Admin_Group" || $group_name=="Admin") ? 0 : $group_->getId();     
            $unit = $user_list->getUnitid();
            $subUnit = $user_list->getDepartmentid();  
            $shaff = $user_list->getShaffid();
            
            $cabang_id = isset($_REQUEST['cabangid']) ? $_REQUEST['cabangid'] : $unit;
            $ranting_id = isset($_REQUEST['rantingid']) ? $_REQUEST['rantingid'] : $subUnit;
            $group_id = isset($_REQUEST['grupid']) ? $_REQUEST['grupid'] : $group;
            $shaff_id = isset($_REQUEST['kelompokid']) ? $_REQUEST['kelompokid'] : $shaff;                            
            
            $skip = isset($_REQUEST["skip"]) ? $_REQUEST["skip"] : 0;
            $limit = isset($_REQUEST["limit"]) ? $_REQUEST["limit"] : 20;
            $search = isset($_REQUEST["search"]) ? $_REQUEST["search"] : "";
            $sql = "SELECT count(*) jml FROM master_anggota";
            $sql .= " WHERE IF('0'='".$cabang_id."',TRUE,cabang_id=".$cabang_id.") ";
            $sql .= " AND IF('0'='".$ranting_id."',TRUE,ranting_id=".$ranting_id.") ";
            $sql .= " AND IF('0'='".$group_id."',TRUE,group_id=".$group_id.") ";
            $sql .= " AND IF('0'='".$shaff_id."',TRUE,shaff=".$shaff_id.") ";
            
            $row = $this->dbh->query($sql)->fetch();
            return $row[0];
        }
        
    }
?>
