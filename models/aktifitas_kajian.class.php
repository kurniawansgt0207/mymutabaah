<?php
    class aktifitas_kajian
    {
	var $id;
	var $tgl_kajian;
	var $lokasi_kajian;
	var $kelompok_kajian;
	var $tipe_kelompok;
	var $level_kelompok;
	var $waktu_mulai_kajian;
	var $waktu_selesai_kajian;
	var $pengisi_kajian;
	var $materi_kajian;
	var $rangkuman_materi;
	var $jumlah_peserta_kajian;
	var $jumlah_peserta_tidak_hadir;
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
	public function getTgl_kajian() {
	   return $this->tgl_kajian;
	}

	public function setTgl_kajian($tgl_kajian) {
	   $this->tgl_kajian = $tgl_kajian;
	}
	public function getLokasi_kajian() {
	   return $this->lokasi_kajian;
	}

	public function setLokasi_kajian($lokasi_kajian) {
	   $this->lokasi_kajian = $lokasi_kajian;
	}
	public function getKelompok_kajian() {
	   return $this->kelompok_kajian;
	}

	public function setKelompok_kajian($kelompok_kajian) {
	   $this->kelompok_kajian = $kelompok_kajian;
	}
	public function getTipe_kelompok() {
	   return $this->tipe_kelompok;
	}

	public function setTipe_kelompok($tipe_kelompok) {
	   $this->tipe_kelompok = $tipe_kelompok;
	}
	public function getLevel_kelompok() {
	   return $this->level_kelompok;
	}

	public function setLevel_kelompok($level_kelompok) {
	   $this->level_kelompok = $level_kelompok;
	}
	public function getWaktu_mulai_kajian() {
	   return $this->waktu_mulai_kajian;
	}

	public function setWaktu_mulai_kajian($waktu_mulai_kajian) {
	   $this->waktu_mulai_kajian = $waktu_mulai_kajian;
	}
	public function getWaktu_selesai_kajian() {
	   return $this->waktu_selesai_kajian;
	}

	public function setWaktu_selesai_kajian($waktu_selesai_kajian) {
	   $this->waktu_selesai_kajian = $waktu_selesai_kajian;
	}
	public function getPengisi_kajian() {
	   return $this->pengisi_kajian;
	}

	public function setPengisi_kajian($pengisi_kajian) {
	   $this->pengisi_kajian = $pengisi_kajian;
	}
	public function getMateri_kajian() {
	   return $this->materi_kajian;
	}

	public function setMateri_kajian($materi_kajian) {
	   $this->materi_kajian = $materi_kajian;
	}
	public function getRangkuman_materi() {
	   return $this->rangkuman_materi;
	}

	public function setRangkuman_materi($rangkuman_materi) {
	   $this->rangkuman_materi = $rangkuman_materi;
	}
	public function getJumlah_peserta_kajian() {
	   return $this->jumlah_peserta_kajian;
	}

	public function setJumlah_peserta_kajian($jumlah_peserta_kajian) {
	   $this->jumlah_peserta_kajian = $jumlah_peserta_kajian;
	}
	public function getJumlah_peserta_tidak_hadir() {
	   return $this->jumlah_peserta_tidak_hadir;
	}

	public function setJumlah_peserta_tidak_hadir($jumlah_peserta_tidak_hadir) {
	   $this->jumlah_peserta_tidak_hadir = $jumlah_peserta_tidak_hadir;
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
