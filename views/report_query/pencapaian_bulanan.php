
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
    function exportReportExcell(){
        var err = "";
        var parameter1 = document.getElementById('bulan').value;        //param bulan
        var parameter2 = document.getElementById('tahun').value;        //param tahun
        var parameter3 = document.getElementById('tipe1').checked;        //param tipe
        var parameter4 = document.getElementById('yayasan').value;      //param yayasan
        var parameter5 = document.getElementById('kelas').value;   //param kelas
        var parameter6 = document.getElementById('kelompok').value;     //param kelompok
        var parameter7 = document.getElementById('level').value;     //param level        
        var id = (parameter3 == true) ? "8" : "9";
        var cmpny = (parameter3 != 0) ? "Per_Kelompok" : "Per_Kelas";
        var fileName = "Laporan_Pencapaian_Bulanan_"+cmpny+"_"+parameter1+"_"+parameter2;
        
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
        
        if(err == ""){
            var page = "index.php?model=report_query&action=showExportTableExcell&id="+id+"&parameter1=" + parameter1 + "&parameter2=" + parameter2        
            + "&parameter3=" + parameter3 + "&parameter4=" + parameter4 + "&parameter5=" + parameter5 + "&parameter6=" + parameter6 + "&parameter7=" + parameter7 
            + "&filename=" + fileName;        
            window.open(page);        
        }
    }
    
    function resultReport(){        
        var err = "";        
        var parameter1 = document.getElementById('bulan').value;        //param bulan
        var parameter2 = document.getElementById('tahun').value;        //param tahun
        var parameter3 = document.getElementById('tipe1').checked;        //param tipe
        var parameter4 = document.getElementById('yayasan').value;      //param yayasan
        var parameter5 = document.getElementById('kelas').value;   //param kelas
        var parameter6 = document.getElementById('kelompok').value;     //param kelompok
        var parameter7 = document.getElementById('level').value;     //param level        
        var id = (parameter3 == true) ? "8" : "9";        
        
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
        
        if(err == ""){
            var page = "index.php?model=report_query&action=showGenerateTable&id="+id+"&parameter1=" + parameter1 + "&parameter2=" + parameter2        
            + "&parameter4=" + parameter4 + "&parameter5=" + parameter5 + "&parameter6=" + parameter6 + "&parameter7=" + parameter7;
            showMenu("resultreport", page);
        }
    }   
    
    function setLevel(id){
        var tipe = document.getElementById('tipe1').checked;
        if(tipe==true){
            document.getElementById('level').disabled = true;
            document.getElementById('kelas').disabled = false;
            document.getElementById('kelompok').disabled = false;
        } else {
            document.getElementById('level').disabled = false;
            document.getElementById('kelas').disabled = true;
            document.getElementById('kelompok').disabled = true;
        }
    }
</script>
<?php        
    $userDesc = $user_list->getDescription();
    $userUnit = $user_list->getUnitid(); //yayasan
    $userSubUnit = $user_list->getDepartmentid(); //kelas
    $userLevel = $user_detail_list->getGroupcode();
    $userLevelID = $group_list_->getId();
    $userShaff = $user_list->getShaffid(); //kelompok
    if($userDesc == "Administrator" || $userDesc == "Administrator Group"){
        $userFullname = "";
    } else {
        $userFullname = $user_list->getUsername();
    }
    
    $labelComboYayasan = "[ Semua Yayasan ]";    
    $valueComboYayasan = 0;
    $labelComboKelas = "[ Semua Kelas ]";    
    $valueComboKelas = 0;
    if(substr($userDesc, 0, 5) == "Admin" && $userUnit > 0){
        $labelComboYayasan = "[ Pilih Yayasan ]";
        $valueComboYayasan = "";
        $labelComboKelas = "[ Pilih Kelas ]";    
        $valueComboKelas = "";
    }
    
    $master_aktifitas = new master_aktifitas();
    $master_aktifitasCtrl = new master_aktifitasController($master_aktifitas, $this->dbh);
    $m_aktifitas_list = $master_aktifitasCtrl->showDataAllActivityByPeruntukanByUnit("0",$userUnit);
    
    $master_anggota = new master_anggota();
    $master_anggotaCtrl = new master_anggotaController($master_anggota, $this->dbh);
    //$m_anggota_list = $master_anggotaCtrl->showAnggotaByNameGroupSubGroup($userFullname,$userGroup,$userSubGroup);
    
    $m_anggota_list = $master_userCtrl->showDataUserByGroupSubgroup($userFullname,$userUnit,$userSubUnit,$userLevelID,$userShaff);
