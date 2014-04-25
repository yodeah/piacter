<form class="form-login form-wrapper form-medium" role="form" action="special_process" method="POST" enctype="multipart/form-data">
    <h3 class="title-divider"><span>Új hirdetés</span></h3>
    <h5>Leírás</h5>
    <div class="form-group">
        <label class="sr-only" for="title">Hirdetés címe</label>
        <input required pattern=".{5,100}" required title="5 töl 100 karakter" type="text" class="form-control" name="title" id="title" placeholder="Hirdetés címe">
    </div>
    <div class="form-group">
        <label class="sr-only" for="description">Hirdetés szövege</label>
        <textarea required pattern=".{5,500}" required title="5 töl 500 karakter" name="description" rows="12" class="form-control placeholder" id="description" placeholder="Hirdetés szövege"></textarea>
    </div>


    <h5><input type="checkbox" name="fixpricecb" checked id="fixpricecb">Fix ár</h5><p>Ezt rögtön le tudják ütni a felhasználók és ennyiért elvinni</p>          
    <div class="form-group">
        <div class="row">
            <label class="sr-only" for="title">Irányár</label>

            <input class="quantity70 form-control" id="fixpriceinput" required pattern=".{1,20}" required title="1 töl 20 karakter" type="number" name="fixprice" id="price" placeholder="Fix ár">
            <select name="fixprice ty" class="quantity30 form-control" required >
                <option value="0">Ft</option>
                <option value="1">Usd</option>
                <option value="2">Eur</option>
            </select>
        </div>
    </div>



    <h5><input type="checkbox" name="auctioncb" id="auctioncb">Licit</h5><p>Itt a minimál árról indul a licit és a felhasználóknak a minimunlicittel vagy nagyobb összeggel kell növelni a licitet </p>          
    <div class="form-group">
        <div class="row">
            <label class="sr-only" for="title">Irányár</label>
            <div class="quantity70">
                <input class="quantity50 form-control"  id="auctioninput1" pattern=".{1,20}"  title="1 töl 20 karakter" type="number" name="auctionstart" id="price" placeholder="Minimálár">
                <input class="quantity50 form-control"  id="auctioninput2" pattern=".{1,20}"  title="1 töl 20 karakter" type="number" name="auctionstep" id="price" placeholder="Licitlépcső">
            </div>
            <select name="auctionprice ty" class="quantity30 form-control" required >
                <option value="0">Ft</option>
                <option value="1">Usd</option>
                <option value="2">Eur</option>
            </select>
        </div>
    </div>

    <h5>Mennyiség</h5>

    <div class="form-group">
        <div class="row">
            <label class="sr-only" for="title">Mennyiség</label>
            <input class="quantity70 form-control" required pattern=".{1,20}" required title="1 töl 20 karakter" type="number" name="quantity" id="quantity" placeholder="Mennyiség">
            <select name="quantity ty" class="quantity30 form-control" required >
                <option value="0">Darab</option>
                <option value="1">Kiló</option>
                <option value="2">Gramm</option>
            </select>
        </div>
    </div>
        <h5>Garancia időtartama</h5>

    <div class="form-group">
        <div class="row">
            <select name="warranty ty" class="quantity30 form-control" required >
                <option value="0">Év</option>
                <option value="1">Hónap</option>
                <option value="2">Hét</option>
            </select>
            <label class="sr-only" for="title">Garancia időtartam</label>
            <input class="quantity70 form-control" required pattern=".{1,20}" required title="1 töl 20 karakter" type="number" name="warranty" id="title" placeholder="Garancia időtartalma">
        </div>
    </div>
                <h5>Hirdetés időtartama</h5>
    <div class="form-group">
        <div class="row">
            <label class="sr-only" for="title">Lejárat</label>
            <input class="quantity70 form-control" required pattern=".{1,20}" required title="1 töl 20 karakter" type="number" name="availability" id="price" placeholder="Érvényesség">
            <select name="availability ty" class="quantity30 form-control" required >
                <option value="0">Év</option>
                <option value="1">Hónap</option>
                <option value="2">Hét</option>
                <option value="3">Nap</option>
            </select>
        </div>
    </div>

    <h5>Állapot</h5>
    <select name="condition" class="form-control" required>
        <option value="0">Használt</option>
        <option value="1">Új</option>
    </select>
    <h5>Az áru helye</h5>
    <select name="re" id="re" class="form-control" required>
        <option value="0" id="re-0">Nincs</option>
        <option value="4" id="re-1">Bács-Kiskun megye</option>
        <option value="6" id="re-2">Baranya megye</option>
        <option value="7" id="re-3">Békés megye</option>
        <option value="5" id="re-4">Borsod-Abaúj-Zemplén megye</option>
        <option value="1" id="re-5">Budapest</option>
        <option value="8" id="re-6">Csongrád megye</option>
        <option value="3" id="re-7">Fejér megye</option>
        <option value="9" id="re-8">Győr-Moson-Sopron megye</option>
        <option value="2" id="re-9">Hajdú-Bihar megye</option>
        <option value="10" id="re-10">Heves megye</option>
        <option value="11" id="re-11">Jász-Nagykun-Szolnok megye</option>
        <option value="12" id="re-12">Komárom-Esztergom megye</option>
        <option value="22" id="re-13">Külföld</option>
        <option value="13" id="re-14">Nógrád megye</option>
        <option value="20" id="re-15">Pest megye</option>
        <option value="14" id="re-16">Somogy megye</option>
        <option value="15" id="re-17">Szabolcs-Szatmár-Bereg megye</option>
        <option value="16" id="re-18">Tolna megye</option>
        <option value="17" id="re-19">Vas megye</option>
        <option value="18" id="re-20">Veszprém megye</option>
        <option value="19" id="re-21">Zala megye</option>
    </select><br/>
    <a class="file-input-wrapper btn btn-default ">Kép kiválasztása<input type="file" name="file" id="file"></a><br/><br/>
    <button class="btn btn-primary" type="submit">Hirdetés feltöltése</button>
</form>