<div class="well active" id="fullpageadSJ">
    <div class="row">
        <div id="headertext"> 
            <h4>Username: <?php echo $name; ?></h4>
            <h5>Email: <?php echo $email; ?></h5>
            <h5>Bemutatkozás: <?php echo $intro; ?></h5>
            <h5>Regisztrált: <?php echo $regdate; ?></h5>
            <h5>Legutobb bejelentkezve: <?php echo $lastlogin; ?></h5>
            <form name="myform" action="/newmessage" method="GET">
<input type="hidden" name="Language" value="English">
<button type="submit">Privát üzenet küldése</button>
</form>
        </div>
    </div>

</div>