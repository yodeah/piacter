<div class="well active fullpageadSJ">
    <div class="row">
        <div id="headertext"> 
            <h2><?php echo $title; ?></h2>
            <h5><?php echo $date; ?></h5>
            <h6>Ár: <?php echo $price; ?> <?php echo $price_ty; ?></h6>
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
