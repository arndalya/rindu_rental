<<<<<<< Updated upstream

=======
>>>>>>> Stashed changes
<header>
  <div class="default-header">
    <div class="container">
      <div class="row">
        <div class="col-sm-3 col-md-2">
<<<<<<< Updated upstream
          <div class="logo"> <a href="index.php"><img src="assets/images/logo11.png" alt="image"/></a> </div>
        </div>
        <div class="col-sm-9 col-md-10">
          <div class="header_info">
            <div class="header_widgets">
              <div class="circle_icon"> <i class="fa fa-envelope" aria-hidden="true"></i> </div>
              <p class="uppercase_text">For Support Mail us : </p>
              <a href="mailto:info@example.com">rental_mobil@gmail.com</a> </div>
            <div class="header_widgets">
              <div class="circle_icon"> <i class="fa fa-phone" aria-hidden="true"></i> </div>
              <p class="uppercase_text">For Services Call Us: </p>
              <a href="tel:61-1234-5678-99">+62-812-3344-5551</a> </div>
            <!-- <div class="social-follow">
              <ul>
                <li><a href="#"><i class="fa fa-facebook-square" aria-hidden="true"></i></a></li>
                <li><a href="#"><i class="fa fa-twitter-square" aria-hidden="true"></i></a></li>
                <li><a href="#"><i class="fa fa-linkedin-square" aria-hidden="true"></i></a></li>
                <li><a href="#"><i class="fa fa-google-plus-square" aria-hidden="true"></i></a></li>
                <li><a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
              </ul> -->
            </div>
   <?php   if(strlen($_SESSION['ulogin'])==0)
	{	
	?>
 <div class="login_btn"> <a href="#loginform" class="btn btn-xs uppercase" data-toggle="modal" data-dismiss="modal">Login / Register</a> </div>
	<?php }
	else{ 
		echo "Welcome!";
	} ?>
=======
          <div class="logo"> <a href="index.php"><img src="assets/images/favicon-icon/logo rentcar.png" alt="RINDU RENTAL" /></a> </div>
        </div><strong>"Rindu Rental: Teman Perjalanan, Solusi Mobilitas!"</strong>
        <div class="col-sm-9 col-md-10">
          <div class="header_info">
            <div class="header_widgets">
              <div class="circle_icon"> <i class="fa fa-whatsapp" aria-hidden="true"></i> </div>
              <p class="uppercase_text">For More Information : </p>
              <a href="https://wa.me/085355770003">Whatsapp</a>
            </div>
            <div class="social-follow">
              <ul>
                <li><a href="https://instagram.com/rindurental_tpi"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
                <li><a href="https://www.facebook.com/Rindurental"><i class="fa fa-facebook-square" aria-hidden="true"></i></a></li>
                <li><a href="mailto:rosarindu08@gmail.com"><i class="fa fa-reguler fa-envelope" aria-hidden="true"></i></a></li>
              </ul>
            </div>
            <?php if (strlen($_SESSION['ulogin']) == 0) {
            ?>
              <div class="login_btn"> <a href="#loginform" class="btn btn-xs uppercase" data-toggle="modal" data-dismiss="modal">Login / Register</a> </div>
            <?php } else {
              echo "Welcome!";
            } ?>
>>>>>>> Stashed changes
          </div>
        </div>
      </div>
    </div>
  </div>
<<<<<<< Updated upstream
  
=======

>>>>>>> Stashed changes
  <!-- Navigation -->
  <nav id="navigation_bar" class="navbar navbar-default">
    <div class="container">
      <div class="navbar-header">
<<<<<<< Updated upstream
        <button id="menu_slide" data-target="#navigation" aria-expanded="false" data-toggle="collapse" class="navbar-toggle collapsed" type="button"> <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
=======
        <button id="menu_slide" data-target="#navigation" aria-expanded="false" data-toggle="collapse" class="navbar-toggle collapsed" type="button"> <span class="sr-only">Toggle Navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
>>>>>>> Stashed changes
      </div>
      <div class="header_wrap">
        <div class="user_login">
          <ul>
