<section class="container product-list">
    <?php if (!empty($products)): ?>
        <div class="row">
            <?php foreach ($products as $product):
                $style_img = '';
                if ($product['category_name'] == 'Bánh ngọt') {
                    $style_img = 'height: 15rem';
                } elseif ($product['category_name'] == 'Cà phê') {
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
        <?= $pages ?>
    <?php else: ?>
        <h2>Chúng tôi không có sản phẩm nào có tên <?= $_GET['product_name'] ?> :((</h2>
    <?php endif; ?>
</section>