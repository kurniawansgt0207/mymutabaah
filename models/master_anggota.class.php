<?php
    class master_anggota
    {
	var $id;
	var $nama_anggota;
	var $cabang_id;
	var $ranting_id;
	var $group_id;
	var $shaff;
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
	public function getNama_anggota() {
	   return $this->nama_anggota;
	}

	public function setNama_anggota($nama_anggota) {
	   $this->nama_anggota = $nama_anggota;
	}
	public function getCabang_id() {
	   return $this->cabang_id;
	}

	public function setCabang_id($cabang_id) {
	   $this->cabang_id = $cabang_id;
	}
	public function getRanting_id() {
	   return $this->ranting_id;
	}

	public function setRanting_id($ranting_id) {
	   $this->ranting_id = $ranting_id;
	}
	public function getGroup_id() {
	   return $this->group_id;
	}

	public function setGroup_id($group_id) {
	   $this->group_id = $group_id;
	}
	public function getShaff() {
	   return $this->shaff;
	}

	public function setShaff($shaff) {
	   $this->shaff = $shaff;
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
