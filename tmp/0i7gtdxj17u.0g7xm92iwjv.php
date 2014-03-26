<?php echo $error; ?>
<form class="form-login form-wrapper form-medium" role="form" action="upload_comment" method="POST" enctype="multipart/form-data">
    <h3 class="title-divider"><span>Új hozzászólás</span></h3>
    <div class="form-group">
        <label class="sr-only" for="description">hozzászólás szövege</label>
        <textarea required pattern=".{5,500}" required title="5 töl 500 karakter" name="comment" rows="12" class="form-control placeholder" id="description" placeholder="Hozzászólás"></textarea>
    </div>
    <input type="hidden" name="toad" value="<?php echo $toad; ?>">
        <input type="hidden" name="reply" value="<?php echo $reply; ?>">
    <button class="btn btn-primary" type="submit">Üzenet küldése</button>
</form>