<<<<<<< Updated upstream
            <li class="dropdown"> <a href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fa fa-user-circle" aria-hidden="true"></i> 
<?php 
$email=$_SESSION['ulogin'];
$sql ="SELECT nama_user FROM users WHERE email='$email'";
$query = mysqli_query($koneksidb,$sql);
if(mysqli_num_rows($query)>0)
{
while($results = mysqli_fetch_array($query))
	{
	 echo htmlentities($results['nama_user']); }}?>
	 <i class="fa fa-angle-down" aria-hidden="true"></i></a>
          <ul class="dropdown-menu">
           <?php if($_SESSION['ulogin']){?>
            <li><a href="profile.php">Profile Settings</a></li>
              <li><a href="update-password.php">Update Password</a></li>
            <li><a href="riwayatsewa.php">Riwayat Sewa</a></li>
            <li><a href="logout.php">Sign Out</a></li>
            <?php } else { ?>
            <li><a href="#loginform"  data-toggle="modal" data-dismiss="modal">Profile Settings</a></li>
              <li><a href="#loginform"  data-toggle="modal" data-dismiss="modal">Update Password</a></li>
            <li><a href="#loginform"  data-toggle="modal" data-dismiss="modal">Riwayat Sewa</a></li>
            <li><a href="#loginform"  data-toggle="modal" data-dismiss="modal">Sign Out</a></li>
            <?php } ?>
          </ul>
=======
            <li class="dropdown"> <a href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fa fa-user-circle" aria-hidden="true"></i>
                <?php
                $email = $_SESSION['ulogin'];
                $sql = "SELECT nama_user FROM users WHERE email='$email'";
                $query = mysqli_query($koneksidb, $sql);
                if (mysqli_num_rows($query) > 0) {
                  while ($results = mysqli_fetch_array($query)) {
                    echo htmlentities($results['nama_user']);
                  }
                } ?>
                <i class="fa fa-angle-down" aria-hidden="true"></i></a>
              <ul class="dropdown-menu">
                <?php if ($_SESSION['ulogin']) { ?>
                  <li><a href="profile.php">Profile Settings</a></li>
                  <li><a href="update-password.php">Update Password</a></li>
                  <li><a href="riwayatsewa.php">Riwayat Sewa</a></li>
                  <li><a href="logout.php">Sign Out</a></li>
                <?php } else { ?>
                  <li><a href="#loginform" data-toggle="modal" data-dismiss="modal">Profile Settings</a></li>
                  <li><a href="#loginform" data-toggle="modal" data-dismiss="modal">Update Password</a></li>
                  <li><a href="#loginform" data-toggle="modal" data-dismiss="modal">Riwayat Sewa</a></li>
                  <li><a href="#loginform" data-toggle="modal" data-dismiss="modal">Sign Out</a></li>
                <?php } ?>
              </ul>
>>>>>>> Stashed changes
            </li>
          </ul>
        </div>
      </div>
      <div class="collapse navbar-collapse" id="navigation">
        <ul class="nav navbar-nav">
<<<<<<< Updated upstream
          <li><a href="index.php">Home</a></li>        	 
          <li><a href="page.php?type=aboutus">Tentang Kami</a></li>
          <li><a href="car-listing.php">Daftar Mobil</a>
          <li><a href="page.php?type=faqs">FAQs</a></li>
          <li><a href="contact-us.php">Hubungi Kami</a></li>
=======
          <li><a href="index.php">Home</a></li>
          <li><a href="page.php?type=aboutus">About Us</a></li>
          <li><a href="car-listing.php">Daftar Kendaraan</a>
          <li><a href="page.php?type=faqs">FAQs</a></li>
          <li><a href="contact-us.php">Contact Us</a></li>
>>>>>>> Stashed changes

        </ul>
      </div>
    </div>
  </nav>
<<<<<<< Updated upstream
  <!-- Navigation end --> 
  
=======
  <!-- Navigation end -->

>>>>>>> Stashed changes
</header>