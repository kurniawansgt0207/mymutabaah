<script type="text/javascript"> 
function deletedata(id, skip, search){ 
    var ask = confirm("Do you want to delete ID " + id + " ?");
    if (ask == true) {
        site = "index.php?model=master_anggota&action=deleteFormJQuery&skip=" + skip + "&search=" + search + "&id=" + id;
        target = "content";
        showMenu(target, site);
    }
}
function uploadData(){
    var site = "index.php?model=master_anggota&action=uploadData";
    var target = "header_list";
    showMenu(target, site);
}
function searchData() {
     var searchdata = document.getElementById("search").value;
     var cabang = document.getElementById('cabang_id').value;
     var ranting = document.getElementById('ranting_id').value;
     var grup = document.getElementById('group_id').value;
     var kelompok = document.getElementById('shaff_id').value;
     
     var site =  'index.php?model=master_anggota&action=showAllJQuery&search='+searchdata+"&cabangid="+cabang+"&rantingid="+ranting+
     "&grupid="+grup+"&kelompokid="+kelompok+"&limit=30";
     var target = "content";
     showMenu(target, site);
}
$(document).ready(function(){
    $('#search').keypress(function(e) {
            if(e.which == 13) {
                searchData();
            }
    });
});
</script>

<h1>Master Anggota</h1>
<div id="header_list">
    <table>
        <tr>
            <td>Yayasan</td>
            <td>
                <select name="cabang_id" id="cabang_id" class="form-control">
                    <option value="0">[Semua Yayasan]</option>
                    <?php
                        foreach($unit_list_ as $unit){
                            $selected = ($_REQUEST['cabangid']==$unit->getUnitid() || $user_list->getUnitid()) ? "selected" : "";
                    ?>
                    <option value="<?php echo $unit->getUnitid();?>" <?php echo $selected;?>><?php echo $unit->getDescription();?></option>
                    <?php
                        }
                    ?>
                </select>
            </td>
        </tr>
        <tr>
            <td>Kelas</td>
            <td>
                <select name="ranting_id" id="ranting_id" class="form-control">
                    <option value="0">[Semua Kelas]</option>
                    <?php
                        foreach($department_list_ as $department){
                            $selected = ($_REQUEST['rantingid']==$department->getDepartmentid() || $user_list->getDepartmentid()) ? "selected" : "";
                    ?>
                    <option value="<?php echo $department->getDepartmentid();?>" <?php echo $selected;?>><?php echo $department->getDescription();?></option>
                    <?php
                        }
                    ?>
                </select>
            </td>
        </tr>
        <tr>
            <td>Grup</td>
            <td>
                <select name="group_id" id="group_id" class="form-control">
                    <option value="0">[Semua Grup]</option>
                    <?php
                        foreach($group_list_ as $group){
                            $selected = ($_REQUEST['grupid']==$group->getId() || $groupID==$group->getId()) ? "selected" : "";
                    ?>
                    <option value="<?php echo $group->getId();?>" <?php echo $selected;?>><?php echo $group->getDescription();?></option>
                    <?php
                        }
                    ?>
                </select>
            </td>
        </tr>
        <tr>
            <td>Kelompok</td>
            <td>
                <select name="shaff_id" id="shaff_id" class="form-control">
                    <option value="0">[Semua Kelompok]</option>
                    <?php
                        foreach($shaff_list_ as $shaff){
                            $selected = ($_REQUEST['kelompokid']==$shaff->getId() || $user_list->getShaffid()) ? "selected" : "";
                    ?>
                    <option value="<?php echo $shaff->getId();?>" <?php echo $selected;?>><?php echo $shaff->getNama_shaff();?></option>
                    <?php
                        }
                    ?>
                </select>
            </td>
        </tr>
        <tr>
            <td>Nama Anggota</td>
            <td>
                <input type="text" class="form-control" name="search" id="search" placeholder="Nama Anggota" value="<?php echo $search ?>" size="40">
            </td>
        </tr>
        <tr>
            <td></td>
            <td>
                <input type="button" name="btnCari" class="btn btn-info" onclick="searchData()" value="Cari Data">
                <?php if($isadmin || $ispublic || $isentry){ ?>
                <input type="button" name="btnCari" class="btn btn-dropbox" onclick="showMenu('header_list', 'index.php?model=master_anggota&action=showFormJQuery')" value="Data Baru">
                <?php } ?>
            </td>
        </tr>
    </table>
