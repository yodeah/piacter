<div class="well active fullpageadSJ">
    <div class="row">
        <div id="headertext"> 
            <h2><?php echo $title; ?></h2>
            <h5><?php echo $date; ?></h5>

            <form action="/newbid" method="POST">
                <input type="number" name="newbid" placeholder="min <?php echo $placeholder; ?>">
                                <input type="hidden" name="adid" value="<?php echo $adid; ?>">
                <?php echo $auctionprice_ty; ?>
                <button type="submit">Új ajánlat</button>
            </form>
            
            <h5 <?php echo $this->raw($ishidden); ?>>Jelenlegi nyertes: <a <?php echo $this->raw($ishidden); ?> href="/profile/<?php echo $winner; ?>"><?php echo $winner; ?></a></h5>


            <h6>Mennyiség: <?php echo $quantity; ?> <?php echo $quantity_ty; ?></h6>
            <h6>Garancia: <?php echo $warranty; ?> <?php echo $warranty_ty; ?></h6>
        </div>

        <div id="headerimg">
            <img src="/upload/<?php echo $image; ?>" />
        </div>
    </div>

    <div class="row">
        <div id="contentisking">
            <p><?php echo $descr; ?></p>
        </div>
    </div>

    <div class="row">
        <h5>Feladás dátuma: <?php echo $date; ?></h5> 
        <h5>Érvényesség: <?php echo $availability; ?></h5> 
        <h5>Hirdető: <a href="/profile/<?php echo $owner; ?>"><?php echo $owner; ?></a></h5>
    </div>
</div>