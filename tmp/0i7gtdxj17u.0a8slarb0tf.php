<form class="form-login form-wrapper form-medium" role="form" action="upload_message" method="POST" enctype="multipart/form-data">
    <h3 class="title-divider"><span>Új üzenet</span></h3>
    <div class="form-group">
        <label class="sr-only" for="title">Tárgy</label>
        <input required pattern=".{5,100}" required title="5 töl 100 karakter" type="text" class="form-control" name="title" id="title" placeholder="Tárgy">
    </div>
    <div class="form-group">
        <label class="sr-only" for="description">Üzenet szövege</label>
        <textarea required pattern=".{5,500}" required title="5 töl 500 karakter" name="message" rows="12" class="form-control placeholder" id="description" placeholder="Üzenet szövege"></textarea>
    </div>
    <input type="hidden" name="touser" value="<?php echo $touser; ?>">
    <button class="btn btn-primary" type="submit">Üzenet küldése</button>
</form>
