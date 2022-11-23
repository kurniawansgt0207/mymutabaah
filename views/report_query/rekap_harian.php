
<script type="text/javascript" >
      $(function() {
        $('#datesales1').datepicker({
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
        var parameter1 = document.getElementById('datesales1').value;        
        var parameter2 = document.getElementById('anggota').value;        
        var parameter3 = document.getElementById('idgroup').value;
        var parameter4 = document.getElementById('idsubgroup').value;
        var parameter5 = document.getElementById('kelompok').value;
        var id = (parameter2 != 0) ? "4" : "1";
        var cmpny = (parameter2 != 0) ? "by_Anggota" : "All_Anggota";
        var fileName = "Laporan_Rekap_Aktifitas_Harian_"+cmpny+"_"+parameter1;
        
        var page = "index.php?model=report_query&action=showExportTableExcell&id="+id+"&parameter1=" + parameter1 + "&parameter2=" + parameter2
        + "&parameter3=" + parameter3 + "&parameter4=" + parameter4 + "&parameter5=" + parameter5 + "&filename=" + fileName;        
        window.open(page);        
    }
    
    function resultReport(){        
        var parameter1 = document.getElementById('datesales1').value;
        var parameter2 = document.getElementById('anggota').value;
        var parameter3 = document.getElementById('idgroup').value;
        var parameter4 = document.getElementById('idsubgroup').value;
        var parameter5 = document.getElementById('kelompok').value;
        
        var id = (parameter2 != 0) ? "4" : "1";
        var page = "index.php?model=report_query&action=showGenerateTable&id="+id+"&parameter1=" + parameter1 + "&parameter2=" + parameter2
        + "&parameter3=" + parameter3 + "&parameter4=" + parameter4 + "&parameter5=" + parameter5;
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
    $m_aktifitas_list = $master_aktifitasCtrl->showDataAllActivityByPeruntukanByUnit("daily",$userUnit);
    
    $master_anggota = new master_anggota();
    $master_anggotaCtrl = new master_anggotaController($master_anggota, $this->dbh);
    //$m_anggota_list = $master_anggotaCtrl->showAnggotaByNameGroupSubGroup($userFullname,$userGroup,$userSubGroup);
    
    $m_anggota_list = $master_userCtrl->showDataUserByGroupSubgroup($userFullname,$userUnit,$userSubUnit,$userLevelID,$userShaff);
?>
<h1>Rekap Harian</h1>
<input type="hidden" name="idgroup" id="idgroup" value="<?php echo $userUnit;?>">
<input type="hidden" name="idsubgroup" id="idsubgroup" value="<?php echo $userSubUnit;?>">
<table>
    <tr>
        <td>Periode</td>
        <td>:</td>
        <td>
            <input type="text" class="form-control" name="datesales1" id="datesales1" value="<?php echo date("Y-m-d");?>" size="10">
            <div id="datesales_cal" ></div>                               
        </td>
    </tr>
    <tr>
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
    </tr>
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