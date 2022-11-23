<script>
    (function() {
        $('form').ajaxForm({
            complete: function(xhr) {
                alert("Data Berhasil Di Upload")
                showMenu('content','index.php?model=master_anggota&action=showAllJQuery');
            }
        });
    })();
    
    jQuery(function(){
        $("#frmUploadAnggota").submit(function(){
            document.getElementById("uploadbtn").disabled = true;
            document.getElementById("uploadbtn").value = "Uploading Anggota .... ";
            $('form').ajaxForm({
                complete: function(xhr) {
                    document.getElementById("uploadbtn").disabled = false;
                    document.getElementById("uploadbtn").value = "Upload Anggota .... ";
                    alert("Data Berhasil Di Upload")
                    showMenu('content','index.php?model=master_anggota&action=showAllJQuery');
                }
            });
            return false;
         });
    });
        
    function cancelForm(){
        showMenu('content','index.php?model=master_anggota&action=showAllJQuery');
    }
</script>
<form name="frmUploadAnggota" id="frmUploadAnggota" method="POST" enctype="multipart/form-data" action="index.php?model=master_anggota&action=importAnggota">
<table>
    <tr> 
        <td class="textBold">Yayasan</td> 
        <td>
            <select name="cabang_id" id="cabang_id" class="form-control">
                <?php
                    foreach($master_unit_list_ as $master_unit){
                        $selected = ($master_unit->getUnitid()==$cabang_) ? "selected" : "";
                ?>
                <option value="<?php echo $master_unit->getUnitid();?>" <?php echo $selected;?>><?php echo $master_unit->getDescription();?></option>
                <?php
                    }
                ?>
            </select>
        </td>
    </tr>
    <tr>
        <td>Upload File Excel</td>
        <td><input type="file" name="akuFile" id="akuFile" class="form-control" accept=".xls"></td>
    </tr>
    <tr>
        <td></td>
        <td>
            <input type="submit" name="uploadbtn" id="uploadbtn" value="Submit Upload" class="btn btn-orange btn-sm">
            <input type="button" name="batal" value="Batal" class="btn btn-danger btn-sm" onclick="cancelForm()">
        </td>
    </tr>
</table>
</form>