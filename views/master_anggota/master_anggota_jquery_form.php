<script language="javascript" type="text/javascript">
        (function() {
            $('form').ajaxForm({
                beforeSubmit: function() {
                },
                complete: function(xhr) {
                        alert($.trim(xhr.responseText));
                        showMenu('content', 'index.php?model=master_anggota&action=showAllJQuery&skip=<?php echo $skip ?>&search=<?php echo $search ?>');
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
        function batal(){
            showMenu('contentmenu', 'index.php?model=master_module&action=showMenu&id=10');
        }
</script>

<br>


<form name="frmmaster_anggota" id="frmmaster_anggota" method="post" action="index.php?model=master_anggota&action=saveFormJQuery">
    <table >
        <input type="hidden" style="text-align: right;" onkeypress="validate(event);"  name="id" id="id" value="<?php echo $master_anggota_->getId();?>" size="5" ReadOnly  >
        <tr> 
            <td class="textBold">Nama Anggota</td> 
            <td><input type="text" class="form-control" name="nama_anggota" id="nama_anggota" value="<?php echo $master_anggota_->getNama_anggota();?>" size="50"   ></td>
        </tr>

        <tr> 
            <td class="textBold">Yayasan</td> 
            <td>
                <select name="cabang_id" id="cabang_id" class="form-control">
                <option value="0">[Pilih Yayasan]</option>
                <?php 
                    foreach ($master_unit_list as $master_unit) {
                        $selected =($master_anggota_->getCabang_id()==$master_unit ->getUnitid()) ? "selected" : "";
                        ?>
                    <option value="<?php echo $master_unit ->getUnitid() ?>" <?php echo $selected; ?>>
                      <?php  echo $master_unit ->getDescription() ?>
                    </option>
                    <?php
                      }
                ?>
              </select>
            </td>
        </tr> 
        <tr> 
            <td class="textBold">Kelas</td> 
            <td>
                <select name='ranting_id' id='ranting_id' class="form-control">
                    <option value="0">
                        [Pilih Kelas]
                    </option>
                <?php
                    foreach ($master_department_list as $master_department){
                        $selected =($master_anggota_->getRanting_id()==$master_department->getDepartmentid())? "selected":"";
                ?>
                    <option value="<?php echo $master_department-> getDepartmentid()?>" <?php echo $selected; ?>>
                        <?php echo $master_department-> getDescription() ?>
                    </option>
                <?php
                    }
                ?>
                </select>                    
            </td>
        </tr>
        <tr> 
            <td class="textBold">Grup Anggota</td> 
            <td>
                <input type="radio" class="form-group" name="group_id" id="group_id" value="4" <?php if($master_anggota_->getGroup_id()==4) echo "checked";?>>&nbsp;Dakwah & Kaderisasi &nbsp;
                <input type="radio" class="form-group" name="group_id" id="group_id" value="5" <?php if($master_anggota_->getGroup_id()==5) echo "checked";?>>&nbsp;Pembinaan&nbsp;
            </td>
        </tr>
        <tr>
            <td class="textBold">Kelompok</td> 
            <td>
                <select name='shaff' id='shaff' class="form-control">
                    <option value="0">
                        [Pilih Kelompok]
                    </option>
                    <?php
                        foreach ($master_shaff_list as $master_shaff){
                            $selected =($master_anggota_->getShaff()==$master_shaff->getId())? "selected":"";
                    ?>
                        <option value="<?php echo $master_shaff->getId();?>" <?php echo $selected; ?>>
                            <?php echo $master_shaff->getNama_shaff();?>
                        </option>
                    <?php
                        }
                    ?>
                </select>
            </td>
        </tr>
        <tr>
            <td></td>
            <td>
                <input type="submit" name="submit" value="Simpan" class="btn btn-foursquare" >
                <input type="button" name="cancel" value="Batal" class="btn btn-orange" onclick="batal();">
            </td>
        </tr>
    </table>
</form>

<br>
<br>
