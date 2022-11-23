<?php
    require_once './models/master_aktifitas.class.php';
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
 
    class master_aktifitasControllerGenerate
    {
        protected $master_aktifitas;
        var $modulename = "master_aktifitas";
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
        function __construct($master_aktifitas, $dbh) {
            $this->modulename = strtoupper($this->modulename);
            $this->master_aktifitas = $master_aktifitas;
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
            
            $sql = "INSERT INTO master_aktifitas ";
            $sql .= " ( ";
	    $sql .= "`id`,";
	    $sql .= "`kode_aktifitas`,";
	    $sql .= "`nama_aktifitas`,";
	    $sql .= "`satuan_aktifitas`,";
	    $sql .= "`type_aktifitas`,";
	    $sql .= "`peruntukan`,";
	    $sql .= "`catatan`,";
	    $sql .= "`placeholder_catatan`,";
	    $sql .= "`placeholder`,";
	    $sql .= "`active`,";
	    $sql .= "`visorder`,";
	    $sql .= "`created_date`,";
	    $sql .= "`created_by`,";
	    $sql .= "`updated_date`,";
	    $sql .= "`updated_by`,";
	    $sql .= "`ip_address` ";
            $sql .= ") ";
            $sql .= " VALUES (";
	    $sql .= " null,";
	    $sql .= "'".$this->toolsController->replacecharSave($this->master_aktifitas->getKode_aktifitas(), $this->dbh)."',";
	    $sql .= "'".$this->toolsController->replacecharSave($this->master_aktifitas->getNama_aktifitas(), $this->dbh)."',";
	    $sql .= "'".$this->toolsController->replacecharSave($this->master_aktifitas->getSatuan_aktifitas(), $this->dbh)."',";
	    $sql .= "'".$this->toolsController->replacecharSave($this->master_aktifitas->getType_aktifitas(), $this->dbh)."',";
	    $sql .= "'".$this->toolsController->replacecharSave($this->master_aktifitas->getPeruntukan(), $this->dbh)."',";
	    $sql .= "'".$this->toolsController->replacecharSave($this->master_aktifitas->getCatatan(), $this->dbh)."',";
	    $sql .= "'".$this->toolsController->replacecharSave($this->master_aktifitas->getPlaceholder_catatan(), $this->dbh)."',";
	    $sql .= "'".$this->toolsController->replacecharSave($this->master_aktifitas->getPlaceholder(), $this->dbh)."',";
	    $sql .= "'".$this->toolsController->replacecharSave($this->master_aktifitas->getActive(), $this->dbh)."',";
	    $sql .= "'".$this->toolsController->replacecharSave($this->master_aktifitas->getVisorder(), $this->dbh)."',";
	    $sql .= "'".$this->toolsController->replacecharSave($this->master_aktifitas->getCreated_date(), $this->dbh)."',";
	    $sql .= "'".$this->toolsController->replacecharSave($this->master_aktifitas->getCreated_by(), $this->dbh)."',";
	    $sql .= "'".$this->toolsController->replacecharSave($this->master_aktifitas->getUpdated_date(), $this->dbh)."',";
	    $sql .= "'".$this->toolsController->replacecharSave($this->master_aktifitas->getUpdated_by(), $this->dbh)."',";
	    $sql .= "'".$this->toolsController->replacecharSave($this->master_aktifitas->getIp_address(), $this->dbh)."' ";

            $sql .= ")";
            $execute = $this->dbh->query($sql);
        }
        
        
        function updateData(){
            $datetime = date("Y-m-d H:i:s");
            $sql = "UPDATE master_aktifitas SET ";
	    $sql .= "`id` = '".$this->toolsController->replacecharSave($this->master_aktifitas->getId(),$this->dbh)."',";
	    $sql .= "`kode_aktifitas` = '".$this->toolsController->replacecharSave($this->master_aktifitas->getKode_aktifitas(),$this->dbh)."',";
	    $sql .= "`nama_aktifitas` = '".$this->toolsController->replacecharSave($this->master_aktifitas->getNama_aktifitas(),$this->dbh)."',";
	    $sql .= "`satuan_aktifitas` = '".$this->toolsController->replacecharSave($this->master_aktifitas->getSatuan_aktifitas(),$this->dbh)."',";
	    $sql .= "`type_aktifitas` = '".$this->toolsController->replacecharSave($this->master_aktifitas->getType_aktifitas(),$this->dbh)."',";
	    $sql .= "`peruntukan` = '".$this->toolsController->replacecharSave($this->master_aktifitas->getPeruntukan(),$this->dbh)."',";
	    $sql .= "`catatan` = '".$this->toolsController->replacecharSave($this->master_aktifitas->getCatatan(),$this->dbh)."',";
	    $sql .= "`placeholder_catatan` = '".$this->toolsController->replacecharSave($this->master_aktifitas->getPlaceholder_catatan(),$this->dbh)."',";
	    $sql .= "`placeholder` = '".$this->toolsController->replacecharSave($this->master_aktifitas->getPlaceholder(),$this->dbh)."',";
	    $sql .= "`active` = '".$this->toolsController->replacecharSave($this->master_aktifitas->getActive(),$this->dbh)."',";
	    $sql .= "`visorder` = '".$this->toolsController->replacecharSave($this->master_aktifitas->getVisorder(),$this->dbh)."',";
	    $sql .= "`created_date` = '".$this->toolsController->replacecharSave($this->master_aktifitas->getCreated_date(),$this->dbh)."',";
	    $sql .= "`created_by` = '".$this->toolsController->replacecharSave($this->master_aktifitas->getCreated_by(),$this->dbh)."',";
	    $sql .= "`updated_date` = '".$this->toolsController->replacecharSave($this->master_aktifitas->getUpdated_date(),$this->dbh)."',";
	    $sql .= "`updated_by` = '".$this->toolsController->replacecharSave($this->master_aktifitas->getUpdated_by(),$this->dbh)."',";
	    $sql .= "`ip_address` = '".$this->toolsController->replacecharSave($this->master_aktifitas->getIp_address(),$this->dbh)."' ";
            $sql .= "WHERE id = '".$this->master_aktifitas->getId()."'";                
            $execute = $this->dbh->query($sql);
        }
        
        function deleteData($id){
            $sql = "DELETE FROM master_aktifitas WHERE id = '".$id."'";
            $execute = $this->dbh->query($sql);
        }
        
        function showData($id){
            $sql = "SELECT * FROM master_aktifitas WHERE id = '".$this->toolsController->replacecharFind($id,$this->dbh)."'";

            $row = $this->dbh->query($sql)->fetch();
            $this->loadData($this->master_aktifitas, $row);
            
            return $this->master_aktifitas;
        }
        
        function checkData($id){
            $sql = "SELECT count(*) FROM master_aktifitas where id = '".$id."'";
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
               $where .= "       or  kode_aktifitas like '%".$search."%'";
               $where .= "       or  nama_aktifitas like '%".$search."%'";
               $where .= "       or  satuan_aktifitas like '%".$search."%'";

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
            $sql = "SELECT * FROM master_aktifitas  ".$where;
            $sql .= " ORDER BY id";
            return $sql;
        }
        function findCountDataWhere($where){
            $sql = "SELECT count(id)  FROM master_aktifitas  ".$where;
            $sql .= " ORDER BY id";
            return $sql;
        }
        function findDataSql($sql){
            return $this->createList($sql);            
        }

        function createList($sql){
            $master_aktifitas_List = array();
            foreach ($this->dbh->query($sql) as $row) {
                    $master_aktifitas_ = new master_aktifitas();
                    $this->loadData($master_aktifitas_, $row);
                    $master_aktifitas_List[] = $master_aktifitas_;
            }
            return $master_aktifitas_List;            
        }

                
        function loadData($master_aktifitas,$row){
	    $master_aktifitas->setId($row['id']);
	    $master_aktifitas->setKode_aktifitas($row['kode_aktifitas']);
	    $master_aktifitas->setNama_aktifitas($row['nama_aktifitas']);
	    $master_aktifitas->setSatuan_aktifitas($row['satuan_aktifitas']);
	    $master_aktifitas->setType_aktifitas($row['type_aktifitas']);
	    $master_aktifitas->setPeruntukan($row['peruntukan']);
	    $master_aktifitas->setCatatan($row['catatan']);
	    $master_aktifitas->setPlaceholder_catatan($row['placeholder_catatan']);
	    $master_aktifitas->setPlaceholder($row['placeholder']);
	    $master_aktifitas->setActive($row['active']);
	    $master_aktifitas->setVisorder($row['visorder']);
	    $master_aktifitas->setCreated_date($row['created_date']);
	    $master_aktifitas->setCreated_by($row['created_by']);
	    $master_aktifitas->setUpdated_date($row['updated_date']);
	    $master_aktifitas->setUpdated_by($row['updated_by']);
	    $master_aktifitas->setIp_address($row['ip_address']);

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

                $master_aktifitas_list = $this->showDataAllLimit();

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

                require_once './views/master_aktifitas/master_aktifitas_list.php';
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

                $master_aktifitas_list = $this->showDataAllLimit();
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
                require_once './views/master_aktifitas/master_aktifitas_jquery_list.php';
            }else{
                echo "You cannot access this module";
            }
        }
        
        function showDetail(){
            if ($this->ispublic || $this->isadmin || $this->isread ){
                $id = $_GET['id'];
                $master_aktifitas_ = $this->showData($id);
                require_once './views/master_aktifitas/master_aktifitas_detail.php';
            }else{
                echo "You cannot access this module";
            }
        }
        function showDetailJQuery(){
            if ($this->ispublic || $this->isadmin || $this->isread ){
                $id = $_GET['id'];
                $master_aktifitas_ = $this->showData($id);
                require_once './views/master_aktifitas/master_aktifitas_jquery_detail.php';
            }else{
                echo  "You cannot access this module";
            }
        }
        
        function showForm(){
            if ($this->ispublic || $this->isadmin || ($this->isread && $this->isupdate)){
                $id = isset($_REQUEST['id']) ? $_REQUEST['id'] : 0;
                $master_aktifitas_ = $this->showData($id);
                require_once './views/master_aktifitas/master_aktifitas_form.php';
            }else{
                echo "You cannot access this module";
            }
        }

        function showFormJQuery(){
            if ($this->ispublic || $this->isadmin || ($this->isread && $this->isupdate)){
                $id = isset($_REQUEST['id']) ? $_REQUEST['id'] : 0;
                $skip = isset($_REQUEST["skip"]) ? $_REQUEST["skip"] : 0;
                $search = isset($_REQUEST["search"]) ? $_REQUEST["search"] : "";
                $master_aktifitas_ = $this->showData($id);
                require_once './views/master_aktifitas/master_aktifitas_jquery_form.php';
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
	    $kode_aktifitas = isset($_POST['kode_aktifitas'])?$_POST['kode_aktifitas'] : "";
	    $nama_aktifitas = isset($_POST['nama_aktifitas'])?$_POST['nama_aktifitas'] : "";
	    $satuan_aktifitas = isset($_POST['satuan_aktifitas'])?$_POST['satuan_aktifitas'] : "";
	    $type_aktifitas = isset($_POST['type_aktifitas'])?$_POST['type_aktifitas'] : "";
	    $peruntukan = isset($_POST['peruntukan'])?$_POST['peruntukan'] : "";
	    $catatan = isset($_POST['catatan'])?$_POST['catatan'] : "";
	    $placeholder_catatan = isset($_POST['placeholder_catatan'])?$_POST['placeholder_catatan'] : "";
	    $placeholder = isset($_POST['placeholder'])?$_POST['placeholder'] : "";
	    $active = isset($_POST['active'])?$_POST['active'] : "";
	    $visorder = isset($_POST['visorder'])?$_POST['visorder'] : "";
	    $created_date = isset($_POST['created_date'])?$_POST['created_date'] : "";
	    $created_by = isset($_POST['created_by'])?$_POST['created_by'] : "";
	    $updated_date = isset($_POST['updated_date'])?$_POST['updated_date'] : "";
	    $updated_by = isset($_POST['updated_by'])?$_POST['updated_by'] : "";
	    $ip_address = isset($_POST['ip_address'])?$_POST['ip_address'] : "";
	    $this->master_aktifitas->setId($id);
	    $this->master_aktifitas->setKode_aktifitas($kode_aktifitas);
	    $this->master_aktifitas->setNama_aktifitas($nama_aktifitas);
	    $this->master_aktifitas->setSatuan_aktifitas($satuan_aktifitas);
	    $this->master_aktifitas->setType_aktifitas($type_aktifitas);
	    $this->master_aktifitas->setPeruntukan($peruntukan);
	    $this->master_aktifitas->setCatatan($catatan);
	    $this->master_aktifitas->setPlaceholder_catatan($placeholder_catatan);
	    $this->master_aktifitas->setPlaceholder($placeholder);
	    $this->master_aktifitas->setActive($active);
	    $this->master_aktifitas->setVisorder($visorder);
	    $this->master_aktifitas->setCreated_date($created_date);
	    $this->master_aktifitas->setCreated_by($created_by);
	    $this->master_aktifitas->setUpdated_date($updated_date);
	    $this->master_aktifitas->setUpdated_by($updated_by);
	    $this->master_aktifitas->setIp_address($ip_address);            
            $this->saveData();
        }
        public function saveData(){
            $check = $this->checkData($this->master_aktifitas->getId());
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
        public function getMaster_aktifitas() {
            return $this->master_aktifitas;
        }
        public function setMaster_aktifitas($master_aktifitas) {
            $this->master_aktifitas = $master_aktifitas;
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
