<div class="well active" id="fullpageadSJ">
    <div class="row">
        <div id="headertext"> 
            <h4>Username: {{ @name}}</h4>
            <h5>Email: {{ @email}}</h5>
            <h5>Bemutatkozás: {{ @intro}}</h5>
            <h5>Regisztrált: {{ @regdate}}</h5>
            <h5>Legutobb bejelentkezve: {{ @lastlogin}}</h5>
            <form name="myform" action="/newmessage" method="GET">
<input type="hidden" name="user" value="{{ @name}}">
<button type="submit">Privát üzenet küldése</button>
</form>
        </div>
    </div>
</div>