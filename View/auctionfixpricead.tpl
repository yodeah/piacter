<div class="well active fullpageadSJ">
    <div class="row">
        <div id="headertext"> 
            <h2>{{ @title}}</h2>
            <h5>{{ @date}}</h5>

            <h6>
                Ár: {{ @price}} {{ @price_ty}}
                <form action="/asapbuy" method="POST">
                    <input type="hidden" name="price" value="{{ @price}}">
                    <input type="hidden" name="adid" value="{{ @adid }}">
                    <button type="submit">Leütés</button>
                </form>
            </h6>

            <form action="/newbid" method="POST">
                <input type="number" name="newbid" placeholder="min {{ @placeholder}}">
                <input type="hidden" name="adid" value="{{ @adid }}">
                {{ @auctionprice_ty}}
                <button type="submit">Új ajánlat</button>
            </form>
            <h5 {{ @ishidden | raw }}>Jelenlegi nyertes: <a {{ @ishidden | raw }} href="/profile/{{ @winner }}">{{ @winner }}</a></h5>

            <h6>Mennyiség: {{ @quantity}} {{ @quantity_ty}}</h6>
            <h6>Garancia: {{ @warranty}} {{ @warranty_ty}}</h6>
            <h6>Állapot: {{ @state }}</h6>
        </div>

        <div id="headerimg">
            <a href="/upload/{{ @image }}" data-lightbox="{{ @title }}" data-title="{{ @title }}">
                <img class="imgthumbnail" src="/upload/{{ @image }}" ></a>
        </div>
    </div>

    <div class="row">
        <div id="contentisking">
            <p>{{ @descr}}</p>
        </div>
    </div>

    <div class="row">
        <h4>Árú helye: {{ @region}}</h4> 
        <p><small>Feladás dátuma: {{ @date}}</small></p> 
        <h4>Érvényesség: {{ @availability}}</h4> 
        <h5>Hirdető: <a href="/profile/{{ @owner}}">{{ @owner}}</a></h5>
    </div>
</div>