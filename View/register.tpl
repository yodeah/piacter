

        <div id="register">
            <div class="well">
                <form class="bs-example form-horizontal"   action="register" method="post" >
                    <fieldset>
                        <legend>Regisztráció</legend>
                        <div class="form-group">
                            <div id="lights"><label  for="inputEmail" class="col-lg-2 control-label">Email</label></div>
                            <div class="col-lg-10">
                                <input type="email" class="form-control" name="email" placeholder="Email" required maxlength="30">
                            </div>
                        </div>                  
                        <div class="form-group">
                            <label  for="Username" class="col-lg-2 control-label">FelhNév</label>
                            <div class="col-lg-10">
                                <input type="text" class="form-control" name="username" placeholder="Felhasználónév" required maxlength="12" pattern="[a-zA-Z0-9_-]{6,12}">
                            </div>
                        </div>
                        <div class="form-group">
                            <label  for="Password1" class="col-lg-2 control-label">Jelszó</label>
                            <div class="col-lg-10">
                                <input type="password" class="form-control" name="password1" placeholder="Jelszó" required maxlength="12" pattern="[a-zA-Z0-9_-]{6,12}">

                            </div>
                        </div>
                        <div class="form-group">
                            <label  for="Password2" class="col-lg-2 control-label">Jelszó újra</label>
                            <div class="col-lg-10">
                                <input type="password" class="form-control" name="password2" placeholder="Jelszó" required maxlength="12" pattern="[a-zA-Z0-9_-]{6,12}">

                            </div>
                        </div>


                        <div class="form-group">
                            <div class="col-lg-10 col-lg-offset-2">

                                <button type="submit" class="btn btn-primary">Regsztráció</button> 
                                
                            </div>
                        </div>
                    </fieldset>
                </form>
            </div>



        </div>        
