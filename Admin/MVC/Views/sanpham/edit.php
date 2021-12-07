<?php if (isset($_COOKIE['msg'])) { ?>
    <div class="alert alert-success">
        <strong>Thông báo</strong> <?= $_COOKIE['msg'] ?>
    </div>
<?php } ?>
<hr>
<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
    <form action="?mod=sanpham&act=update" method="POST" role="form" enctype="multipart/form-data">
        <input type="hidden" name="MaSP" value="<?= $data['MaSP'] ?>">
        <div class="form-group">
            <label for="cars">Loại sản phẩm: </label>
            <select id="" name="MaDM" class="form-control">
                <?php foreach ($data_dm as $row) { ?>
                    <option <?= ($row['MaDM'] == $data['MaDM'])?'selected':''?> value="<?= $row['MaDM'] ?>"><?= $row['TenDM'] ?></option>
                <?php } ?>
            </select>
        </div>
        <div class="form-group">
            <label for="cars">Loại sản phẩm: </label>
            <select id="" name="MaLSP" class="form-control">
                <?php foreach ($data_lsp as $row) { ?>
                    <option <?= ($row['MaLSP'] == $data['MaLSP'])?'selected':''?> value="<?= $row['MaLSP'] ?>"><?= $row['TenLSP'] ?></option>
                <?php } ?>
            </select>
        </div>
        <div class="form-group">
            <label for="">Tên sản phẩm</label>
            <input type="text" class="form-control" id="" placeholder="" name="TenSP" value="<?=$data['TenSP']?>">
        </div>
        <div class="form-group">
            <label for="">Đơn giá</label>
            <input type="text" class="form-control" id="" placeholder="" name="DonGia" value="<?=$data['DonGia']?>">
        </div>
        <div class="form-group">
            <label for="">Số lượng</label>
            <input type="text" class="form-control" id="" placeholder="" name="SoLuongCo" value="<?=$data['SoLuongCo']?>">
        </div>
        <div class="form-group">
            <label for="">Hình ảnh 1</label>
            <img src="../public/<?=$data['HinhAnh1']?>" height="200px" width="200px">
            <input type="file" class="form-control" id="" placeholder="" name="HinhAnh1" value="<?=$data['HinhAnh1']?>">
        </div>
        <div class="form-group">
            <label for="">Hình ảnh 2</label>
            <img src="../public/<?=$data['HinhAnh2']?>" height="200px" width="200px">
            <input type="file" class="form-control" id="" placeholder="" name="HinhAnh2" value="<?=$data['HinhAnh2']?>">
        </div>
        <div class="form-group">
            <label for="">Hình ảnh 3</label>
            <img src="../public/<?=$data['HinhAnh3']?>" height="200px" width="200px">
            <input type="file" class="form-control" id="" placeholder="" name="HinhAnh3" value="<?=$data['HinhAnh3']?>">
        </div>
        <div class="form-group">
            <label for="cars">Mã khuyến mãi </label>
            <select id="" name="MaKM" class="form-control">
                <?php foreach ($data_km as $row) { ?>
                    <option <?= ($row['MaKM'] == $data['MaKM'])?'selected':''?> value="<?= $row['MaKM'] ?>"><?= $row['TenKM'] ?></option>
                <?php } ?>
            </select>
        </div>
        <div class="form-group">
            <label for="">Loại sản phẩm</label>
            <input type="text" class="form-control" id="" placeholder="" name="LSP" value="<?=$data['LSP']?>">
        </div>
        <div class="form-group">
            <label for="">Khối lượng</label>
            <input type="text" class="form-control" id="" placeholder="" name="KhoiLuong" value="<?=$data['KhoiLuong']?>">
        </div>
        <div class="form-group">
            <label for="">Số lượng</label>
            <input type="text" class="form-control" id="" placeholder="" name="SoLuong" value="<?=$data['SoLuong']?>">
        </div>
        <div class="form-group">
            <label for="">Thành phần</label>
            <textarea class="form-control" placeholder="" name="ThanhPhan"><?=$data['ThanhPhan']?></textarea>
        </div>
        </div>
        <div class="form-group">
            <label for="">Cách sử dụng</label>
            <input type="text" class="form-control" id="" placeholder="" name="CachSD" value="<?=$data['CachSD']?>">
        </div>
        <div class="form-group">
            <label for="">Bảo quản</label>
            <input type="text" class="form-control" id="" placeholder="" name="BaoQuan" value="<?=$data['BaoQuan']?>">
        </div>
        <div class="form-group">
            <label for="">Thương hiệu</label>
            <input type="text" class="form-control" id="" placeholder="" name="ThuongHieu" value="<?=$data['ThuongHieu']?>">
        </div>
        <div class="form-group">
            <label for="">Nơi sản xuất</label>
            <input type="text" class="form-control" id="" placeholder="" name="NoiSX" value="<?=$data['NoiSX']?>">
        </div>
        <label for="">Mô tả</label>
        <div class="form-group">
            <textarea class="form-control" id="summernote" placeholder="" name="MoTa"><?=$data['MoTa']?></textarea>
        </div>
        <div class="form-group">
            <label for="">Trạng thái</label>
            <input <?=($data['TrangThai']==1)?'checked':''?> type="checkbox" id="" placeholder="" value="1" name="TrangThai"><em>(Check cho phép hiện thị sản phẩm)</em>
        </div>
        <button type="submit" class="btn btn-primary">Create</button>
       
    </form>
    <script>
        $(document).ready(function() {
            $('#summernote').summernote();
        });
    </script>