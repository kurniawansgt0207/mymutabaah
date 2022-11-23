
<script type="text/javascript" >
      $(function() {
        $('#datesales1,#datesales2').datepicker({
                altFormat: 'd/m/yy',
                dateFormat: 'yy-mm-dd',
                yearRange: '-20:+20',
                changeYear: true,
                changeMonth: true
        });	
    });
    function showKelas(){
        var yayasan = document.getElementById('yayasan').value;
        var page = "index.php?model=master_user&action=showKelasYayasan&yayasan="+yayasan;
        showMenu('listKelas',page);
    }
    function showKelompok(){
        var yayasan = document.getElementById('yayasan').value;
        var kelas = document.getElementById('kelas').value;
        var page = "index.php?model=master_user&action=showKelompokYayasan&yayasan="+yayasan+"&kelas="+kelas;
        showMenu('listKelompok',page);
    }
    function showAnggota(){
        var yayasan = document.getElementById('yayasan').value;
        var kelompok = document.getElementById('kelompok').value;
        var ranting = document.getElementById('kelas').value;
        var page = "index.php?model=master_user&action=showAnggotaKelompok&&yayasan="+yayasan+"&ranting="+ranting+"&kelompok="+kelompok;
        showMenu('listAnggota',page);
    }
    /*function showAnggota(){
        var kelompok = document.getElementById('kelompok').value;
        var yayasan = document.getElementById('idgroup').value;
        var ranting = document.getElementById('idsubgroup').value;        
        var page = "index.php?model=master_user&action=showAnggotaKelompok&yayasan="+yayasan+"&ranting="+ranting+"&kelompok="+kelompok;
        showMenu('listAnggota',page);
    }*/
    function exportReportExcell(){
        var err="";
        var parameter1 = document.getElementById('datesales1').value;      
        var parameter2 = document.getElementById('datesales2').value;
        var parameter3 = document.getElementById('anggota').value;        
        var parameter4 = document.getElementById('yayasan').value;
        var parameter5 = document.getElementById('kelas').value;
        var parameter6 = document.getElementById('kelompok').value;
        var id = (parameter3 != 0) ? "3" : "2";
        var cmpny = (parameter3 != 0) ? "by_Anggota" : "All Anggota";
        var fileName = "Laporan_Rekap_Aktifitas_Periode_"+cmpny+"_"+parameter1+"_sd_"+parameter2;
        
        if(parameter4 == ""){
            alert("Yayasan harus dipilih");
            err = "err";
            return false;
        }
        
        if(parameter5 == ""){
            alert("Kelas harus dipilih");
            err = "err";
            return false;
        }
        
        if(parameter6 == ""){
            alert("Kelompok harus dipilih");
            err = "err";
            return false;
        }
        
        if(parameter3 == ""){
            alert("Anggota harus dipilih");
            err = "err";
            return false;
        }
        
        if(err==""){
            var page = "index.php?model=report_query&action=showExportTableExcell&id="+id+"&parameter1=" + parameter1 + "&parameter2=" + parameter2
            + "&parameter3=" + parameter3 + "&parameter4=" + parameter4 + "&parameter5=" + parameter5 + "&parameter6=" + parameter6 + "&filename=" + fileName;        
            window.open(page);        
        }
    }
    
    function resultReport(){        
        var err="";
        var parameter1 = document.getElementById('datesales1').value;
        var parameter2 = document.getElementById('datesales2').value;
        var parameter3 = document.getElementById('anggota').value; 
        var parameter4 = document.getElementById('yayasan').value;
        var parameter5 = document.getElementById('kelas').value;
        var parameter6 = document.getElementById('kelompok').value;
        var id = (parameter3 != 0) ? "3" : "2";
        
        if(parameter4 == ""){
            alert("Yayasan harus dipilih");
            err = "err";
            return false;
        }
        
        if(parameter5 == ""){
            alert("Kelas harus dipilih");
            err = "err";
            return false;
        }
        
        if(parameter6 == ""){
            alert("Kelompok harus dipilih");
            err = "err";
            return false;
        }
        
        if(parameter3 == ""){
            alert("Anggota harus dipilih");
            err = "err";
            return false;
        }
        
        if(err == ""){
            var page = "index.php?model=report_query&action=showGenerateTable&id="+id+"&parameter1=" + parameter1 + "&parameter2=" + parameter2        
            + "&parameter3=" + parameter3 + "&parameter4=" + parameter4 + "&parameter5=" + parameter5 + "&parameter6=" + parameter6;
            showMenu("resultreport", page);
        }
    }   
