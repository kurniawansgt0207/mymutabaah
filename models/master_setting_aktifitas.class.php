<?php
    class master_setting_aktifitas
    {
	var $id;
	var $unit_id;
	var $aktifitas_id;
	var $is_active;
	var $created_date;
	var $created_by;
	var $updated_date;
	var $updated_by;
	var $ipaddress;

        var $primarykey = "id";
        
	public function getId() {
	   return $this->id;
	}

	public function setId($id) {
	   $this->id = $id;
	}
	public function getUnit_id() {
	   return $this->unit_id;
	}

	public function setUnit_id($unit_id) {
	   $this->unit_id = $unit_id;
	}
	public function getAktifitas_id() {
	   return $this->aktifitas_id;
	}

	public function setAktifitas_id($aktifitas_id) {
	   $this->aktifitas_id = $aktifitas_id;
	}
	public function getIs_active() {
	   return $this->is_active;
	}

	public function setIs_active($is_active) {
	   $this->is_active = $is_active;
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
	public function getIpaddress() {
	   return $this->ipaddress;
	}

	public function setIpaddress($ipaddress) {
	   $this->ipaddress = $ipaddress;
	}
         
    }
?>
