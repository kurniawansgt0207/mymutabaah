<script language="javascript" type="text/javascript">
        (function() {
            $('form').ajaxForm({
                beforeSubmit: function() {
                },
                complete: function(xhr) {
                        alert($.trim(xhr.responseText));
                        showMenu('content', 'index.php?model=master_aktifitas&action=showAllJQuery&skip=<?php echo $skip ?>&search=<?php echo $search ?>');
                }
             });
        })();
        function validate(evt){
            var e = evt || window.event;
            var key = e.keyCode || e.which;
            if((key <48 || key >57) && !(key ==8 || key ==9 || key ==13  || key ==37  || key ==39 || key ==46)  ){
                e.returnValue = false;
                if(e.preventDefault)e.preventDefault();
            }
        }
</script>

<br>


<form name="frmmaster_aktifitas" id="frmmaster_aktifitas" method="post" action="index.php?model=master_aktifitas&action=saveFormJQuery">
    <table >
        <tr> 
            <td class="textBold">Id</td> 
            <td><input type="text" style="text-align: right;" onkeypress="validate(event);"  name="id" id="id" value="<?php echo $master_aktifitas_->getId();?>" size="5" ReadOnly  ></td>
        </tr>

        <tr> 
            <td class="textBold">Kode Aktifitas</td> 
            <td><input type="text"  name="kode_aktifitas" id="kode_aktifitas" value="<?php echo $master_aktifitas_->getKode_aktifitas();?>" size="10"   ></td>
        </tr>

        <tr> 
            <td class="textBold">Nama Aktifitas</td> 
            <td><input type="text"  name="nama_aktifitas" id="nama_aktifitas" value="<?php echo $master_aktifitas_->getNama_aktifitas();?>" size="40"   ></td>
        </tr>

        <tr> 
            <td class="textBold">Satuan Aktifitas</td> 
            <td>                
                <select name="satuan_aktifitas" id="satuan_aktifitas">
                    <option value="-">--Pilih Satuan Aktifitas--</option>
                    <option value="kali" <?php if($master_aktifitas_->getSatuan_aktifitas()=="kali") echo "selected";?>>Kali</option>
                    <option value="rupiah" <?php if($master_aktifitas_->getSatuan_aktifitas()=="rupiah") echo "selected";?>>Rupiah</option>
                    <option value="juz" <?php if($master_aktifitas_->getSatuan_aktifitas()=="juz") echo "selected";?>>Juz</option>
                    <option value="ayat" <?php if($master_aktifitas_->getSatuan_aktifitas()=="ayat") echo "selected";?>>Ayat</option>
                    <option value="halaman" <?php if($master_aktifitas_->getSatuan_aktifitas()=="halaman") echo "selected";?>>Halaman</option>
                </select>
            </td>
        </tr>

        <tr> 
            <td class="textBold">Type Aktifitas</td> 
            <td>                
                <input type="radio" name="type_aktifitas" id="type_aktifitas" value="1" <?php if($master_aktifitas_->getType_aktifitas()==1) echo "checked";?>>&nbsp;Checklist&nbsp;
                <input type="radio" name="type_aktifitas" id="type_aktifitas" value="2" <?php if($master_aktifitas_->getType_aktifitas()==2) echo "checked";?>>&nbsp;Textbox&nbsp;
            </td>
        </tr>         
        
        <tr> 
            <td class="textBold">Peruntukan Aktifitas</td> 
            <td>                
                <input type="radio" name="peruntukan" id="peruntukan" value="daily" <?php if($master_aktifitas_->getPeruntukan()=="daily") echo "checked";?>>&nbsp;Harian&nbsp;
                <input type="radio" name="peruntukan" id="peruntukan" value="monthly" <?php if($master_aktifitas_->getPeruntukan()=="monthly") echo "checked";?>>&nbsp;Bulanan&nbsp;
            </td>
        </tr>
        
        <tr> 
            <td class="textBold">Catatan Aktifitas</td> 
            <td>                
                <input type="radio" name="catatan" id="catatan" value="1" <?php if($master_aktifitas_->getCatatan()==1) echo "checked";?>>&nbsp;Ya&nbsp;
                <input type="radio" name="catatan" id="catatan" value="0" <?php if($master_aktifitas_->getCatatan()==0) echo "checked";?>>&nbsp;Tidak&nbsp;
            </td>
        </tr>
        
        <tr> 
            <td class="textBold">Placeholder Catatan</td> 
            <td><input type="text"  name="placeholder_catatan" id="placeholder_catatan" value="<?php echo $master_aktifitas_->getPlaceholder_catatan();?>" size="40"   ></td>
        </tr>
        

        <tr> 
            <td class="textBold">Placeholder</td> 
            <td><input type="text"  name="placeholder" id="placeholder" value="<?php echo $master_aktifitas_->getPlaceholder();?>" size="40"   ></td>
        </tr>
        
        <tr> 
            <td class="textBold">Active</td> 
            <td>                
                <input type="radio" name="active" id="active" value="1" <?php if($master_aktifitas_->getActive()==1) echo "checked";?>>&nbsp;Aktif&nbsp;
                <input type="radio" name="active" id="active" value="0" <?php if($master_aktifitas_->getActive()==0) echo "checked";?>>&nbsp;Tidak Aktif&nbsp;
            </td>
        </tr>

        <tr> 
            <td class="textBold">Urutan</td> 
            <td>                
                <input type="text" name="visorder" id="visorder" value="<?php echo $master_aktifitas_->getVisorder();?>" size="5">
            </td>
        </tr>
        
        <tr>
            <td></td>
            <td><input type="submit" name="submit" value="Submit" class="btn btn-danger btn-sm" ></td>
        </tr>
    </table>
</form>

<br>
<br>
