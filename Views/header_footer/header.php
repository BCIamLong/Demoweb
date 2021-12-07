<header class="header-one header-two">
    <div class="header-top-two">
        <div class="container text-center">
            <div class="row">
                <div class="col-sm-12">
                    <div class="middel-top">
                        <div class="left floatleft">
                            <p><a href="?act=home" > <i class="fas fa-utensils"></i> Shopfood </a></p>
                        </div>
                    </div>
                    <div style="margin-right:50px;"class="middel-top clearfix">
                        <ul class="clearfix right floatright">
                            <li>
                                <a><i class="mdi mdi-account"   ></i></a>
                                <ul >
                                    <?php  if(isset($_SESSION['login'])){ ?>
                                    <li><b>Chào <?=$_SESSION['login']['Ho']?> <?=$_SESSION['login']['Ten']?></b></li>
                                    <li><a href="?act=taikhoan&xuli=account">Tài khoản</a></li>
                                    <li><a href="?act=taikhoan&xuli=dangxuat">Đăng xuất</a></li>
                                    <?php
                                        if(isset($_SESSION['isLogin_Admin']) || isset($_SESSION['isLogin_Nhanvien'])){ ?>
                                        <li><a href="admin/?mod=login">Trang quản lý</a></li>
                                  <?php }}else{ ?>
                                    <li><b>Khách hàng</b></li>
                                    <li><a href="?act=taikhoan">Đăng nhập</a></li>
                                    <?php } ?>
                                </ul>
                            </li>   
                        </ul>
                        <div style=""class="right floatright widthfull">
                            <form action="?act=shop" method="post">
                                <button type="submit"><i class="mdi mdi-magnify"></i></button>
                                <input type="text" placeholder="Tìm kiếm..." name="keyword"/>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
 <div class="header-2" style="height:60px;padding-top: 21px;">

    <div id="menu" class="fas fa-hamburger"></div>

    <nav class="navbar">
        <ul><li><a href="?act=home">Trang chủ</a></li>
            <li><a href="?act=shop">Cửa Hàng</a>
                                </li>
                                <li>
                                    <a href="?act=checkout">Thanh Toán</a>
                                </li>
                                <li><a href="?act=about">Giới thiệu</a></li>
                                <li><a href="?act=contact">Liên hệ</a></li>
                            
            <li style="padding-left: 500px;font-size:20px;padding-top: 12px;">  <div class="">
                    <a class="" href="?act=cart">
                        <?php 
                            $soluong = 0;
                            $thanhtien = 0;
                            if(isset($_SESSION['sanpham'])){
                            foreach ($_SESSION['sanpham'] as $value) {
                                $soluong +=1;
                                $thanhtien +=$value['ThanhTien'];
                            }}
                        ?>
                        <i class="mdi mdi-cart"></i>
                       <br> <?=$soluong?>SP: <strong><?=number_format($thanhtien)?> VNĐ</strong>
                    
                    </a>
                    </div>
                    </li>

        </ul>

    </nav>
</header>