<!DOCTYPE html>
<html lang="en">
<!-- HEAD -->
<?php include ("partials/head.php"); ?>

<body class="animsition">
    <!-- HEADER -->
    <?php include ("partials/header.php"); ?>

    <!-- CART -->
    <?php include ("partials/cart.php"); ?>

    <!-- Title page -->
    <section class="bg-img1 txt-center p-lr-15 p-tb-92" style="background-image: url('images/bg-01.jpg');">
        <h2 class="ltext-105 cl0 txt-center">
            Customers
        </h2>
    </section>

    <!-- Content page -->
    <section class="bg0 p-t-104 p-b-116">
        <div class="container">
            <div class="flex-w flex-tr">
                <div class="size-210 bor10 p-lr-70 p-t-55 p-b-70 p-lr-15-lg w-full-md">
                    <form action="handler/login.php" method="post">
                        <h4 class="mtext-105 cl2 txt-center p-b-30">
                            Sing In
                        </h4>

                        <div class="bor8 m-b-20 how-pos4-parent">
                            <input class="stext-111 cl2 plh3 size-116 p-l-62 p-r-30" type="text" name="email" placeholder="Your Email Address">
                            <img class="how-pos4 pointer-none" src="images/icons/icon-email.png" alt="ICON">
                        </div>

                        <div class="bor8 m-b-20 how-pos4-parent">
                            <input class="stext-111 cl2 plh3 size-116 p-l-62 p-r-30" type="password" name="password" placeholder="Your Passowrd">
                        </div>

                        <button name="login" type="submit" class="flex-c-m stext-101 cl0 size-121 bg3 bor1 hov-btn3 p-lr-15
                        trans-04
                        pointer">
                            Log In
                        </button>
                    </form>
                </div>
                <div class="size-210 bor10 p-lr-70 p-t-55 p-b-70 p-lr-15-lg w-full-md">
                    <form action="handler/register.php" method="post">
                        <h4 class="mtext-105 cl2 txt-center p-b-30">
                            Sing Up
                        </h4>

                        <div class="bor8 m-b-20 how-pos4-parent">
                            <input class="stext-111 cl2 plh3 size-116 p-l-62 p-r-30" type="text" name="email" placeholder="Your Email Address">
                            <img class="how-pos4 pointer-none" src="images/icons/icon-email.png" alt="ICON">
                        </div>

                        <div class="bor8 m-b-20 how-pos4-parent">
                            <input class="stext-111 cl2 plh3 size-116 p-l-62 p-r-30" type="password" name="password" placeholder="Your Password">
                        </div>
                        <div class="bor8 m-b-20 how-pos4-parent">
                            <input class="stext-111 cl2 plh3 size-116 p-l-62 p-r-30" type="password" name="con_password" placeholder="Your Confirm Password">
                        </div>

                        <button name="registerbtn" class="flex-c-m stext-101 cl0 size-121 bg3 bor1 hov-btn3 p-lr-15 trans-04 pointer">
                            Register
                        </button>
                    </form>
                </div>
            </div>
        </div>
    </section>

    <!-- Map -->
    <div class="map">
        <div class="size-303" id="google_map" data-map-x="40.691446" data-map-y="-73.886787" data-pin="images/icons/pin.png" data-scrollwhell="0" data-draggable="1" data-zoom="11"></div>
    </div>

    <!-- FOOTER -->
    <?php include ("partials/footer.php"); ?>

</body>
</html>