</script>
<?php    
    $userDesc = $user_list->getDescription();
    $userUnit = $user_list->getUnitid();
    $userSubUnit = $user_list->getDepartmentid();
    $userLevel = $user_detail_list->getGroupcode();
    $userLevelID = $group_list_->getId();
    $userShaff = $user_list->getShaffid();
    if($userDesc == "Administrator" || $userDesc == "Administrator Group"){
        $userFullname = "";
    } else {
        $userFullname = $user_list->getUsername();
    }
    
    $labelComboYayasan = "[ Semua Yayasan ]";    
    $valueComboYayasan = 0;
    $labelComboKelas = "[ Semua Kelas ]";    
    $valueComboKelas = 0;
    if(substr($userDesc, 0, 5) == "Admin"){
        $labelComboYayasan = "[ Pilih Yayasan ]";
        $valueComboYayasan = "";
        $labelComboKelas = "[ Pilih Kelas ]";    
        $valueComboKelas = "";
        $labelComboKelompok = "[ Semua Kelompok ]";    
        $valueComboKelompok = "0";
        $labelComboAnggota = "[ Semua Anggota ]";    
        $valueComboAnggota = "0";
    } else if($userUnit > 0){
        $labelComboYayasan = "[ Pilih Yayasan ]";
        $valueComboYayasan = "";
        $labelComboKelas = "[ Pilih Kelas ]";    
        $valueComboKelas = "";
        $labelComboKelompok = "[ Pilih Kelompok ]";    
        $valueComboKelompok = "";
        $labelComboAnggota = "[ Pilih Anggota ]";    
        $valueComboAnggota = "";
    }
    
    $master_aktifitas = new master_aktifitas();
    $master_aktifitasCtrl = new master_aktifitasController($master_aktifitas, $this->dbh);
    $m_aktifitas_list = $master_aktifitasCtrl->showDataAllActivityByPeruntukanByUnit("daily",$userUnit);
    
    $master_anggota = new master_anggota();
    $master_anggotaCtrl = new master_anggotaController($master_anggota, $this->dbh);
    //$m_anggota_list = $master_anggotaCtrl->showAnggotaByNameGroupSubGroup($userFullname,$userGroup,$userSubGroup);
    
    $m_anggota_list = $master_userCtrl->showDataUserByGroupSubgroup($userFullname,$userUnit,$userSubUnit,$userLevelID,$userShaff);
