<div class="well active fullpageadSJ" id="replycommentSJ">
    <div class="row">
        <p> <a href="/profile/<?php echo $owner; ?>"><?php echo $owner; ?></a> valasza a <a href="/comment/<?php echo $reply; ?>"><?php echo $reply; ?></a> számú hozzászólásra </p><p><?php echo $date; ?></p>
        <h5><?php echo $comment; ?>.</h5>
        <form name="myform" action="/replycomment" method="GET">
            <input type="hidden" name="adid" value="<?php echo $adid; ?>">
            <input type="hidden" name="commentid" value="<?php echo $commentid; ?>">
            <button type="submit">válasz</button>
        </form>
        <form name="myform" action="/newcomment" method="GET">
            <input type="hidden" name="adid" value="<?php echo $adid; ?>">
            <button type="submit">Új hozzászólás</button>
        </form>
    </div>
</div>