<?php
    class master_aktifitas
    {
	var $id;
	var $kode_aktifitas;
	var $nama_aktifitas;
	var $satuan_aktifitas;
	var $type_aktifitas;
	var $peruntukan;
	var $catatan;
	var $placeholder_catatan;
	var $placeholder;
	var $active;
	var $visorder;
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
	public function getSatuan_aktifitas() {
	   return $this->satuan_aktifitas;
	}

	public function setSatuan_aktifitas($satuan_aktifitas) {
	   $this->satuan_aktifitas = $satuan_aktifitas;
	}
	public function getType_aktifitas() {
	   return $this->type_aktifitas;
	}

	public function setType_aktifitas($type_aktifitas) {
	   $this->type_aktifitas = $type_aktifitas;
	}
	public function getPeruntukan() {
	   return $this->peruntukan;
	}

	public function setPeruntukan($peruntukan) {
	   $this->peruntukan = $peruntukan;
	}
	public function getCatatan() {
	   return $this->catatan;
	}

	public function setCatatan($catatan) {
	   $this->catatan = $catatan;
	}
	public function getPlaceholder_catatan() {
	   return $this->placeholder_catatan;
	}

	public function setPlaceholder_catatan($placeholder_catatan) {
	   $this->placeholder_catatan = $placeholder_catatan;
	}
	public function getPlaceholder() {
	   return $this->placeholder;
	}

	public function setPlaceholder($placeholder) {
	   $this->placeholder = $placeholder;
	}
	public function getActive() {
	   return $this->active;
	}

	public function setActive($active) {
	   $this->active = $active;
	}
	public function getVisorder() {
	   return $this->visorder;
	}

	public function setVisorder($visorder) {
	   $this->visorder = $visorder;
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