?>
<h1>Rekap Periode</h1>
<input type="hidden" name="idgroup" id="idgroup" value="<?php echo $userUnit;?>">
<input type="hidden" name="idsubgroup" id="idsubgroup" value="<?php echo $userSubUnit;?>">
<table>
    <tr>
        <td>Tanggal Awal</td>
        <td>:</td>
        <td>
            <input type="text" class="form-control" name="datesales1" id="datesales1" value="<?php echo date("Y-m-01");?>" size="10">
            <div id="datesales_cal1"></div>
        </td>
    </tr>
    <tr>
        <td>Tanggal Akhir</td>
        <td>:</td>
        <td>            
            <input type="text" class="form-control" name="datesales2" id="datesales2" value="<?php echo date("Y-m-d");?>" size="10">
            <div id="datesales_cal2"></div>
        </td>
    </tr>
    <tr>
        <td>Yayasan</td>
        <td>:</td>
        <td>
            <select class="form-control" tabindex="2" name="yayasan" id="yayasan" onchange="showKelas()">                
                <option value="<?php echo $valueComboYayasan;?>"><?php echo $labelComboYayasan;?></option>                
                <?php                  
                    foreach($yayasan_list_ as $yayasan){
                        //$selected = ($user_list->getUnitid()==$yayasan->getUnitid()) ? "selected" : "";
                ?>
                <option value="<?php echo $yayasan->getUnitid();?>"><?php echo $yayasan->getDescription();?></option>
                <?php
                    }                    
                ?>
            </select>
        </td>
    </tr>
    <tr>
        <td>Kelas</td>
        <td>:</td>
        <td>
            <div id="listKelas">
            <select class="form-control" tabindex="2" name="kelas" id="kelas" onchange="showKelompok()()">                     
                <option value="<?php echo $valueComboKelas;?>"><?php echo $labelComboKelas;?></option>
                <?php /*<?php
                  
                    foreach($kelas_list_ as $kelas){
                        //$selected = ($user_list->getShaffid()==$kelompok->getId()) ? "selected" : "";
                ?>
                <option value="<?php echo $kelas->getDepartmentid();?>" ><?php echo $kelas->getDescription();?></option>
                <?php
                    }                    
                ?>*/?>
            </select>
            </div>
        </td>
    </tr>
    <tr>
        <td>Kelompok</td>
        <td>:</td>
        <td>
            <div id="listKelompok">
            <select class="form-control" tabindex="2" name="kelompok" id="kelompok" onchange="showAnggota()">                     
                <option value="<?php echo $valueComboKelompok;?>"><?php echo $labelComboKelompok;?></option>                
                <?php /*<?php
                  
                    foreach($kelompok_list_ as $kelompok){
                        //$selected = ($user_list->getShaffid()==$kelompok->getId()) ? "selected" : "";
                ?>
                <option value="<?php echo $kelompok->getId();?>" ><?php echo $kelompok->getNama_shaff();?></option>
                <?php
                    }                    
                ?>*/?>
            </select>
            </div>
        </td>
    </tr>
    <tr>
        <td>Anggota</td>
        <td>:</td>
        <td>
            <div id="listAnggota">
            <select class="form-control" tabindex="2" name="anggota" id="anggota">  
                <option value="<?php echo $valueComboAnggota;?>"><?php echo $labelComboAnggota;?></option>
                <?php /*<?php
                    if($userDesc == "Administrator" || $userDesc == "Administrator Group"){
                ?>
                <option value="0">[Semua Anggota Group]</option>                
                <?php
                    }
                    foreach($m_anggota_list as $anggota){
                        $selected = ($user_list->getId()==$anggota->getId()) ? "selected" : "";
                ?>
                <option value="<?php echo $anggota->getId();?>" <?php echo $selected;?>><?php echo $anggota->getUsername();?></option>
                <?php
                    }                    
                ?>*/?>
            </select>
            </div>
        </td>
    </tr>
    <!--<tr>
        <td>Kelompok</td>
        <td>:</td>
        <td>
            <select class="form-control" tabindex="2" name="kelompok" id="kelompok" onchange="showAnggota()">     
                
                <option value="0">[ Semua Kelompok ]</option>                
                <?php
                  
                    foreach($kelompok_list_ as $kelompok){
                        //$selected = ($user_list->getShaffid()==$kelompok->getId()) ? "selected" : "";
                ?>
                <option value="<?php echo $kelompok->getId();?>" ><?php echo $kelompok->getNama_shaff();?></option>
                <?php
                    }                    
                ?>
            </select>
        </td>
    </tr>
    <tr>
        <td>Anggota</td>
        <td>:</td>
        <td>
            <div id="listAnggota">
            <select class="form-control" tabindex="2" name="anggota" id="anggota">     
                <?php
                    if(substr($userDesc,0,5) == "Admin"){
                ?>
                <option value="0">[ Semua Anggota ]</option>                
                <?php
                    }
                    foreach($m_anggota_list as $anggota){
                        $selected = ($user_list->getId()==$anggota->getId()) ? "selected" : "";
                ?>
                <option value="<?php echo $anggota->getId();?>" <?php echo $selected;?>><?php echo $anggota->getUsername();?></option>
                <?php
                    }                    
                ?>
            </select>
            </div>
        </td>
    </tr>-->
</table>
<br>
<p>
    <input type="button" class="btn BtnBlue" value="Lihat Data" onclick="resultReport()">
    <input type="button" class="btn BtnGreen" value="Export Data" onclick="exportReportExcell()">
</p>
<div>
    <p>Keterangan:</p>
    <?php
        foreach($m_aktifitas_list as $aktifitas){
    ?>   
    <span style="font-weight: bold; font-size: 15px">&raquo;</span><?php echo $aktifitas->getNama_aktifitas()." (".strtoupper($aktifitas->getSatuan_aktifitas()).")";?>&nbsp;
    <?php
        }
    ?>
</div>
<br>
<div id="resultreport" style="overflow: auto; width: 95%;height: 30%;"></div>
<br>
<br>