<script language="javascript" type="text/javascript">        
        jQuery(function(){
            $("#frmaktifitas_bulanan").submit(function(){
                var post_data = $(this).serialize();
                var form_action = $(this).attr("action");
                var form_method = $(this).attr("method");
                if(document.getElementById('user_fullname').value==""){
                    alert("Silahkan Pilih Anggota Group.");
                    return false;
                }
                document.getElementById("btnSubmit").disabled = true;
                document.getElementById("btnSubmit").value = "Sedang Menyimpan...";
                $.ajax({
                    type : form_method,
                    url : form_action, 
                    cache: false, 
                    data : post_data,
                     success : function(x){
                        document.getElementById("btnSubmit").disabled = false;
                        document.getElementById("btnSubmit").value = "Simpan";
                        alert(x);
                        showMenu('content', 'index.php?model=mutabaah_syahriyah&action=showFormJQuery');
                     }, 
                     error : function(){
                        alert("Error");
                     }
                });
                return false;
             });
        });
        function validate(evt){
            var e = evt || window.event;
            var key = e.keyCode || e.which;
            if((key <48 || key >57) && !(key ==8 || key ==9 || key ==13  || key ==37  || key ==39 || key ==46)  ){
                e.returnValue = false;
                if(e.preventDefault)e.preventDefault();
            }
        }
        function setValue(id){
            var pilih = document.getElementById('aktifitas_'+id);
            
            if(pilih.checked==true){
                document.getElementById('lblCheck_'+id).innerHTML="Ya";
                document.getElementById('value_aktifitas_'+id).value = 1;
            } else {
                document.getElementById('lblCheck_'+id).innerHTML="Tidak";
                document.getElementById('value_aktifitas_'+id).value = 0;
            }
        }
        function showDataBulan(){
            var bulanSlc = document.getElementById('bulan').value;
            var tahunSlc = document.getElementById('tahun').value;
            var anggotaSlc = document.getElementById('user_fullname').value;
            
            showMenu('content', 'index.php?model=mutabaah_syahriyah&action=showFormJQuery&mop='+bulanSlc+'&yop='+tahunSlc+'&anggota='+anggotaSlc);
        }
</script>
<style>
@import url('https://fonts.googleapis.com/css?family=Calibri:100,300,400,500,700,900');

/* Styling Checkbox Starts */
.checkbox-label {
    display: block;
    position: relative;
    margin: auto;
    cursor: pointer;
    font-family: 'Calibri', sans-serif;
    font-size: 15px;
    line-height: 24px;
    height: 24px;
    width: 90px;
    clear: both;
}

.checkbox-label input {
    position: absolute;
    opacity: 0;
    cursor: pointer;
}

.checkbox-label .checkbox-custom {
    position: absolute;
    top: 0px;
    left: 0px;
    height: 24px;
    width: 24px;
    background-color: transparent;
    border-radius: 5px;
    transition: all 0.3s ease-out;
    -webkit-transition: all 0.3s ease-out;
    -moz-transition: all 0.3s ease-out;
    -ms-transition: all 0.3s ease-out;
    -o-transition: all 0.3s ease-out;
    border: 1px solid #000000;
}

.checkbox-label input:checked ~ .checkbox-custom {
    background-color: #caf2a2;
    border-radius: 5px;
    -webkit-transform: rotate(0deg) scale(1);
    -ms-transform: rotate(0deg) scale(1);
    transform: rotate(0deg) scale(1);
    opacity:1;
    border: 1px solid #009BFF;
}

.checkbox-label .checkbox-custom::after {
    position: absolute;
    content: "";
    left: 12px;
    top: 12px;
    height: 0px;
    width: 0px;
    border-radius: 5px;
    border: solid #009BFF;
    border-width: 0 3px 3px 0;
    -webkit-transform: rotate(0deg) scale(0);
    -ms-transform: rotate(0deg) scale(0);
    transform: rotate(0deg) scale(0);
    opacity:1;
    transition: all 0.3s ease-out;
    -webkit-transition: all 0.3s ease-out;
    -moz-transition: all 0.3s ease-out;
    -ms-transition: all 0.3s ease-out;
    -o-transition: all 0.3s ease-out;
}

.checkbox-label input:checked ~ .checkbox-custom::after {
  -webkit-transform: rotate(45deg) scale(1);
  -ms-transform: rotate(45deg) scale(1);
  transform: rotate(45deg) scale(1);
  opacity:1;
  left: 8px;
  top: 3px;
  width: 6px;
  height: 12px;
  border: solid #009BFF;
  border-width: 0 2px 2px 0;
  background-color: transparent;
  border-radius: 0;
}

/* For Ripple Effect */
.checkbox-label .checkbox-custom::before {
    position: absolute;
    content: "";
    left: 10px;
    top: 10px;
    width: 0px;
    height: 0px;
    border-radius: 5px;
    border: 2px solid #FFFFFF;
    -webkit-transform: scale(0);
    -ms-transform: scale(0);
    transform: scale(0);    
}

