
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
    function showAnggota(){
        var kelompok = document.getElementById('kelompok').value;
        var ranting = document.getElementById('idsubgroup').value;
        var page = "index.php?model=master_user&action=showAnggotaKelompok&ranting="+ranting+"&kelompok="+kelompok;
        showMenu('listAnggota',page);
    }
    function exportReportExcell(){
        var parameter1 = document.getElementById('bulan').value;
        var parameter2 = document.getElementById('tahun').value;
        var parameter3 = document.getElementById('anggota').value;        
        var parameter4 = document.getElementById('idgroup').value;
        var parameter5 = document.getElementById('idsubgroup').value;
        var parameter6 = document.getElementById('kelompok').value;
        var id = (parameter3 != 0) ? "7" : "7";
        var cmpny = (parameter3 != 0) ? "by_Anggota" : "All Anggota";
        var fileName = "Laporan_Rekap_Aktifitas_Bulanan_"+cmpny+"_"+parameter1+"_"+parameter2;
        
        var page = "index.php?model=report_query&action=showExportTableExcell&id="+id+"&parameter1=" + parameter1 + "&parameter2=" + parameter2
        + "&parameter3=" + parameter3 + "&parameter4=" + parameter4 + "&parameter5=" + parameter5 + "&parameter6=" + parameter6 + "&filename=" + fileName;        
        window.open(page);        
    }
    
    function resultReport(){        
        var parameter1 = document.getElementById('bulan').value;
        var parameter2 = document.getElementById('tahun').value;
        var parameter3 = document.getElementById('anggota').value; 
        var parameter4 = document.getElementById('idgroup').value;
        var parameter5 = document.getElementById('idsubgroup').value;
        var parameter6 = document.getElementById('kelompok').value;
        var id = (parameter3 != 0) ? "7" : "7";
        
        var page = "index.php?model=report_query&action=showGenerateTable&id="+id+"&parameter1=" + parameter1 + "&parameter2=" + parameter2        
        + "&parameter3=" + parameter3 + "&parameter4=" + parameter4 + "&parameter5=" + parameter5 + "&parameter6=" + parameter6;
        showMenu("resultreport", page);
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
    
    $master_aktifitas = new master_aktifitas();
    $master_aktifitasCtrl = new master_aktifitasController($master_aktifitas, $this->dbh);
    $m_aktifitas_list = $master_aktifitasCtrl->showDataAllActivePeruntukan("0");
    
    $master_anggota = new master_anggota();
    $master_anggotaCtrl = new master_anggotaController($master_anggota, $this->dbh);
    //$m_anggota_list = $master_anggotaCtrl->showAnggotaByNameGroupSubGroup($userFullname,$userGroup,$userSubGroup);
    
    $m_anggota_list = $master_userCtrl->showDataUserByGroupSubgroup($userFullname,$userUnit,$userSubUnit,$userLevelID,$userShaff);
?>
<h1>Rekap Hafalan Quran</h1>
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
        <td>Kelompok</td>
        <td>:</td>
        <td>
            <select class="form-control" tabindex="2" name="kelompok" id="kelompok" onchange="showAnggota()">     
                
                <option value="0">[Semua Kelompok Group]</option>                
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
                ?>
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
<div id="resultreport" style="overflow: auto; width: 95%;height: 30%;"></div>
<br>