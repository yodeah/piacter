<div class="well active fullpageadSJ" id="replycommentSJ">
    <div class="row">
        <p> <a href="/profile/{{ @owner}}">{{ @owner}}</a> valasza a <a href="/comment/{{ @reply}}">{{ @reply}}</a> számú hozzászólásra </p><p>{{ @date}}</p>
        <h5>{{ @comment}}.</h5>
        <form name="myform" action="/replycomment" method="GET">
            <input type="hidden" name="adid" value="{{ @adid}}">
            <input type="hidden" name="commentid" value="{{ @commentid}}">
            <button type="submit">válasz</button>
        </form>
        <form name="myform" action="/newcomment" method="GET">
            <input type="hidden" name="adid" value="{{ @adid}}">
            <button type="submit">Új hozzászólás</button>
        </form>
    </div>
</div>