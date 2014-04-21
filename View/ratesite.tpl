<div class="jumbotron">
    <form action="/ratecheck" method="POST">
        <input class="rateradio" type="radio" name="rate" value="1">1 csillagos
        <input class="rateradio" type="radio" name="rate" value="2">2 csillagos
        <input class="rateradio" type="radio" name="rate" value="3">3 csillagos
        <input class="rateradio" type="radio" name="rate" value="4">4 csillagos
        <input class="rateradio" type="radio" name="rate" value="5">5 csillagos
        <input type="hidden" name="itemid" value="{{ @itemid}}">
        <button value="submit">értékelem</button> 
    </form>
</div>