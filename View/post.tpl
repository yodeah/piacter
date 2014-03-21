

<div class="container">
    <div class="jumbotron">
        <div class="row">
            <div class="col-md-12">
                <h2> {{ @title }}</h2> <h6> {{ @user }}</h6>
            </div>
        </div>
        <div class="row">
            <div class="col-md-8">
                <p>{{ @text }}</p>
            </div>
            <div class="col-md-4">
                
                <a href="upload/{{ @img }}" data-lightbox="example-1" title="My caption"> <img  src="upload/{{ @img }}" alt="{{ @img }}" width="150" height="150"></a>
          
            </div>
        </div>
                 <div class="row">
            <div class="col-md-12">
                <h6> {{ @date }}</h6>
            </div>
    </div>
</div>
</div><br><br>
