<script language="javascript" type="text/javascript">    
    jQuery(function(){
        $("#frmmaster_setting_aktifitas").submit(function(){
            var post_data = $(this).serialize();
            var form_action = $(this).attr("action");
            var form_method = $(this).attr("method");
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
                    showMenu('content', 'index.php?model=master_setting_aktifitas&action=showFormJQuery');
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
    function showSetting(){            
        var unitid = document.getElementById('unitid').value;
        showMenu('content', 'index.php?model=master_setting_aktifitas&action=showFormJQuery&unitid='+unitid);
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
    width: 140px;
    left: 28px;
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
    left: -30px;
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
<br>
<form name="frmmaster_setting_aktifitas" id="frmmaster_setting_aktifitas" method="post" action="index.php?model=master_setting_aktifitas&action=saveFormJQuery">
    <table >
        <input type="hidden" style="text-align: right;" onkeypress="validate(event);"  name="id" id="id" value="<?php echo $master_setting_aktifitas_->getId();?>" size="10" ReadOnly  >
        <tr> 
            <td class="textBold">Yayasan</td> 
            <td>                
                <select class="form-control" name="unitid" id="unitid" onchange="showSetting();">
                    <option value="">[Pilih Yayasan]</option>
                    <?php
                        foreach($unit_list_ as $unit){
                            $selected = ($_REQUEST['unitid']==$unit->getUnitid())?"selected":"";
                    ?>
                    <option value="<?php echo $unit->getUnitid();?>" <?php echo $selected;?>><?php echo $unit->getDescription();?></option>
                    <?php
                        }
                    ?>
                </select>
            </td>
        </tr>

        <tr> 
            <td class="textBold">Aktifitas</td> 
            <td>                
                <table>                    
                    <?php
                        $i=1;
                        foreach($aktifitas_list_ as $aktifitas){
                            $checked = "";
                            $activated = "";
                            foreach ($setting_aktifitas_list_ as $setting_aktifitas){
                                if($setting_aktifitas->getAktifitas_id()==$aktifitas->getId()){
                                    $checked = "checked";                                    
                                    $activated = $setting_aktifitas->getIs_active();
                                    break;
                                }                                
                            }
                            if(($i % 2) == 1){
                                echo "</tr>";
                            }                            
                    ?>
                    <td>
                        <label class="checkbox-label">
                        <input type="checkbox" name="aktifitas_id[]" id="aktifitas_id_<?php echo $aktifitas->getId();?>" value="<?php echo $aktifitas->getId();?>" <?php echo $checked;?>>
                        <span class="checkbox-custom rectangular"></span>
                            <?php echo $aktifitas->getNama_aktifitas();?>
                        </label>
                    </td>
                    <td>
                        <select class="form-control" name="is_active[]" id="is_active_<?php echo $aktifitas->getId();?>">
                            <option value="1" <?php if($activated==1) echo "selcted";?>>Aktif</option>
                            <option value="0" <?php if($activated==0) echo "checked";?>>Tidak Aktif</option>
                        </select>                            
                    </td>
                    <?php
                            $i++;
                        }
                    ?>
                </table>
            </td>
        </tr>
        <tr>
            <td><input type="hidden" name="jmlAktifitas" id="jmlAktifitas" value="<?php echo count($aktifitas_list_);?>"></td>
            <td><input type="submit" name="btnSubmit" id="btnSubmit" value="Submit" class="btn btn-danger btn-sm" ></td>
        </tr>
    </table>
</form>

<br>
<br>