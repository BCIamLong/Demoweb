<div class="main-slider-one main-slider-two slider-area">
    <div id="wrapper">
        <div class="slider-wrapper">
            <div id="mainSlider" class="nivoSlider" >
                <?php $i=1; foreach ($data_banner as  $value) {  ?>
                <img src="public/<?=$value['HinhAnh']?>" alt="main slider" title="#htmlcaption"/>
                <?php } ?>
            </div>
            <div id="htmlcaption" class="nivo-html-caption slider-caption">
                <div class="container">
                    <div class="slider-left slider-right"style="margin-right: 150px;margin-bottom:50px;">
                        <div class="slide-text animated zoomInUp">
                            <h1 style="color: white;">welcome Shopfood</h1>
                            <hr>
                            <h1>Đồ ăn ngon 2021</h1>
                        </div>
                        <div class="animated slider-btn fadeInUpBig">
                            <a style=""class="shop-btn" href="index.php?act=shop">Mua ngay</a>
                        </div>
    <div class="shape" style=" position: absolute;
    bottom:-.5rem; left: 0;
    height: 13rem;
    background:url(img/shape-bottom.png);
    background-size: 350rem 13rem;
    width: 100%;
    animation: animate 25s linear infinite;"></div>
                    </div>
                </div>
            </div>
        </div>							
    </div>
</div>