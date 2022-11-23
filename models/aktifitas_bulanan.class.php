<?php
    class aktifitas_bulanan
    {
	var $id;
	var $yop;
	var $mop;
	var $user_id;
	var $user_fullname;
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
	public function getYop() {
	   return $this->yop;
	}

	public function setYop($yop) {
	   $this->yop = $yop;
	}
	public function getMop() {
	   return $this->mop;
	}

	public function setMop($mop) {
	   $this->mop = $mop;
	}
	public function getUser_id() {
	   return $this->user_id;
	}

	public function setUser_id($user_id) {
	   $this->user_id = $user_id;
	}
	public function getUser_fullname() {
	   return $this->user_fullname;
	}

	public function setUser_fullname($user_fullname) {
	   $this->user_fullname = $user_fullname;
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