.checkbox-label input:checked ~ .checkbox-custom::before {
    left: -3px;
    top: -3px;
    width: 24px;
    height: 24px;
    border-radius: 5px;
    -webkit-transform: scale(3);
    -ms-transform: scale(3);
    transform: scale(3);
    opacity:0;
    z-index: 999;
    transition: all 0.3s ease-out;
    -webkit-transition: all 0.3s ease-out;
    -moz-transition: all 0.3s ease-out;
    -ms-transition: all 0.3s ease-out;
    -o-transition: all 0.3s ease-out;
}

</style>
<?php
    $userFullname = $user_list->getUsername();
    $userDesc = $user_list->getDescription();    
    $userUnit = $user_list->getUnitid();
    $userSubUnit = $user_list->getDepartmentid();
    $userLevel = $user_detail_list->getGroupcode();
    $userLevelID = ($group_list_->getId()==1 || $group_list_->getId()==3 || $group_list_->getId()==6) ? 0 : $group_list_->getId();
    $userShaff = $user_list->getShaffid();
    $readonly = ($userLevel=="Admin" || $userLevel=="Admin_Group"  || $userLevel=="Admin_Dakwah" || $userLevel=="Admin_Pembinaan")?"":"readonly";    
?>
<div style="margin-top: -50px;">
<form name="frmaktifitas_bulanan" id="frmaktifitas_bulanan" method="post" action="index.php?model=mutabaah_syahriyah&action=saveFormJQuery">
    <table border="0" width="95%" align="center" style="border-collapse: collapse; border-radius: 20px 20px 20px 20px">
        <input type="hidden" style="text-align: right;" onkeypress="validate(event);"  name="id" id="id" value="<?php echo $aktifitas_bulanan_->getId();?>" size="5" ReadOnly  >
        <div class="form-group">
            <tr>
                <td height="45" valign="middle" style="background-color: #E0E0E0;border-radius: 10px 0px 0px 0px;padding-left: 10px; padding-top: 20px"><label>BULAN</label></td>
                <td style="background-color: #edebe6; padding-right: 10px; border-radius: 0px 10px 0px 0px; padding-top: 10px">
                    <?php
                        $blnSlc = isset($_REQUEST['mop'])?$_REQUEST['mop']:date("n");
                    ?>
                    <select class="form-control" name="bulan" id="bulan" onchange="showDataBulan()">
                        <option value="1" <?php if($blnSlc=='1') echo "selected";?>>Januari</option>
                        <option value="2" <?php if($blnSlc=='2') echo "selected";?>>Februari</option>
                        <option value="3" <?php if($blnSlc=='3') echo "selected";?>>Maret</option>
                        <option value="4" <?php if($blnSlc=='4') echo "selected";?>>April</option>
                        <option value="5" <?php if($blnSlc=='5') echo "selected";?>>Mei</option>
                        <option value="6" <?php if($blnSlc=='6') echo "selected";?>>Juni</option>
                        <option value="7" <?php if($blnSlc=='7') echo "selected";?>>Juli</option>
                        <option value="8" <?php if($blnSlc=='8') echo "selected";?>>Agustus</option>
                        <option value="9" <?php if($blnSlc=='9') echo "selected";?>>September</option>
                        <option value="10" <?php if($blnSlc=='10') echo "selected";?>>Oktober</option>
                        <option value="11" <?php if($blnSlc=='11') echo "selected";?>>November</option>
                        <option value="12" <?php if($blnSlc=='12') echo "selected";?>>Desember</option>
                    </select>
                </td>
            </tr>
        </div>
        <div class="form-group">
            <tr>
                <td height="45" valign="middle" style="background-color: #E0E0E0;padding-left: 10px; padding-top: 20px"><label>TAHUN</label></td>
                <td style="background-color: #edebe6; padding-right: 10px; padding-top: 10px">
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
        </div>
        <div class="form-group">
            <tr>
                <td height="45" valign="middle" style="background-color: #E0E0E0;padding-left: 10px; padding-top: 20px"><label>NAMA ANGGOTA</label></td>
                <td style="background-color: #edebe6;padding-right: 10px; padding-top: 10px">
                    <?php
                        if($userLevel=="User"){
                    ?>                                    
                    <input type="text" class="form-control" name="user_fullname" id="user_fullname" value="<?php echo $user_list->getUsername();?>" size="20" <?php echo $readonly;?>>                
                    <?php
                        } else {                            
                            $anggota_list_ = $master_userCtrl->showDataAnggotaByGroupSubGroupNotAdmin($userFullname,$userUnit,$userSubUnit,$userLevelID,$userShaff);
                    ?>
                    <select class="form-control" name="user_fullname" id="user_fullname" onchange="showDataBulan()">                
                        <option value="">[Pilih Anggota Group]</option>
                        <?php                            
                            
                            foreach($anggota_list_ as $anggota){
                                $selected = ($anggota->getUsername()==$userName)?"selected":"";
                        ?>
                        <option value="<?php echo $anggota->getUsername();?>" <?php echo $selected;?>><?php echo $anggota->getUsername();?></option>
                        <?php
                            }                    
                        ?>
                    </select>                    
                    <?php 
                        }
                    ?>
                </td>                
            </tr>
        </div>
        <br>
        <?php
            $i=0;
            $flag = "";
            $lblCheck = "";
            $valCheck = 0;
            $idDetail = 0;
            $note = "";
            foreach($aktifitas_list_ as $aktifitas){
                
                if($aktifitas_bulanan_->getId()>0){
                    $aktifitas_bulanan_detail = new aktifitas_bulanan_detail();
                    $aktifitas_bulanan_detailCtrl = new aktifitas_bulanan_detailController($aktifitas_bulanan_detail, $this->dbh);
                    $aktifitas_detail_ = $aktifitas_bulanan_detailCtrl->showDataByIdAktifitasByKdAktifitas($aktifitas_bulanan_->getId(),$aktifitas->getKode_aktifitas());
                    $idDetail = $aktifitas_detail_->getId();
                    if($aktifitas->getType_aktifitas()==1){
                        $flag = ($aktifitas_detail_->getValue_aktifitas()>0)?"checked":"";
                        $note = "";
                    } else {
                        $flag = number_format($aktifitas_detail_->getValue_aktifitas(),1);                        
                        $note = ($aktifitas_detail_->getCatatan_aktifitas()!="") ? $aktifitas_detail_->getCatatan_aktifitas():"";
                    }
                }
        ?>
        <div class="form-group">
            <tr><td height="45" valign="middle" style="background-color: #E0E0E0;padding-left: 10px; padding-top: 20px"><label><?php echo strtoupper($aktifitas->getNama_aktifitas());?></label></td>    
            <input type="hidden" name="id_detail[]" id="id_detail" value="<?php echo $idDetail;?>">
            <input type="hidden" name="kode_aktifitas[]" id="kode_aktifitas" value="<?php echo $aktifitas->getKode_aktifitas();?>">
            <input type="hidden" name="nama_aktifitas[]" id="nama_aktifitas" value="<?php echo $aktifitas->getNama_aktifitas();?>">
                <?php
                    if($aktifitas->getType_aktifitas()==1){
                        $lblCheck = ($flag=="checked")?"Ya":"Tidak";
                        $valCheck = ($flag=="checked")?1:0;
                ?>
                <td align="center" style="background-color: #edebe6; padding-right: 10px; padding-top: 10px">
                    <label class="checkbox-label">
                    <input type="checkbox" <?php echo $flag;?> name="aktifitas[]" id="aktifitas_<?php echo $aktifitas->getId();?>" onclick="setValue('<?php echo $aktifitas->getId();?>')">
                    <input type="hidden" name="value_aktifitas[]" id="value_aktifitas_<?php echo $aktifitas->getId();?>" value="<?php echo $valCheck;?>"> 
                    <span class="checkbox-custom rectangular"></span>
                    <span id="lblCheck_<?php echo $aktifitas->getId();?>"><?php echo $lblCheck;?></span>
                    </label>
                </td>
                <?php
                    } else {
                ?>
                <td style="background-color: #edebe6; padding-right: 10px; padding-top: 10px">
                    <input type="tel" class="form-control" pattern="[0-9]+([\.][0-9]+)?" value="<?php echo $flag;?>" onkeypress="validate(event);" placeholder="<?php echo strtoupper($aktifitas->getPlaceholder());?>" style="text-align:right" name="value_aktifitas[]" id="value_aktifitas_<?php echo $aktifitas->getId();?>">
                </td>
                <?php
                    }                    
                ?>
            <input type="hidden" name="satuan_aktifitas[]" id="satuan_aktifitas" value="<?php echo $aktifitas->getSatuan_aktifitas();?>">
            </tr>
            <?php
                if($aktifitas->getCatatan()==1){
            ?>
            <tr>
                <td height="45" valign="middle" style="background-color: #E0E0E0;padding-left: 10px; padding-top: 20px">&nbsp;</td>            
                <td style="background-color: #edebe6; padding-right: 10px; padding-top: 10px">                    
                    <textarea class="form-control" name="catatan_aktifitas[<?php echo $i;?>]" id="catatan_aktifitas_<?php echo $aktifitas->getId();?>" placeholder="<?php echo strtoupper($aktifitas->getPlaceholder_catatan());?>"><?php echo $note; ?></textarea>
                </td>
            </tr>
            <?php
                }
            ?>
        </div>
        <?php
                $i++;
            }
        ?>
        <input type="hidden" name="jmlData" id="jmlData" value="<?php echo count($aktifitas_list_);?>">
        <div class="form-group">            
            <tr>
                <!--<td style="background-color: #edebe6;border-radius: 0px 0px 0px 10px; padding-left: 10px; padding-top: 20px"></td>-->
                <td align="center" colspan="2" style="background-color: #edebe6;border-radius: 0px 0px 10px 10px; padding-top: 10px; padding-right: 10px; padding-bottom: 10px">
                    <input type="submit" name="btnSubmit" id="btnSubmit" value="Simpan" class="btn btn-primary" >
                </td>
            </tr>
        </div>
    </table>
</form>
</div>
<br><br>