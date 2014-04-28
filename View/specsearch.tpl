<script>
    window.addEventListener("load", checkboxcheck, false);
    function checkboxcheck() {
        var searchintitle = document.getElementById('searchintitle');
        var searchindesc = document.getElementById('searchindesc');

        searchintitle.addEventListener('change', changecb, false);
        searchindesc.addEventListener('change', changecb, false);


        function changecb() {
            if (searchintitle.checked == false && searchindesc.checked == false) {
                searchintitle.checked = true;
            }
        }
    }
</script>

<form class="form-login form-wrapper form-medium" role="form" action="special_process" method="GET" enctype="multipart/form-data">
    <h3 class="title-divider"><span>Speciális keresés</span></h3>
    <h5>Írja be a kulcsszót</h5>
    <div class="form-group">
        <input required pattern=".{5,100}" required title="5 töl 100 karakter" type="text" class="form-control" name="keyword" id="keyword" placeholder="Kulcsszó">
    </div>

    <h5><input type="checkbox" name="searchintitle" checked id="searchintitle">Keresés címben</h5>          
    <h5><input type="checkbox" name="searchindesc" id="searchindesc">Keresés leírásban</h5>          



    <h5>Állapot</h5>
    <select name="condition" class="form-control" required>
        <option value="0">Bármilyen</option>
        <option value="0">Használt</option>
        <option value="1">Új</option>
    </select>
    <h5>Az áru helye</h5>
    <select name="re" id="re" class="form-control" required>
        <option value="0" id="re-0">Bárhol</option>
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
    </select><br/><br/>
    <button class="btn btn-primary" type="submit">Hirdetés feltöltése</button>
</form>