?>
<h1>Pencapaian Bulanan</h1>
<input type="hidden" name="idreport" id="idreport" value="<?php echo $idReport;?>">
<input type="hidden" name="idgroup" id="idgroup" value="<?php echo $userUnit;?>">
<input type="hidden" name="idsubgroup" id="idsubgroup" value="<?php echo $userSubUnit;?>">
<table>
    <tr>
        <td>Bulan</td>
        <td>:</td>
        <td>
            <?php
                $blnSlc = isset($_REQUEST['mop'])?$_REQUEST['mop']:date("n");
            ?>
            <select class="form-control" name="bulan" id="bulan" onchange="showDataBulan()">
                <option value="01" <?php if($blnSlc=='01') echo "selected";?>>Januari</option>
                <option value="02" <?php if($blnSlc=='02') echo "selected";?>>Februari</option>
                <option value="03" <?php if($blnSlc=='03') echo "selected";?>>Maret</option>
                <option value="04" <?php if($blnSlc=='04') echo "selected";?>>April</option>
                <option value="05" <?php if($blnSlc=='05') echo "selected";?>>Mei</option>
                <option value="06" <?php if($blnSlc=='06') echo "selected";?>>Juni</option>
                <option value="07" <?php if($blnSlc=='07') echo "selected";?>>Juli</option>
                <option value="08" <?php if($blnSlc=='08') echo "selected";?>>Agustus</option>
                <option value="09" <?php if($blnSlc=='09') echo "selected";?>>September</option>
                <option value="10" <?php if($blnSlc=='10') echo "selected";?>>Oktober</option>
                <option value="11" <?php if($blnSlc=='11') echo "selected";?>>November</option>
                <option value="12" <?php if($blnSlc=='12') echo "selected";?>>Desember</option>
            </select>
        </td>
    </tr>
    <tr>
        <td>Tahun</td>
        <td>:</td>
        <td>            
            <select class="form-control" name="tahun" id="tahun" onchange="showDataBulan()">
                <?php
                    $yopCurrent = date("Y");
                    $yop1 = $yopCurrent-1;
                    $yop2 = $yopCurrent+1;
                    $thnSlc = isset($_REQUEST['yop'])?$_REQUEST['yop']:$yopCurrent;
                    for($year=($yop1);$year<$yop2;$year++){
                        $selected = ($thnSlc==$year)?"selected":"";
                ?>
                <option value="<?php echo $year;?>" <?php echo $selected;?>><?php echo $year;?></option>
                <?php
                    }
                ?>
            </select>
        </td>
    </tr>
    <tr>
        <td>Tipe Laporan</td>
        <td>:</td>
        <td>
            <input type="radio" name="tipe" id="tipe1" value="1" onclick="setLevel('1')">&nbsp;Per Kelompok&nbsp;
            <input type="radio" name="tipe" id="tipe2" value="2" onclick="setLevel('2')">&nbsp;Per Kelas
            
        </td>
    </tr>
    <tr>
        <td>Level</td>
        <td>:</td>
        <td>
            <select class="form-control" tabindex="2" name="level" id="level">
                <option value="0">[ Semua Level ]</option>
                <option value="A">[ Pengurus ]</option>
                <option value="B">[ Anggota ]</option>
            </select>
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
            <select class="form-control" tabindex="2" name="kelompok" id="kelompok">
                <option value="0">[ Semua Kelompok ]</option>                
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
    
</table>
<br>
<p>
    <input type="button" class="btn BtnBlue" value="Lihat Data" onclick="resultReport()">
    <input type="button" class="btn BtnGreen" value="Export Data" onclick="exportReportExcell()">
</p>
<br>
<div id="resultreport" style="overflow: auto; width: 95%;height: 30%;"></div>
<br>
<br>