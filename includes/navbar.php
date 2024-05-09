<header class="main-header" style="background-image: linear-gradient(to right, #1E40AF, #60A5FA); ">
  <nav class="navbar navbar-static-top" style="background-image: linear-gradient(to right, #1E40AF, #60A5FA);  ">
    <div class="container" style=" ">
      <div class="navbar-header" style=" ">
        <a href="#" class="navbar-brand" style="  font-size: 25px;  color:white  "><b>SEHAJ-MAT</a>
        <button type="button" class="navbar-toggle collapsed"style="background-image: linear-gradient(to right, #1E40AF, #60A5FA); " data-toggle="collapse" data-target="#navbar-collapse">
          <i class="fa fa-bars"></i>
        </button>
      </div>

      <!-- Collect the nav links, forms, and other content for toggling -->
      <div class="collapse navbar-collapse pull-left" id="navbar-collapse">
        <ul class="nav navbar-nav">
          <?php
            if(isset($_SESSION['student'])){
              echo "
                <li><a href='index.php'>HOME</a></li>
                <li><a href='transaction.php'>TRANSACTION</a></li>
              ";
            } 
          ?>
        </ul>
      </div>
      <!-- /.navbar-collapse -->
      <!-- Navbar Right Menu -->
      <div class="navbar-custom-menu"  >
        <ul class="nav navbar-nav"  >
          <li class="user user-menu" >
            <a href="">
              <img src="<?php echo (!empty($voter['photo'])) ? 'images/'.$voter['photo'] : 'images/profile.jpg' ?>" class="user-image" alt="User Image">
              <span class="hidden-xs"  style="color:white ; font-weight :500;
              font-size: 25px; font-family: ui-sans-serif, system-ui, sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji';
           font-feature-settings: normal;
          font-variation-settings: normal;
        -webkit-tap-highlight-color: transparent;
                "><?php echo $voter['firstname'].' '.$voter['lastname']; ?></span>
            </a>
          </li>
          <li><a href="logout.php"> <b style="color:white ; font-size: 25px;> <i class=fa fa-sign-out"> </b></i> <b style="color:white; font-size: 25px; font-family: ui-sans-serif, system-ui, sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji';
           font-feature-settings: normal;
          font-variation-settings: normal;
        -webkit-tap-highlight-color: transparent; " > LOGOUT </b></a></li>  
        </ul>
      </div>
      <!-- /.navbar-custom-menu -->
    </div>
    <!-- /.container-fluid -->
  </nav>
</header>