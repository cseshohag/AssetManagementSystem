<!--<h2>Login</h2>-->
<div class="login">
<form action="login.php" method="post" >
	<p><!--<label class="label" for="email">Enter your ID:</label>-->
	<input id="email" type="email" name="u_mail" size="30" maxlength="60" value="<?php if (isset($_POST['u_mail'])) echo $_POST['u_mail']; ?>" placeholder="User mail" id="username"> </p>
		<p><!--<label class="label" for="psword">Password:</label>-->
	<input id="psword" type="password" name="u_pass" size="12" maxlength="12" value="<?php if (isset($_POST['u_pass'])) echo $_POST['u_pass']; ?>" placeholder="Password" id="password"></p>
	<p><input id="submit" type="submit" name="submit" value="Login"></p>
	<a class="hero_home__link__desktop" data-g-label="Get Gmail" href="registration_form.php" ng-click="homeCtrl.trackCreateAccount('desktop')" rel="nofollow" /*target="_blank"*/>CREATE AN ACCOUNT</a>
</form>
</div>
<div class="shadow"></div>