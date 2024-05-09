<?php
  	session_start();
  	if(isset($_SESSION['admin'])){
    	header('location:home.php');
  	}
?>
<?php include 'includes/header.php'; ?>
<?php include '../includes/links.php'; ?>

<style>
<?php include '../login.css'; ?>

</style>

<body>
    <div class="background">
        <div class="shape"></div>
        <div class="shape"></div>
    </div>
    <form action="login.php" method="POST">
        <h3>Admin Login </h3>

        <label for="username">Admin Username</label>
        <input type="text" placeholder="Username" id="username" name="username" required>

        <label for="password">Password</label>
        <input type="password" name="password" placeholder="Password"  id="password" required>


        <button type="submit" name="login">Log In</button>
        <div class="forget">Don't remember ? <a href=""> Forgot password</a></div>
    </form>

    <?php
  		if(isset($_SESSION['error'])){
  			echo "
  				<div class='callout callout-danger text-center disp_error  '>
			  		<p>".$_SESSION['error']."</p> 
			  	</div>
  			";
  			unset($_SESSION['error']);
  		}
  	?>
</div>
	
<?php include 'includes/scripts.php' ?>
</body>
</html>
