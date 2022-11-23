<?php
    require_once './models/master_user.class.php';
    require_once './controllers/master_user.controller.php';
    require_once './models/aktifitas_bulanan.class.php';
    require_once './controllers/aktifitas_bulanan.controller.php';
    require_once './models/aktifitas_bulanan_detail.class.php';
    require_once './controllers/aktifitas_bulanan_detail.controller.php';
    require_once './models/master_aktifitas.class.php';
    require_once './controllers/master_aktifitas.controller.php';
    require_once './models/master_user_detail.class.php';
    require_once './controllers/master_user_detail.controller.php';
    require_once './models/master_group.class.php';
    require_once './controllers/master_group.controller.php';
    
    if (!isset($_SESSION)){
        session_start();
    }

    class mutabaah_syahriyahController extends aktifitas_bulananController
    {
        function showFormJQuery() {
            $mode = "monthly";
            $user = $this->user;
            $userAnggota = isset($_REQUEST['anggota'])?$_REQUEST['anggota']:"";
            $master_user = new master_user();
            $master_userCtrl = new master_userController($master_user, $this->dbh);
            if($userAnggota!=""){
                $user_list = $master_userCtrl->showDataByFullname($userAnggota);
            } else {
                $user_list = $master_userCtrl->showData($user);
            }
            
            $userName = $user_list->getUsername();
            $userUnit = $user_list->getUnitid();
            
            $mop = isset($_REQUEST['mop']) ? $_REQUEST['mop'] : date("m");
            $yop = isset($_REQUEST['yop']) ? $_REQUEST['yop'] : date("Y");
            $aktifitas_bulanan_ = $this->showDataByMopYop($mop,$yop,$user_list->getId());
            
            $master_aktifitas = new master_aktifitas();
            $master_aktifitasCtrl = new master_aktifitasController($master_aktifitas, $this->dbh);
            //$aktifitas_list_ = $master_aktifitasCtrl->showDataAllActivePeruntukan($mode);     
            $aktifitas_list_ = $master_aktifitasCtrl->showDataAllActivityByPeruntukanByUnit($mode, $userUnit);
            
            $master_user = new master_user();
            $master_userCtrl = new master_userController($master_user, $this->dbh);
            $user_list = $master_userCtrl->showData($this->user);
            
            $master_user_detail = new master_user_detail();
            $master_user_detailCtrl = new master_user_detailController($master_user_detail, $this->dbh);
            $user_detail_list = $master_user_detailCtrl->showDataByUser($this->user);
            
            $master_group = new master_group();
            $master_groupCtrl = new master_groupController($master_group, $this->dbh);
            $group_list_ = $master_groupCtrl->showData($user_detail_list->getGroupcode());
            
            require_once './views/mutabaah_syahriyah/mutabaah_syahriyah_jquery_form.php';            
        }
        
        function saveFormJQuery() {
            $id = isset($_REQUEST['id'])?$_REQUEST['id'] : "";
	    $mop = isset($_REQUEST['bulan'])?$_REQUEST['bulan'] : "";
	    $yop = isset($_REQUEST['tahun'])?$_REQUEST['tahun'] : "";
	    //$user_id = isset($_REQUEST['user_id'])?$_REQUEST['user_id'] : "";
	    $user_fullname = isset($_REQUEST['user_fullname'])?$_REQUEST['user_fullname'] : "";
	    $created_date = isset($_REQUEST['created_date'])?$_REQUEST['created_date'] : date("Y-m-d H:i:s");
	    $created_by = isset($_REQUEST['created_by'])?$_REQUEST['created_by'] : $this->user;
	    $updated_date = isset($_REQUEST['updated_date'])?$_REQUEST['updated_date'] : date("Y-m-d H:i:s");
	    $updated_by = isset($_REQUEST['updated_by'])?$_REQUEST['updated_by'] : $this->user;
	    $ip_address = isset($_REQUEST['ip_address'])?$_REQUEST['ip_address'] : $this->ip;
            $jml_data = $_REQUEST['jmlData'];
            
            $master_user = new master_user();
            $master_userCtrl = new master_userController($master_user, $this->dbh);
            $user_list = $master_userCtrl->showDataByFullname($user_fullname);
            
            $user_id = $user_list->getId();
            
            $aktifitas = new aktifitas_bulanan();
            $aktifitasCtrl = new aktifitas_bulananController($aktifitas, $this->dbh);
            
	    $aktifitas->setId($id);
	    $aktifitas->setMop($mop);
	    $aktifitas->setYop($yop);
	    $aktifitas->setUser_id($user_id);
	    $aktifitas->setUser_fullname($user_fullname);
	    $aktifitas->setCreated_date($created_date);
	    $aktifitas->setCreated_by($created_by);
	    $aktifitas->setUpdated_date($updated_date);
	    $aktifitas->setUpdated_by($updated_by);
	    $aktifitas->setIp_address($ip_address);   
            
            $aktifitasCtrl->setIsadmin(true);
            $aktifitasCtrl->saveData();
            
            $idHeader = ($id > 0)?$id:$aktifitasCtrl->lastID;
            if($idHeader > 0){
                $id = isset($_REQUEST['id_detail'])?$_REQUEST['id_detail'] : 0;
                $aktifitas_id = $idHeader;
                $kode_aktifitas = isset($_REQUEST['kode_aktifitas'])?$_REQUEST['kode_aktifitas'] : "";
                $nama_aktifitas = isset($_REQUEST['nama_aktifitas'])?$_REQUEST['nama_aktifitas'] : "";
                $value_aktifitas = isset($_REQUEST['value_aktifitas'])?$_REQUEST['value_aktifitas'] : 0;
                $satuan_aktifitas = isset($_REQUEST['satuan_aktifitas'])?$_REQUEST['satuan_aktifitas'] : "";
                $catatan_aktifitas = isset($_REQUEST['catatan_aktifitas'])?$_REQUEST['catatan_aktifitas'] : "";
                $created_date = isset($_REQUEST['created_date'])?$_REQUEST['created_date'] : date("Y-m-d H:i:s");
                $created_by = isset($_REQUEST['created_by'])?$_REQUEST['created_by'] : $this->user;
                $updated_date = isset($_REQUEST['updated_date'])?$_REQUEST['updated_date'] : date("Y-m-d H:i:s");
                $updated_by = isset($_REQUEST['updated_by'])?$_REQUEST['updated_by'] : $this->user;
                $ip_address = isset($_REQUEST['ip_address'])?$_REQUEST['ip_address'] : $this->ip;
                
                $aktifitas_detail = new aktifitas_bulanan_detail();
                $aktifitas_detailCtrl = new aktifitas_bulanan_detailController($aktifitas_detail, $this->dbh);
                
                for($a=0; $a<$jml_data; $a++){
                    $aktifitas_detail->setId($id[$a]);
                    $aktifitas_detail->setAktifitas_id($aktifitas_id);
                    $aktifitas_detail->setKode_aktifitas($kode_aktifitas[$a]);
                    $aktifitas_detail->setNama_aktifitas($nama_aktifitas[$a]);
                    $aktifitas_detail->setValue_aktifitas($value_aktifitas[$a]);
                    $aktifitas_detail->setSatuan_aktifitas($satuan_aktifitas[$a]);
                    if($kode_aktifitas[$a] == "MY-00011"){
                        $aktifitas_detail->setCatatan_aktifitas($catatan_aktifitas[$a]);
                    } else {
                        $aktifitas_detail->setCatatan_aktifitas("");
                    }
                    $aktifitas_detail->setCreated_date($created_date);
                    $aktifitas_detail->setCreated_by($created_by);
                    $aktifitas_detail->setUpdated_date($updated_date);
                    $aktifitas_detail->setUpdated_by($updated_by);
                    $aktifitas_detail->setIp_address($ip_address);     
                    
                    $aktifitas_detailCtrl->setIsadmin(true);
                    $aktifitas_detailCtrl->saveData();
                }
            }
            
            echo "Mutabaah Bulanan untuk Bulan ".$mop." Tahun ".$yop."\nBerhasil Tersimpan.";
        }
    }
?>

