<script language="javascript" type="text/javascript">
        (function() {
            $('form').ajaxForm({
                beforeSubmit: function() {
                },
                complete: function(xhr) {
                        alert($.trim(xhr.responseText));
                        showMenu('content', 'index.php?model=aktifitas_bulanan&action=showAllJQuery&skip=<?php echo $skip ?>&search=<?php echo $search ?>');
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


<form name="frmaktifitas_bulanan" id="frmaktifitas_bulanan" method="post" action="index.php?model=aktifitas_bulanan&action=saveFormJQuery">
    <table >
        <tr> 
            <td class="textBold">Id</td> 
            <td><input type="text" style="text-align: right;" onkeypress="validate(event);"  name="id" id="id" value="<?php echo $aktifitas_bulanan_->getId();?>" size="5" ReadOnly  ></td>
        </tr>

        <tr> 
            <td class="textBold">Yop</td> 
            <td><input type="text" style="text-align: right;" onkeypress="validate(event);"  name="yop" id="yop" value="<?php echo $aktifitas_bulanan_->getYop();?>" size="4"   ></td>
        </tr>

        <tr> 
            <td class="textBold">Mop</td> 
            <td><input type="text" style="text-align: right;" onkeypress="validate(event);"  name="mop" id="mop" value="<?php echo $aktifitas_bulanan_->getMop();?>" size="2"   ></td>
        </tr>

        <tr> 
            <td class="textBold">User_id</td> 
            <td><input type="text" style="text-align: right;" onkeypress="validate(event);"  name="user_id" id="user_id" value="<?php echo $aktifitas_bulanan_->getUser_id();?>" size="5"   ></td>
        </tr>

        <tr> 
            <td class="textBold">User_fullname</td> 
            <td><input type="text"  name="user_fullname" id="user_fullname" value="<?php echo $aktifitas_bulanan_->getUser_fullname();?>" size="40"   ></td>
        </tr>

        <tr> 
            <td class="textBold">Created_date</td> 
            <td><input type="text"  name="created_date" id="created_date" value="<?php echo $aktifitas_bulanan_->getCreated_date();?>" size="10"   ></td>
        </tr>

        <tr> 
            <td class="textBold">Created_by</td> 
            <td><input type="text"  name="created_by" id="created_by" value="<?php echo $aktifitas_bulanan_->getCreated_by();?>" size="40"   ></td>
        </tr>

        <tr> 
            <td class="textBold">Updated_date</td> 
            <td><input type="text"  name="updated_date" id="updated_date" value="<?php echo $aktifitas_bulanan_->getUpdated_date();?>" size="10"   ></td>
        </tr>

        <tr> 
            <td class="textBold">Updated_by</td> 
            <td><input type="text"  name="updated_by" id="updated_by" value="<?php echo $aktifitas_bulanan_->getUpdated_by();?>" size="40"   ></td>
        </tr>

        <tr> 
            <td class="textBold">Ip_address</td> 
            <td><input type="text"  name="ip_address" id="ip_address" value="<?php echo $aktifitas_bulanan_->getIp_address();?>" size="40"   ></td>
        </tr>


        <tr>
            <td></td>
            <td><input type="submit" name="submit" value="Submit" class="btn btn-danger btn-sm" ></td>
        </tr>
    </table>
</form>

<br>
<br>
