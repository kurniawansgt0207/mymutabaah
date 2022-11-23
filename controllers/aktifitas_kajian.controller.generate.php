<?php
    require_once './models/aktifitas_kajian.class.php';
    require_once './models/master_module.class.php';
    require_once './controllers/master_module.controller.php';
    require_once './models/master_group_detail.class.php';
    require_once './controllers/master_group_detail.controller.php';
    require_once './models/report_query.class.php';
    require_once './controllers/report_query.controller.php';
    require_once './controllers/tools.controller.php';
    require_once './database/config.php';

    if (!isset($_SESSION)) {
        session_start();
    }
 
    class aktifitas_kajianControllerGenerate
    {
        protected $aktifitas_kajian;
        var $modulename = "aktifitas_kajian";
        var $dbh;
        var $limit = 20;
        var $user = "None";
        var $ip = "";
        var $isadmin = false;
        var $ispublic = false;
        var $isread = false;
        var $isconfirm = false;
        var $isentry = false;
        var $isupdate = false;
        var $isdelete = false;
        var $isprint = false;
        var $isexport = false;
        var $isimport = false;
        var $lastID = "";
        var $toolsController;
        function __construct($aktifitas_kajian, $dbh) {
            $this->modulename = strtoupper($this->modulename);
            $this->aktifitas_kajian = $aktifitas_kajian;
            $this->dbh = $dbh;            
                                     
            $user = isset($_SESSION[config::$LOGIN_USER])? unserialize($_SESSION[config::$LOGIN_USER]): new master_user() ;
            $this->user = $user->getUser();
            $this->ip =  $_SERVER['REMOTE_ADDR'];
            if ($this->modulename != "MASTER_MODULE") {
                $master_module = new master_module();
                $master_moduleController = new master_moduleController($master_module, $this->dbh);
                $master_module_list = $master_moduleController->showFindData("module", "=", $this->modulename);            
                if(count($master_module_list) == 0) {
                    $master_module_list[] = new master_module();
                }
            }else{
                $master_module_list = $this->showFindData("module", "=", $this->modulename);
            }
            foreach ($master_module_list as $master_module){
                $this->ispublic = $master_module->getPublic() > 0 ? true : false;                
            }            
            if(isset($_SESSION[config::$ISADMIN])) {
                $this->isadmin = unserialize($_SESSION[config::$ISADMIN]);
            }else{
                $this->isadmin = false;
            }

            $this->isadmin = isset($_SESSION[config::$ISADMIN]) ? unserialize($_SESSION[config::$ISADMIN]) : false;
            if(isset($_SESSION[config::$MASTER_GROUP_DETAIL_LIST]) ){
                $master_group_detail_list = unserialize($_SESSION[config::$MASTER_GROUP_DETAIL_LIST]);
            }else{
                $master_group_detail_list[] = new master_group_detail();
            }
            foreach($master_group_detail_list as $master_group_detail) {
                if($master_group_detail->getModule() == $this->modulename) {
                    $this->isread = $master_group_detail->getRead();
                    $this->isconfirm = $master_group_detail->getConfirm();
                    $this->isentry = $master_group_detail->getEntry();
                    $this->isupdate = $master_group_detail->getUpdate();
                    $this->isdelete = $master_group_detail->getDelete();
                    $this->isprint = $master_group_detail->getPrint();
                    $this->isexport = $master_group_detail->getExport();
                    $this->isimport = $master_group_detail->getImport();
                    break;
                }                
            }
            $this->toolsController = new toolsController();
        }
        
        function insertData(){
            $datetime = date("Y-m-d H:i:s");
            
            $sql = "INSERT INTO aktifitas_kajian ";
            $sql .= " ( ";
	    $sql .= "`id`,";
	    $sql .= "`tgl_kajian`,";
	    $sql .= "`lokasi_kajian`,";
	    $sql .= "`kelompok_kajian`,";
	    $sql .= "`tipe_kelompok`,";
	    $sql .= "`level_kelompok`,";
	    $sql .= "`waktu_mulai_kajian`,";
	    $sql .= "`waktu_selesai_kajian`,";
	    $sql .= "`pengisi_kajian`,";
	    $sql .= "`materi_kajian`,";
	    $sql .= "`rangkuman_materi`,";
	    $sql .= "`jumlah_peserta_kajian`,";
	    $sql .= "`jumlah_peserta_tidak_hadir`,";
	    $sql .= "`created_date`,";
	    $sql .= "`created_by`,";
	    $sql .= "`updated_date`,";
	    $sql .= "`updated_by`,";
	    $sql .= "`ip_address` ";
            $sql .= ") ";
            $sql .= " VALUES (";
	    $sql .= " null,";
	    $sql .= "'".$this->toolsController->replacecharSave($this->aktifitas_kajian->getTgl_kajian(), $this->dbh)."',";
	    $sql .= "'".$this->toolsController->replacecharSave($this->aktifitas_kajian->getLokasi_kajian(), $this->dbh)."',";
	    $sql .= "'".$this->toolsController->replacecharSave($this->aktifitas_kajian->getKelompok_kajian(), $this->dbh)."',";
	    $sql .= "'".$this->toolsController->replacecharSave($this->aktifitas_kajian->getTipe_kelompok(), $this->dbh)."',";
	    $sql .= "'".$this->toolsController->replacecharSave($this->aktifitas_kajian->getLevel_kelompok(), $this->dbh)."',";
	    $sql .= "'".$this->toolsController->replacecharSave($this->aktifitas_kajian->getWaktu_mulai_kajian(), $this->dbh)."',";
	    $sql .= "'".$this->toolsController->replacecharSave($this->aktifitas_kajian->getWaktu_selesai_kajian(), $this->dbh)."',";
	    $sql .= "'".$this->toolsController->replacecharSave($this->aktifitas_kajian->getPengisi_kajian(), $this->dbh)."',";
	    $sql .= "'".$this->toolsController->replacecharSave($this->aktifitas_kajian->getMateri_kajian(), $this->dbh)."',";
	    $sql .= "'".$this->toolsController->replacecharSave($this->aktifitas_kajian->getRangkuman_materi(), $this->dbh)."',";
	    $sql .= "'".$this->toolsController->replacecharSave($this->aktifitas_kajian->getJumlah_peserta_kajian(), $this->dbh)."',";
	    $sql .= "'".$this->toolsController->replacecharSave($this->aktifitas_kajian->getJumlah_peserta_tidak_hadir(), $this->dbh)."',";
	    $sql .= "'".$this->toolsController->replacecharSave($this->aktifitas_kajian->getCreated_date(), $this->dbh)."',";
	    $sql .= "'".$this->toolsController->replacecharSave($this->aktifitas_kajian->getCreated_by(), $this->dbh)."',";
	    $sql .= "'".$this->toolsController->replacecharSave($this->aktifitas_kajian->getUpdated_date(), $this->dbh)."',";
	    $sql .= "'".$this->toolsController->replacecharSave($this->aktifitas_kajian->getUpdated_by(), $this->dbh)."',";
	    $sql .= "'".$this->toolsController->replacecharSave($this->aktifitas_kajian->getIp_address(), $this->dbh)."' ";

            $sql .= ")";
            $execute = $this->dbh->query($sql);
        }
        
        
        function updateData(){
            $datetime = date("Y-m-d H:i:s");
            $sql = "UPDATE aktifitas_kajian SET ";
	    $sql .= "`id` = '".$this->toolsController->replacecharSave($this->aktifitas_kajian->getId(),$this->dbh)."',";
	    $sql .= "`tgl_kajian` = '".$this->toolsController->replacecharSave($this->aktifitas_kajian->getTgl_kajian(),$this->dbh)."',";
	    $sql .= "`lokasi_kajian` = '".$this->toolsController->replacecharSave($this->aktifitas_kajian->getLokasi_kajian(),$this->dbh)."',";
	    $sql .= "`kelompok_kajian` = '".$this->toolsController->replacecharSave($this->aktifitas_kajian->getKelompok_kajian(),$this->dbh)."',";
	    $sql .= "`tipe_kelompok` = '".$this->toolsController->replacecharSave($this->aktifitas_kajian->getTipe_kelompok(),$this->dbh)."',";
	    $sql .= "`level_kelompok` = '".$this->toolsController->replacecharSave($this->aktifitas_kajian->getLevel_kelompok(),$this->dbh)."',";
	    $sql .= "`waktu_mulai_kajian` = '".$this->toolsController->replacecharSave($this->aktifitas_kajian->getWaktu_mulai_kajian(),$this->dbh)."',";
	    $sql .= "`waktu_selesai_kajian` = '".$this->toolsController->replacecharSave($this->aktifitas_kajian->getWaktu_selesai_kajian(),$this->dbh)."',";
	    $sql .= "`pengisi_kajian` = '".$this->toolsController->replacecharSave($this->aktifitas_kajian->getPengisi_kajian(),$this->dbh)."',";
	    $sql .= "`materi_kajian` = '".$this->toolsController->replacecharSave($this->aktifitas_kajian->getMateri_kajian(),$this->dbh)."',";
	    $sql .= "`rangkuman_materi` = '".$this->toolsController->replacecharSave($this->aktifitas_kajian->getRangkuman_materi(),$this->dbh)."',";
	    $sql .= "`jumlah_peserta_kajian` = '".$this->toolsController->replacecharSave($this->aktifitas_kajian->getJumlah_peserta_kajian(),$this->dbh)."',";
	    $sql .= "`jumlah_peserta_tidak_hadir` = '".$this->toolsController->replacecharSave($this->aktifitas_kajian->getJumlah_peserta_tidak_hadir(),$this->dbh)."',";
	    $sql .= "`created_date` = '".$this->toolsController->replacecharSave($this->aktifitas_kajian->getCreated_date(),$this->dbh)."',";
	    $sql .= "`created_by` = '".$this->toolsController->replacecharSave($this->aktifitas_kajian->getCreated_by(),$this->dbh)."',";
	    $sql .= "`updated_date` = '".$this->toolsController->replacecharSave($this->aktifitas_kajian->getUpdated_date(),$this->dbh)."',";
	    $sql .= "`updated_by` = '".$this->toolsController->replacecharSave($this->aktifitas_kajian->getUpdated_by(),$this->dbh)."',";
	    $sql .= "`ip_address` = '".$this->toolsController->replacecharSave($this->aktifitas_kajian->getIp_address(),$this->dbh)."' ";
            $sql .= "WHERE id = '".$this->aktifitas_kajian->getId()."'";                
            $execute = $this->dbh->query($sql);
        }
        
        function deleteData($id){
            $sql = "DELETE FROM aktifitas_kajian WHERE id = '".$id."'";
            $execute = $this->dbh->query($sql);
        }
        
        function showData($id){
            $sql = "SELECT * FROM aktifitas_kajian WHERE id = '".$this->toolsController->replacecharFind($id,$this->dbh)."'";

            $row = $this->dbh->query($sql)->fetch();
            $this->loadData($this->aktifitas_kajian, $row);
            
            return $this->aktifitas_kajian;
        }
        
        function checkData($id){
            $sql = "SELECT count(*) FROM aktifitas_kajian where id = '".$id."'";
            $row = $this->dbh->query($sql)->fetch();
            return $row[0];
        }
        
        function showDataAll(){
            $sql = $this->findDataWhere("");
            return $this->createList($sql);            
        }
        function showDataAllQuery(){
            return $this->findDataWhere($this->showDataWhereQuery());
        }
        function countDataAll(){            
            $sql = $this->findCountDataWhere($this->showDataWhereQuery());
            $row = $this->dbh->query($sql)->fetch();
            return $row[0];
        }

        function showDataWhereQuery(){
            $bsearch = isset($_REQUEST["search"]) ;
            $where = "";
            if ($bsearch) {
                $search = $_REQUEST["search"] ;
               $where .= " where id like '%".$search."%'";
               $where .= "       or  tgl_kajian like '%".$search."%'";
               $where .= "       or  lokasi_kajian like '%".$search."%'";
               $where .= "       or  kelompok_kajian like '%".$search."%'";

            }            
            return $where;
        }        
        function showDataAllLimit(){
            $sql = $this->showDataAllLimitQuery();
            return $this->createList($sql);            
        }

        function showDataAllLimitQuery(){            
            $skip = isset($_REQUEST["skip"]) ? $_REQUEST["skip"] : 0;
            $limit = isset($_REQUEST["limit"]) ? $_REQUEST["limit"] : 20;
            $sql = $this->showDataAllQuery();
            $sql .= " limit ". $skip . ", ". $limit;
            return $sql;
        }
        function showFindData($field, $operator ,$keyword){
            $sql = $this->findData($field, $operator ,$keyword);
            return $this->createList($sql);
        }
        
        function findData($field, $operator ,$keyword){
            $where = "WHERE (".$field." ". $operator ."  '$keyword')";
            return $this->findDataWhere($where);
        }
        function findDataWhere($where){
            $sql = "SELECT * FROM aktifitas_kajian  ".$where;
            $sql .= " ORDER BY id";
            return $sql;
        }
        function findCountDataWhere($where){
            $sql = "SELECT count(id)  FROM aktifitas_kajian  ".$where;
            $sql .= " ORDER BY id";
            return $sql;
        }
        function findDataSql($sql){
            return $this->createList($sql);            
        }

        function createList($sql){
            $aktifitas_kajian_List = array();
            foreach ($this->dbh->query($sql) as $row) {
                    $aktifitas_kajian_ = new aktifitas_kajian();
                    $this->loadData($aktifitas_kajian_, $row);
                    $aktifitas_kajian_List[] = $aktifitas_kajian_;
            }
            return $aktifitas_kajian_List;            
        }

                
        function loadData($aktifitas_kajian,$row){
	    $aktifitas_kajian->setId($row['id']);
	    $aktifitas_kajian->setTgl_kajian($row['tgl_kajian']);
	    $aktifitas_kajian->setLokasi_kajian($row['lokasi_kajian']);
	    $aktifitas_kajian->setKelompok_kajian($row['kelompok_kajian']);
	    $aktifitas_kajian->setTipe_kelompok($row['tipe_kelompok']);
	    $aktifitas_kajian->setLevel_kelompok($row['level_kelompok']);
	    $aktifitas_kajian->setWaktu_mulai_kajian($row['waktu_mulai_kajian']);
	    $aktifitas_kajian->setWaktu_selesai_kajian($row['waktu_selesai_kajian']);
	    $aktifitas_kajian->setPengisi_kajian($row['pengisi_kajian']);
	    $aktifitas_kajian->setMateri_kajian($row['materi_kajian']);
	    $aktifitas_kajian->setRangkuman_materi($row['rangkuman_materi']);
	    $aktifitas_kajian->setJumlah_peserta_kajian($row['jumlah_peserta_kajian']);
	    $aktifitas_kajian->setJumlah_peserta_tidak_hadir($row['jumlah_peserta_tidak_hadir']);
	    $aktifitas_kajian->setCreated_date($row['created_date']);
	    $aktifitas_kajian->setCreated_by($row['created_by']);
	    $aktifitas_kajian->setUpdated_date($row['updated_date']);
	    $aktifitas_kajian->setUpdated_by($row['updated_by']);
	    $aktifitas_kajian->setIp_address($row['ip_address']);

        }

        function show(){
            $this->showAll();
        }
        
        function showAll(){
            if ($this->ispublic || $this->isadmin || $this->isread ){
                $last = $this->countDataAll();
                $limit = isset($_REQUEST["limit"]) ? $_REQUEST["limit"] : $this->limit;
                $skip = isset($_REQUEST["skip"]) ? $_REQUEST["skip"] : 0;
                $search = isset($_REQUEST["search"]) ? $_REQUEST["search"] : "";

                $sisa = $last % $limit;

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

                $aktifitas_kajian_list = $this->showDataAllLimit();

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

                require_once './views/aktifitas_kajian/aktifitas_kajian_list.php';
            }else{
                echo "You cannot access this module";
            }
        }
        function showAllJQuery(){
            if ($this->ispublic || $this->isadmin || $this->isread ){
                $last = $this->countDataAll();
                $limit = isset($_REQUEST["limit"]) ? $_REQUEST["limit"] : $this->limit;
                $skip = isset($_REQUEST["skip"]) ? $_REQUEST["skip"] : 0;
                $search = isset($_REQUEST["search"]) ? $_REQUEST["search"] : "";

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

                $aktifitas_kajian_list = $this->showDataAllLimit();
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
                require_once './views/aktifitas_kajian/aktifitas_kajian_jquery_list.php';
            }else{
                echo "You cannot access this module";
            }
        }
        
        function showDetail(){
            if ($this->ispublic || $this->isadmin || $this->isread ){
                $id = $_GET['id'];
                $aktifitas_kajian_ = $this->showData($id);
                require_once './views/aktifitas_kajian/aktifitas_kajian_detail.php';
            }else{
                echo "You cannot access this module";
            }
        }
        function showDetailJQuery(){
            if ($this->ispublic || $this->isadmin || $this->isread ){
                $id = $_GET['id'];
                $aktifitas_kajian_ = $this->showData($id);
                require_once './views/aktifitas_kajian/aktifitas_kajian_jquery_detail.php';
            }else{
                echo  "You cannot access this module";
            }
        }
        
        function showForm(){
            if ($this->ispublic || $this->isadmin || ($this->isread && $this->isupdate)){
                $id = isset($_REQUEST['id']) ? $_REQUEST['id'] : 0;
                $aktifitas_kajian_ = $this->showData($id);
                require_once './views/aktifitas_kajian/aktifitas_kajian_form.php';
            }else{
                echo "You cannot access this module";
            }
        }

        function showFormJQuery(){
            if ($this->ispublic || $this->isadmin || ($this->isread && $this->isupdate)){
                $id = isset($_REQUEST['id']) ? $_REQUEST['id'] : 0;
                $skip = isset($_REQUEST["skip"]) ? $_REQUEST["skip"] : 0;
                $search = isset($_REQUEST["search"]) ? $_REQUEST["search"] : "";
                $aktifitas_kajian_ = $this->showData($id);
                require_once './views/aktifitas_kajian/aktifitas_kajian_jquery_form.php';
            }else{
                echo "You cannot access this module";
            }
        }        
        function deleteForm(){
            if ($this->ispublic || $this->isadmin || ($this->isread && $this->isdelete)){
                $id = isset($_REQUEST['id']) ? $_REQUEST['id'] : 0;
                $this->deleteData($id);
                $this->showAll();
            }else{
                echo "You cannot access this module";
            }
        }
        function deleteFormJQuery(){
            if ($this->ispublic || $this->isadmin || ($this->isread && $this->isdelete)){
                $id = isset($_REQUEST['id']) ? $_REQUEST['id'] : 0;
                $this->deleteData($id);
                $this->showAllJQuery();
            }else{
                echo "You cannot access this module";
            }
        }
        function saveFormJQuery(){
            $this->saveFormPost();
        }
        function saveForm(){
            $this->saveFormPost();
            $this->showAll();
        }                
        function saveFormPost(){
	    $id = isset($_POST['id'])?$_POST['id'] : "";
	    $tgl_kajian = isset($_POST['tgl_kajian'])?$_POST['tgl_kajian'] : "";
	    $lokasi_kajian = isset($_POST['lokasi_kajian'])?$_POST['lokasi_kajian'] : "";
	    $kelompok_kajian = isset($_POST['kelompok_kajian'])?$_POST['kelompok_kajian'] : "";
	    $tipe_kelompok = isset($_POST['tipe_kelompok'])?$_POST['tipe_kelompok'] : "";
	    $level_kelompok = isset($_POST['level_kelompok'])?$_POST['level_kelompok'] : "";
	    $waktu_mulai_kajian = isset($_POST['waktu_mulai_kajian'])?$_POST['waktu_mulai_kajian'] : "";
	    $waktu_selesai_kajian = isset($_POST['waktu_selesai_kajian'])?$_POST['waktu_selesai_kajian'] : "";
	    $pengisi_kajian = isset($_POST['pengisi_kajian'])?$_POST['pengisi_kajian'] : "";
	    $materi_kajian = isset($_POST['materi_kajian'])?$_POST['materi_kajian'] : "";
	    $rangkuman_materi = isset($_POST['rangkuman_materi'])?$_POST['rangkuman_materi'] : "";
	    $jumlah_peserta_kajian = isset($_POST['jumlah_peserta_kajian'])?$_POST['jumlah_peserta_kajian'] : "";
	    $jumlah_peserta_tidak_hadir = isset($_POST['jumlah_peserta_tidak_hadir'])?$_POST['jumlah_peserta_tidak_hadir'] : "";
	    $created_date = isset($_POST['created_date'])?$_POST['created_date'] : "";
	    $created_by = isset($_POST['created_by'])?$_POST['created_by'] : "";
	    $updated_date = isset($_POST['updated_date'])?$_POST['updated_date'] : "";
	    $updated_by = isset($_POST['updated_by'])?$_POST['updated_by'] : "";
	    $ip_address = isset($_POST['ip_address'])?$_POST['ip_address'] : "";
	    $this->aktifitas_kajian->setId($id);
	    $this->aktifitas_kajian->setTgl_kajian($tgl_kajian);
	    $this->aktifitas_kajian->setLokasi_kajian($lokasi_kajian);
	    $this->aktifitas_kajian->setKelompok_kajian($kelompok_kajian);
	    $this->aktifitas_kajian->setTipe_kelompok($tipe_kelompok);
	    $this->aktifitas_kajian->setLevel_kelompok($level_kelompok);
	    $this->aktifitas_kajian->setWaktu_mulai_kajian($waktu_mulai_kajian);
	    $this->aktifitas_kajian->setWaktu_selesai_kajian($waktu_selesai_kajian);
	    $this->aktifitas_kajian->setPengisi_kajian($pengisi_kajian);
	    $this->aktifitas_kajian->setMateri_kajian($materi_kajian);
	    $this->aktifitas_kajian->setRangkuman_materi($rangkuman_materi);
	    $this->aktifitas_kajian->setJumlah_peserta_kajian($jumlah_peserta_kajian);
	    $this->aktifitas_kajian->setJumlah_peserta_tidak_hadir($jumlah_peserta_tidak_hadir);
	    $this->aktifitas_kajian->setCreated_date($created_date);
	    $this->aktifitas_kajian->setCreated_by($created_by);
	    $this->aktifitas_kajian->setUpdated_date($updated_date);
	    $this->aktifitas_kajian->setUpdated_by($updated_by);
	    $this->aktifitas_kajian->setIp_address($ip_address);            
            $this->saveData();
        }
        public function saveData(){
            $check = $this->checkData($this->aktifitas_kajian->getId());
            if($check == 0){
                if ($this->ispublic || $this->isadmin || ($this->isread && $this->isentry)){
                    $this->insertData();
                    $last_id = $this->dbh->lastInsertId();
                    $this->setLastId($last_id);
                    echo "Data is Inserted";
                }else{
                    echo "You cannot insert data this module";
                }
            } else {
                if ($this->ispublic || $this->isadmin || ($this->isread && $this->isupdate)){
                    $this->updateData();
                    echo "Data is updated";
                }else{
                    echo "You cannot update this module";
                }
            }
        }
        public function export() {
            $sql = $this->findDataWhere($this->showDataWhereQuery());
            header("Content-Type:application/csv",false);
            header("Content-Disposition: attachment; filename=". $this->getModulename() .".csv");           
            if($this->getModulename() != "report_query"){
                $report_query = new report_query();
                $report_query_controller = new report_queryController($report_query, $this->dbh);
                echo $report_query_controller->exportcsv($sql);
            }else{
                echo $this->exportcsv($sql);                
            }
        }
        public function printdata() {
            $sql = $this->findDataWhere($this->showDataWhereQuery());
            echo "<html>";
            echo "<head>";
            echo "</head>";
            echo "<body onLoad=\"window.print();window.close()\">";
            echo "<H1>".$this->getModulename()."</H1>";
            if($this->getModulename() != "report_query"){
                $report_query = new report_query();
                $report_query_controller = new report_queryController($report_query, $this->dbh);
                echo $report_query_controller->generatetableview($sql);
            }else{
                echo $this->generatetableview($sql);                
            }
            echo "</body>";
            echo "</html>";
        }
        public function getAktifitas_kajian() {
            return $this->aktifitas_kajian;
        }
        public function setAktifitas_kajian($aktifitas_kajian) {
            $this->aktifitas_kajian = $aktifitas_kajian;
        }
        public function getDbh() {
            return $this->dbh;
        }
        public function setDbh($dbh) {
            $this->dbh = $dbh;
        }
        public function getModulename() {
            return $this->modulename;
        }

        public function setModulename($modulename) {
            $this->modulename = $modulename;
        }

        public function getLimit() {
            return $this->limit;
        }

        public function setLimit($limit) {
            $this->limit = $limit;
        }

        public function getUser() {
            return $this->user;
        }

        public function setUser($user) {
            $this->user = $user;
        }

        public function getIp() {
            return $this->ip;
        }

        public function setIp($ip) {
            $this->ip = $ip;
        }

        public function getIsadmin() {
            return $this->isadmin;
        }

        public function setIsadmin($isadmin) {
            $this->isadmin = $isadmin;
        }

        public function getIspublic() {
            return $this->ispublic;
        }

        public function setIspublic($ispublic) {
            $this->ispublic = $ispublic;
        }

        public function getIsread() {
            return $this->isread;
        }

        public function setIsread($isread) {
            $this->isread = $isread;
        }

        public function getIsconfirm() {
            return $this->isconfirm;
        }

        public function setIsconfirm($isconfirm) {
            $this->isconfirm = $isconfirm;
        }

        public function getIsentry() {
            return $this->isentry;
        }

        public function setIsentry($isentry) {
            $this->isentry = $isentry;
        }

        public function getIsupdate() {
            return $this->isupdate;
        }

        public function setIsupdate($isupdate) {
            $this->isupdate = $isupdate;
        }

        public function getIsdelete() {
            return $this->isdelete;
        }

        public function setIsdelete($isdelete) {
            $this->isdelete = $isdelete;
        }

        public function getIsprint() {
            return $this->isprint;
        }

        public function setIsprint($isprint) {
            $this->isprint = $isprint;
        }

        public function getIsexport() {
            return $this->isexport;
        }

        public function setIsexport($isexport) {
            $this->isexport = $isexport;
        }

        public function getIsimport() {
            return $this->isimport;
        }

        public function setIsimport($isimport) {
            $this->isimport = $isimport;
        }

        public function setLastId($id){
            $this->lastID = $id;
        }
        
        public function getLastId(){
            return $this->lastID;
        }
    }
?>
