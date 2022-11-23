<?php
    class aktifitas_harian_detail
    {
	var $id;
	var $aktifitas_id;
	var $kode_aktifitas;
	var $nama_aktifitas;
	var $value_aktifitas;
	var $satuan_aktifitas;
	var $catatan_aktifitas;
	var $created_date;
	var $created_by;
	var $updated_date;
	var $updated_by;
	var $ip_address;

        var $primarykey = "id";
        
	public function getId() {
	   return $this->id;
	}

	public function setId($id) {
	   $this->id = $id;
	}
	public function getAktifitas_id() {
	   return $this->aktifitas_id;
	}

	public function setAktifitas_id($aktifitas_id) {
	   $this->aktifitas_id = $aktifitas_id;
	}
	public function getKode_aktifitas() {
	   return $this->kode_aktifitas;
	}

	public function setKode_aktifitas($kode_aktifitas) {
	   $this->kode_aktifitas = $kode_aktifitas;
	}
	public function getNama_aktifitas() {
	   return $this->nama_aktifitas;
	}

	public function setNama_aktifitas($nama_aktifitas) {
	   $this->nama_aktifitas = $nama_aktifitas;
	}
	public function getValue_aktifitas() {
	   return $this->value_aktifitas;
	}

	public function setValue_aktifitas($value_aktifitas) {
	   $this->value_aktifitas = $value_aktifitas;
	}
	public function getSatuan_aktifitas() {
	   return $this->satuan_aktifitas;
	}

	public function setSatuan_aktifitas($satuan_aktifitas) {
	   $this->satuan_aktifitas = $satuan_aktifitas;
	}
	public function getCatatan_aktifitas() {
	   return $this->catatan_aktifitas;
	}

	public function setCatatan_aktifitas($catatan_aktifitas) {
	   $this->catatan_aktifitas = $catatan_aktifitas;
	}
	public function getCreated_date() {
	   return $this->created_date;
	}

	public function setCreated_date($created_date) {
	   $this->created_date = $created_date;
	}
	public function getCreated_by() {
	   return $this->created_by;
	}

	public function setCreated_by($created_by) {
	   $this->created_by = $created_by;
	}
	public function getUpdated_date() {
	   return $this->updated_date;
	}

	public function setUpdated_date($updated_date) {
	   $this->updated_date = $updated_date;
	}
	public function getUpdated_by() {
	   return $this->updated_by;
	}

	public function setUpdated_by($updated_by) {
	   $this->updated_by = $updated_by;
	}
	public function getIp_address() {
	   return $this->ip_address;
	}

	public function setIp_address($ip_address) {
	   $this->ip_address = $ip_address;
	}
         
    }
?>
