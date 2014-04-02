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

            <h6>Mennyiség: {{ @quantity}} {{ @quantity_ty}}</h6>
            <h6>Garancia: {{ @warranty}} {{ @warranty_ty}}</h6>
        </div>

        <div id="headerimg">
            <img src="/upload/{{ @image}}" />
        </div>
    </div>

    <div class="row">
        <div id="contentisking">
            <p>{{ @descr}}</p>
        </div>
    </div>
    
    <div class="row">
        <h5>Feladás dátuma: {{ @date}}</h5> 
        <h5>Érvényesség: {{ @availability}}</h5> 
        <h5>Hirdető: <a href="/profile/{{ @owner}}">{{ @owner}}</a></h5>
    </div>
</div>