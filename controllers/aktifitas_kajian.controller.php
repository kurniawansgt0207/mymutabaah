<?php
    require_once './models/master_user.class.php';
    require_once './controllers/master_user.controller.php';
    require_once './models/aktifitas_kajian.class.php';
    require_once './controllers/aktifitas_kajian.controller.generate.php';
    require_once './models/master_shaff.class.php';
    require_once './controllers/master_shaff.controller.php';    
    require_once './models/master_materi.class.php';
    require_once './controllers/master_materi.controller.php';    
    
    if (!isset($_SESSION)){
        session_start();
    }

    class aktifitas_kajianController extends aktifitas_kajianControllerGenerate
    {
        function showFormJQuery() {
            $id = isset($_REQUEST['id']) ? $_REQUEST['id'] : 0;
            $skip = isset($_REQUEST["skip"]) ? $_REQUEST["skip"] : 0;
            $search = isset($_REQUEST["search"]) ? $_REQUEST["search"] : "";
            $aktifitas_kajian_ = $this->showData($id);
            
            $master_shaff = new master_shaff();
            $master_shaffCtrl = new master_shaffController($master_shaff, $this->dbh);
            $master_shaff_list = $master_shaffCtrl->showDataAll();
            
            $master_materi = new master_materi();
            $master_materiCtrl = new master_materiController($master_materi, $this->dbh);
            $m_materi_ = $master_materiCtrl->showDataAll();
            
            require_once './views/aktifitas_kajian/aktifitas_kajian_jquery_form.php';
        }
        
        function saveFormPost(){
	    $id = isset($_POST['id'])?$_POST['id'] : "";
	    $tgl_kajian = isset($_POST['tgl_kajian'])?$_POST['tgl_kajian'] : "";
	    $lokasi_kajian = isset($_POST['lokasi_kajian'])?$_POST['lokasi_kajian'] : "";
	    $kelompok_kajian = isset($_POST['kelompok_kajian'])?$_POST['kelompok_kajian'] : "";
	    $tipe_kelompok = isset($_POST['tipe_kelompok'])?$_POST['tipe_kelompok'] : "";  
            $level_kelompok = isset($_POST['level_kelompok'])?$_POST['level_kelompok'] : "";          
	    $waktu_mulai_kajian = isset($_POST['jam_mulai'])?$_POST['jam_mulai'].":".$_POST['menit_mulai'] : "";
	    $waktu_selesai_kajian = isset($_POST['jam_selesai'])?$_POST['jam_selesai'].":".$_POST['menit_selesai'] : "";
	    $pengisi_kajian = isset($_POST['pengisi_kajian'])?$_POST['pengisi_kajian'] : "";
	    $materi_kajian = isset($_POST['materi_kajian'])?$_POST['materi_kajian'] : "";
	    $rangkuman_materi = isset($_POST['rangkuman_materi'])?$_POST['rangkuman_materi'] : "";
	    $jumlah_peserta_kajian = isset($_POST['jumlah_peserta_kajian'])?$_POST['jumlah_peserta_kajian'] : "";
	    $jumlah_peserta_tidak_hadir = isset($_POST['jumlah_peserta_tidak_hadir'])?$_POST['jumlah_peserta_tidak_hadir'] : "";
	    $created_date = isset($_POST['id'])?$_POST['created_date'] : date("Y-m-d H:i:s");
	    $created_by = isset($_POST['id'])?$_POST['created_by'] : $this->user;
	    $updated_date = isset($_POST['updated_date'])?$_POST['updated_date'] : date("Y-m-d H:i:s");
	    $updated_by = isset($_POST['updated_by'])?$_POST['updated_by'] : $this->user;
	    $ip_address = isset($_POST['ip_address'])?$_POST['ip_address'] : $this->ip;
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
    }
?>
