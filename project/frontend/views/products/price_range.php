<?php
$min = $_GET['min_price'];
$max = $_GET['max_price'];
$active_range_1 = '';
$active_range_2 = '';
$active_range_3 = '';
$active_range_4 = '';
$active_range_5 = '';
$active_range_6 = '';

if ($min == 1 && $max == 20000) {
    $active_range_1 = 'active-range';
}
if ($min == 20000 && $max == 40000) {
    $active_range_2 = 'active-range';
}
if ($min == 40000 && $max == 60000) {
    $active_range_3 = 'active-range';
}
if ($min == 60000 && $max == 80000) {
    $active_range_4 = 'active-range';
}
if ($min == 80000 && $max == 100000) {
    $active_range_5 = 'active-range';
}
if ($min == 100000 && $max == 999999999) {
    $active_range_6 = 'active-range';
}
?>

<section class="container product-list">
    <div class="product--price-range-dropdown">
        <?php if ($products[0]['category_name'] == 'Cà phê'): ?>
        <div class="dropdown">
            <a class="btn btn-secondary dropdown-toggle" href="#" role="button" id="dropdownMenuLink"
                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                Chọn khoảng giá Cà phê
            </a>
            <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
                <a class="dropdown-item <?= $active_range_1 ?>"
                    href="index.php?controller=product&action=price_range&category_name=Cà phê&min_price=1&max_price=20000">
                    < 20.000đ </a>
                        <a class="dropdown-item <?= $active_range_2 ?>"
                            href="index.php?controller=product&action=price_range&category_name=Cà phê&min_price=20000&max_price=40000">
                            20.000đ - 40.000đ
                        </a>
                        <a class="dropdown-item <?= $active_range_3 ?>"
                            href="index.php?controller=product&action=price_range&category_name=Cà phê&min_price=40000&max_price=60000">
                            40.000đ - 60.000đ
                        </a>
                        <a class="dropdown-item <?= $active_range_4 ?>"
                            href="index.php?controller=product&action=price_range&category_name=Cà phê&min_price=60000&max_price=80000">
                            60.000đ - 80.000đ
                        </a>
                        <a class="dropdown-item <?= $active_range_5 ?>"
                            href="index.php?controller=product&action=price_range&category_name=Cà phê&min_price=80000&max_price=100000">
                            80.000đ - 100.000đ
                        </a>
                        <a class="dropdown-item <?= $active_range_6 ?>"
                            href="index.php?controller=product&action=price_range&category_name=Cà phê&min_price=100000&max_price=999999999">
                            100.000đ+
                        </a>
            </div>
        </div>
        <?php endif; ?>
        <?php if ($products[0]['category_name'] == 'Bánh ngọt'): ?>
        <div class="dropdown">
            <a class="btn btn-secondary dropdown-toggle" href="#" role="button" id="dropdownMenuLink"
                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                Chọn khoảng giá Bánh ngọt
            </a>
            <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
                <a class="dropdown-item <?= $active_range_1 ?>"
                    href="index.php?controller=product&action=price_range&category_name=Bánh ngọt&min_price=1&max_price=20000">
                    < 20.000đ </a>
                        <a class="dropdown-item <?= $active_range_2 ?>"
                            href="index.php?controller=product&action=price_range&category_name=Bánh ngọt&min_price=20000&max_price=40000">
                            20.000đ - 40.000đ
                        </a>
                        <a class="dropdown-item <?= $active_range_3 ?>"
                            href="index.php?controller=product&action=price_range&category_name=Bánh ngọt&min_price=40000&max_price=60000">
                            40.000đ - 60.000đ
                        </a>
                        <a class="dropdown-item <?= $active_range_4 ?>"
                            href="index.php?controller=product&action=price_range&category_name=Bánh ngọt&min_price=60000&max_price=80000">
                            60.000đ - 80.000đ
                        </a>
                        <a class="dropdown-item <?= $active_range_5 ?>"
                            href="index.php?controller=product&action=price_range&category_name=Bánh ngọt&min_price=80000&max_price=100000">
                            80.000đ - 100.000đ
                        </a>
                        <a class="dropdown-item <?= $active_range_6 ?>"
                            href="index.php?controller=product&action=price_range&category_name=Bánh ngọt&min_price=100000&max_price=999999999">
                            100.000đ+
                        </a>
            </div>
        </div>
        <?php endif; ?>
        <?php if ($products[0]['category_name'] == 'Các loại nước khác'): ?>
        <div class="dropdown">
            <a class="btn btn-secondary dropdown-toggle" href="#" role="button" id="dropdownMenuLink"
                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                Chọn khoảng giá Các loại nước khác
            </a>
            <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
                <a class="dropdown-item <?= $active_range_1 ?>"
                    href="index.php?controller=product&action=price_range&category_name=Các loại nước khác&min_price=1&max_price=20000">
                    < 20.000đ </a>
                        <a class="dropdown-item <?= $active_range_2 ?>"
                            href="index.php?controller=product&action=price_range&category_name=Các loại nước khác&min_price=20000&max_price=40000">
                            20.000đ - 40.000đ
                        </a>
                        <a class="dropdown-item <?= $active_range_3 ?>"
                            href="index.php?controller=product&action=price_range&category_name=Các loại nước kháct&min_price=40000&max_price=60000">
                            40.000đ - 60.000đ
                        </a>
                        <a class="dropdown-item <?= $active_range_4 ?>"
                            href="index.php?controller=product&action=price_range&category_name=Các loại nước khác&min_price=60000&max_price=80000">
                            60.000đ - 80.000đ
                        </a>
                        <a class="dropdown-item <?= $active_range_5 ?>"
                            href="index.php?controller=product&action=price_range&category_name=Các loại nước khác&min_price=80000&max_price=100000">
                            80.000đ - 100.000đ
                        </a>
                        <a class="dropdown-item <?= $active_range_6 ?>"
                            href="index.php?controller=product&action=price_range&category_name=Các loại nước khác&min_price=100000&max_price=999999999">
                            100.000đ+
                        </a>
            </div>
        </div>
        <?php endif; ?>
    </div>
    <?php if (!empty($products)): ?>
    <div class="row">
        <?php foreach ($products as $product):
                $style_img = '';
                if ($product['category_name'] == 'Bánh ngọt') {
                    $style_img = 'height: 15rem';
                }if ($product['category_name'] == 'Cà phê') {
                    $style_img = 'height: 15rem';
                } else {
                    $style_img = 'height: 15rem';
                }
                ?>
        <div class="col-md-3 col-6 product-content" id="product__item-<?= $product['id'] ?>">
            <a title="<?= $product['name'] ?>"
                href="index.php?controller=product&action=detail&category_id=<?= $product['category_id'] ?>&brand_id=<?= $product['brand_id'] ?>&product_id=<?= $product['id'] ?>">
                <img style="<?= $style_img ?>" src="../backend/assets/uploads/<?= $product['avatar'] ?>">
            </a>
            <p class="product-name"><?= $product['name'] ?></p>
            <p class="product-price"><?= number_format($product['price']) ?>đ</p>
        </div>
        <?php endforeach; ?>
    </div>
    <?php else: ?>
    <h2>Không có sản phẩm trong khoảng giá từ <?= $_GET['min_price'] ?> đến <?= $_GET['max_price'] ?></h2>
    <?php endif; ?>
</section>