</div>
<table width="95%" >
    <tr>
        <td align="left">
            <img alt="Move First"  src="./img/icon/icon_move_first.gif" style="cursor: pointer;" onclick="showMenu('content', 'index.php?model=master_anggota&action=showAllJQuery&search=<?php echo $search ?>&cabangid=<?php echo $cabang ?>&rantingid=<?php echo $ranting ?>&grupid=<?php echo $grup ?>&kelompokid=<?php echo $kelompok ?>');">
            <img alt="Move Previous" src="./img/icon/icon_move_prev.gif" style="cursor: pointer;" onclick="showMenu('content', 'index.php?model=master_anggota&action=showAllJQuery&skip=<?php echo $previous ?>&search=<?php echo $search ?>&cabangid=<?php echo $cabang ?>&rantingid=<?php echo $ranting ?>&grupid=<?php echo $grup ?>&kelompokid=<?php echo $kelompok ?>');">
             Page <?php echo $pageactive ?> / <?php echo $pagecount ?> 
            <img alt="Move Next" src="./img/icon/icon_move_next.gif" style="cursor: pointer;" onclick="showMenu('content', 'index.php?model=master_anggota&action=showAllJQuery&skip=<?php echo $next ?>&search=<?php echo $search ?>&cabangid=<?php echo $cabang ?>&rantingid=<?php echo $ranting ?>&grupid=<?php echo $grup ?>&kelompokid=<?php echo $kelompok ?>');" >
            <img alt="Move Last" src="./img/icon/icon_move_last.gif" style="cursor: pointer;" onclick="showMenu('content', 'index.php?model=master_anggota&action=showAllJQuery&skip=<?php echo $last ?>&search=<?php echo $search ?>&cabangid=<?php echo $cabang ?>&rantingid=<?php echo $ranting ?>&grupid=<?php echo $grup ?>&kelompokid=<?php echo $kelompok ?>');">
            <a href="#" onclick="uploadData()">Upload Data</a>
            <a href="index.php?model=master_anggota&action=printdata&search=<?php echo $search ?>" target="_"><img src="./images/icon_print.png"/></a>
        </td>
    </tr>
</table>
<div style="overflow: auto; width: 95%;">
<table border="1"  cellpadding="2" style="border-collapse: collapse;" width="95%">
    <tr>
        <th class="textBold">ID</th>
        <th class="textBold">Nama Anggota</th>
        <th class="textBold">Yayasan</th>
        <th class="textBold">Kelas</th>
        <th class="textBold">Grup</th>
        <th class="textBold">Kelompok</th>
        <th class="textBold">Username</th>
        <th class="textBold">Password</th>
        <td class="textBold" align="center">#</td>
    </tr>
    <?php
    $no = ($pageactive==1) ? ($skip+1) : $skip;
    if ($master_anggota_list != "") { 
        foreach($master_anggota_list as $master_anggota){
            $pi = $no + 1;
            $bg = ($pi%2 != 0) ? "#E1EDF4" : "#F0F0F0";
            
            $master_cabang = new master_unit();
            $master_cabangCtrl = new master_unitController($master_cabang, $this->dbh);
            $cabang = $master_cabangCtrl->showData($master_anggota->getCabang_id());
            
            $master_ranting = new master_department();
            $master_rantingCtrl = new master_departmentController($master_ranting, $this->dbh);
            $ranting = $master_rantingCtrl->showData($master_anggota->getRanting_id());
            
            $master_shaff = new master_shaff();
            $master_shaffCtrl = new master_shaffController($master_shaff, $this->dbh);
            $shaff = $master_shaffCtrl->showData($master_anggota->getShaff());
            
            $master_group = new master_group();
            $master_groupCtrl = new master_groupController($master_group, $this->dbh);
            $group = $master_groupCtrl->showDataById($master_anggota->getGroup_id());
            
            $master_user = new master_user();
            $master_userCtrl = new master_userController($master_user, $this->dbh);
            $m_user = $master_userCtrl->showDataByIdAnggota($master_anggota->getId());
    ?>
    <tr bgcolor="<?php echo $bg;?>">
        <td><a href='#' onclick="showMenu('header_list', 'index.php?model=master_anggota&action=showDetailJQuery&id=<?php echo $master_anggota->getId();?>')"><?php echo $no;?></a> </td>
        <td><?php echo $master_anggota->getNama_anggota();?></td>
        <td><?php echo $cabang->getDescription();?></td>
        <td><?php echo $ranting->getDescription();?></td>
        <td><?php echo str_replace("Admin Group ", "", $group->getDescription());?></td>
        <td><?php echo $shaff->getNama_shaff();?></td>
        <td><b><?php echo $m_user->getUser();?></b></td>
        <td><b><?php echo $m_user->getDefaultpassword();?></b></td>
        <td align="center" class="combobox">
        <?php if($isadmin || $ispublic || $isupdate){ ?>
        <a href='#' onclick="showMenu('header_list', 'index.php?model=master_anggota&action=showFormJQuery&id=<?php echo $master_anggota->getid();?>&skip=<?php echo $skip ?>&search=<?php echo $search ?>')">[Edit]</a> | 
        <?php } ?>
        <?php if($isadmin || $ispublic || $isdelete){ ?>
        <a href='#' onclick="deletedata('<?php echo $master_anggota->getId()?>','<?php echo $skip ?>','<?php echo $search ?>')">[Delete]</a>
        <?php } ?>
        </td>
    </tr>
    <?php
            $no++;
        }
    }
    ?>
</table>
</div>
<br>