<script language="javascript" type="text/javascript">
        (function() {
            $('form').ajaxForm({
                beforeSubmit: function() {
                },
                complete: function(xhr) {
                        alert($.trim(xhr.responseText));
                        showMenu('content', 'index.php?model=aktifitas_bulanan_detail&action=showAllJQuery&skip=<?php echo $skip ?>&search=<?php echo $search ?>');
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


<form name="frmaktifitas_bulanan_detail" id="frmaktifitas_bulanan_detail" method="post" action="index.php?model=aktifitas_bulanan_detail&action=saveFormJQuery">
    <table >
        <tr> 
            <td class="textBold">Id</td> 
            <td><input type="text" style="text-align: right;" onkeypress="validate(event);"  name="id" id="id" value="<?php echo $aktifitas_bulanan_detail_->getId();?>" size="5" ReadOnly  ></td>
        </tr>

        <tr> 
            <td class="textBold">Aktifitas_id</td> 
            <td><input type="text" style="text-align: right;" onkeypress="validate(event);"  name="aktifitas_id" id="aktifitas_id" value="<?php echo $aktifitas_bulanan_detail_->getAktifitas_id();?>" size="5"   ></td>
        </tr>

        <tr> 
            <td class="textBold">Kode_aktifitas</td> 
            <td><input type="text"  name="kode_aktifitas" id="kode_aktifitas" value="<?php echo $aktifitas_bulanan_detail_->getKode_aktifitas();?>" size="20"   ></td>
        </tr>

        <tr> 
            <td class="textBold">Nama_aktifitas</td> 
            <td><input type="text"  name="nama_aktifitas" id="nama_aktifitas" value="<?php echo $aktifitas_bulanan_detail_->getNama_aktifitas();?>" size="40"   ></td>
        </tr>

        <tr> 
            <td class="textBold">Value_aktifitas</td> 
            <td><input type="text" style="text-align: right;" onkeypress="validate(event);"  name="currvalue_aktifitas" id="currvalue_aktifitas" value="<?php echo $aktifitas_bulanan_detail_->getValue_aktifitas();?>" size="10,2"   ></td>
                <script>
                       $(document).ready(function(){
                             $('#currvalue_aktifitas').formatCurrency({ symbol:'',roundToDecimalPlace: 0, });
                             $('#currvalue_aktifitas').blur(function(){
                                  $('#currvalue_aktifitas').formatCurrency({ symbol:'',roundToDecimalPlace: 0, });
                                  $('#value_aktifitas').val($('#currvalue_aktifitas').val().replace(/,/g,''));
                              });
                       });
                 </script>
            <input type="hidden"  name="value_aktifitas" id="value_aktifitas" value="<?php echo $aktifitas_bulanan_detail_->getValue_aktifitas();?>" size="10,2"   ></td>
        </tr>

        <tr> 
            <td class="textBold">Satuan_aktifitas</td> 
            <td><input type="text"  name="satuan_aktifitas" id="satuan_aktifitas" value="<?php echo $aktifitas_bulanan_detail_->getSatuan_aktifitas();?>" size="10"   ></td>
        </tr>

        <tr> 
            <td class="textBold">Catatan_aktifitas</td> 
            <td><textarea rows="10" cols="50" name="catatan_aktifitas" id="catatan_aktifitas"><?php echo $aktifitas_bulanan_detail_->getCatatan_aktifitas();?></textarea>
        <script>$(function(){ 
                   $('#catatan_aktifitas').htmlarea({css: 'jHtmlArea/style/jHtmlArea.Editor.css'});
                });
        </script></td>
        </tr>

        <tr> 
            <td class="textBold">Created_date</td> 
            <td><input type="text"  name="created_date" id="created_date" value="<?php echo $aktifitas_bulanan_detail_->getCreated_date();?>" size="10"   ></td>
        </tr>

        <tr> 
            <td class="textBold">Created_by</td> 
            <td><input type="text"  name="created_by" id="created_by" value="<?php echo $aktifitas_bulanan_detail_->getCreated_by();?>" size="40"   ></td>
        </tr>

        <tr> 
            <td class="textBold">Updated_date</td> 
            <td><input type="text"  name="updated_date" id="updated_date" value="<?php echo $aktifitas_bulanan_detail_->getUpdated_date();?>" size="10"   ></td>
        </tr>

        <tr> 
            <td class="textBold">Updated_by</td> 
            <td><input type="text"  name="updated_by" id="updated_by" value="<?php echo $aktifitas_bulanan_detail_->getUpdated_by();?>" size="40"   ></td>
        </tr>

        <tr> 
            <td class="textBold">Ip_address</td> 
            <td><input type="text"  name="ip_address" id="ip_address" value="<?php echo $aktifitas_bulanan_detail_->getIp_address();?>" size="40"   ></td>
        </tr>


        <tr>
            <td></td>
            <td><input type="submit" name="submit" value="Submit" class="btn btn-danger btn-sm" ></td>
        </tr>
    </table>
</form>

<br>
<br>
