<script language="javascript" type="text/javascript">
        (function() {
            $('form').ajaxForm({
                beforeSubmit: function() {
                },
                complete: function(xhr) {
                        alert($.trim(xhr.responseText));
                        showMenu('content', 'index.php?model=aktifitas_kajian&action=showFormJQuery');
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
<?php
date_default_timezone_set('Asia/Jakarta');
?>
<form name="frmaktifitas_kajian" id="frmaktifitas_kajian" method="post" action="index.php?model=aktifitas_kajian&action=saveFormJQuery">
    <table border="0" width="95%" align="center" style="border-collapse: collapse; border-radius: 20px 20px 20px 20px">
        <div class="form-group">
            <!--<tr> 
                <td><label>ID</label></td> 
                <td><input type="text" class="form-control" style="text-align: right;" onkeypress="validate(event);"  name="id" id="id" value="<?php echo $aktifitas_kajian_->getId();?>" size="5" ReadOnly  ></td>
            </tr>-->

            <tr> 
                <td><label>TANGGAL</label></td> 
                <td><input type="text" class="form-control" name="tgl_kajian" id="tgl_kajian" value="<?php echo ($aktifitas_kajian_->getId()>0) ? $aktifitas_kajian_->getTgl_kajian() : date("Y-m-d");?>" size="10" readonly >
                <script>
                    $(function() {
                        $('#tgl_kajian').datepicker({
                            dateFormat: 'yy-mm-dd',
                            yearRange: '-100:+20',
                            changeYear: true,
                            changeMonth: true
                        });
                    });
                </script>
                </td> 
            </tr>

            <tr> 
                <td><label>TEMPAT</label></td> 
                <td><input type="text" class="form-control" name="lokasi_kajian" id="lokasi_kajian" value="<?php echo $aktifitas_kajian_->getLokasi_kajian();?>" size="60"   ></td>
            </tr>
            
            <tr> 
                <td><label>KELOMPOK</label></td> 
                <td>
                    <select name='kelompok_kajian' id='kelompok_kajian' class="form-control">
                        <option value="0">
                            [Pilih Kelompok]
                        </option>
                        <?php
                            foreach ($master_shaff_list as $master_shaff){
                                $selected =($aktifitas_kajian_->getKelompok_kajian()==$master_shaff->getId())? "selected":"";
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
                <td><label>TIPE KELOMPOK</label></td> 
                <td>
                    <input type="radio" name="tipe_kelompok" id="tipe_kelompok" value="1" <?php if($aktifitas_kajian_->getTipe_kelompok()==1) echo "checked";?>>&nbsp;Orang Tua&nbsp;&nbsp;
                    <input type="radio" name="tipe_kelompok" id="tipe_kelompok" value="2" <?php if($aktifitas_kajian_->getTipe_kelompok()==2 || $aktifitas_kajian_->getId()=="") echo "checked";?>>&nbsp;Pemuda
                </td>
            </tr>
            
            <tr> 
                <td><label>JENJANG</label></td> 
                <td>
                    <select name='level_kelompok' id='level_kelompok' class="form-control">
                        <option value="">[Pilih Jenjang]</option>                        
                        <option value="1">Dasar</option>
                        <option value="2">Menengah</option>
                    </select>
                </td>
            </tr>
            
            <tr> 
                <td><label>JAM MULAI</label></td> 
                <td>                    
                    <select class="form-control" name="jam_mulai" id="jam_mulai">
                        <?php
                            $hourNow = date("H");
                            $hourSlc = date("H",strtotime($aktifitas_kajian_->getWaktu_mulai_kajian()));
                            for($a=0;$a<=23;$a++){
                                $hour = strlen($a)<2 ? "0".$a: $a;
                                $selected = ($hour == $hourNow || $hour==$hourSlc) ? "selected" : "";
                        ?>
                        <option value="<?php echo $hour;?>" <?php echo $selected;?>><?php echo $hour;?></option>
                        <?php
                            }
                        ?>
                    </select>
                    <select class="form-control" name="menit_mulai" id="menit_mulai">
                        <?php
                            $minuteNow = date("i");
                            $minuteSlc = date("i",strtotime($aktifitas_kajian_->getWaktu_mulai_kajian()));
                            for($a=0;$a<=23;$a++){
                                $minute = strlen($a)<2 ? "0".$a: $a;
                                $selected = ($minute == $minuteNow || $minute == $minuteSlc) ? "selected" : "";
                        ?>
                        <option value="<?php echo $minute;?>" <?php echo $selected;?>><?php echo $minute;?></option>
                        <?php
                            }
                        ?>
                    </select>
                </td>
            </tr>

            <tr> 
                <td><label>JAM SELESAI</label></td> 
                <td>                    
                    <select class="form-control" name="jam_selesai" id="jam_selesai">
                        <?php
                            $hourNow = date("H");
                            $hourSlc = date("H",strtotime($aktifitas_kajian_->getWaktu_mulai_kajian()));
                            for($a=0;$a<=23;$a++){
                                $hour = strlen($a)<2 ? "0".($a): ($a);
                                $selected = ($hour == $hourNow || $hour==$hourSlc) ? "selected" : "";
                        ?>
                        <option value="<?php echo ($hour+3);?>" <?php echo $selected;?>><?php echo ($hour+3);?></option>
                        <?php
                            }
                        ?>
                    </select>
                    <select class="form-control" name="menit_selesai" id="menit_selesai">
                        <?php
                            $minuteNow = date("i");
                            $minuteSlc = date("i",strtotime($aktifitas_kajian_->getWaktu_mulai_kajian()));
                            for($a=0;$a<=23;$a++){
                                $minute = strlen($a)<2 ? "0".$a: $a;
                                $selected = ($minute == $minuteNow || $minute == $minuteSlc) ? "selected" : "";
                        ?>
                        <option value="<?php echo $minute;?>" <?php echo $selected;?>><?php echo $minute;?></option>
                        <?php
                            }
                        ?>
                    </select>
                </td>
            </tr>

            <tr> 
                <td><label>PEMATERI</label></td> 
                <td><input type="text" class="form-control" name="pengisi_kajian" id="pengisi_kajian" value="<?php echo $aktifitas_kajian_->getPengisi_kajian();?>" size="60"   ></td>
            </tr>

            <tr> 
                <td><label>TEMA MATERI</label></td> 
                <td>
                    <select name="materi_kajian" id="materi_kajian" class="form-control">
                        <option value="">[Pilih Tema Materi]</option>
                        <?php
                            foreach($m_materi_ as $materi){
                        ?>
                        <option value="<?php echo $materi->getId();?>">-- <?php echo "(".$materi->getlevel().") ".$materi->getAlias_materi();?> --</option>
                        <?php
                            }
                        ?>
                    </select>
                </td>
            </tr>
            
            <tr> 
                <td><label>RANGKUMAN MATERI</label></td> 
                <td><textarea rows="5" class="form-control" cols="90" name="rangkuman_materi" id="rangkuman_materi"><?php echo $aktifitas_kajian_->getMateri_kajian();?></textarea></td>
            </tr>

            <tr> 
                <td><label>JUMLAH PESERTA HADIR</label></td> 
                <td><input type="tel" class="form-control" pattern="[0-9]+" style="text-align: right;" onkeypress="validate(event);"  name="jumlah_peserta_kajian" id="jumlah_peserta_kajian" value="<?php echo $aktifitas_kajian_->getJumlah_peserta_kajian();?>" size="5"   ></td>
            </tr>
            
            <tr> 
                <td><label>JUMLAH PESERTA TIDAK HADIR</label></td> 
                <td><input type="tel" class="form-control" pattern="[0-9]+" style="text-align: right;" onkeypress="validate(event);"  name="jumlah_peserta_tidak_hadir" id="jumlah_peserta_tidak_hadir" value="<?php echo $aktifitas_kajian_->getJumlah_peserta_tidak_hadir();?>" size="5"   ></td>
            </tr>       

            <tr>
                <td></td>
                <td><input type="submit" name="submit" value="Simpan Data" class="btn btn-facebook" ></td>
            </tr>
        </div>
    </table>
</form>
<br><br>