<?php if($this->config->get('tg_hera_cp_language') == '1'): ?>
  <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
    <div id="language">
      <?php foreach ($languages as $language) { ?>
      &nbsp;<img src="image/flags/<?php echo $language['image']; ?>" alt="<?php echo $language['name']; ?>" title="<?php echo $language['name']; ?>" onclick="$('input[name=\'language_code\']').attr('value', '<?php echo $language['code']; ?>').submit(); $(this).parent().parent().submit();" />
      <?php } ?>
      <input type="hidden" name="language_code" value="" />
      <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
    </div>
  </form>
 <?php endif; ?>