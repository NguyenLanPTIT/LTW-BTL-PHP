<?php require_once 'C:\xampp\htdocs\PTIT-Web\project\frontend\views\homes\index.php' ?>
<div class="list--products list--products-coffee container">
    <?php if (!empty($top_products)): ?>
    <div class="categories-brands" id="coffee-coffee">
        <h2 class="categories-brands__name "><span>Sản phẩm bán chạy nhất</span></h2>
        <div class="row categories-brands__elem">
            <?php
                foreach ($top_products as $item): ?>
            <div class="col-md-3 col-6 product-item" id="coffee--item-<?= $item['id'] ?>">
                <div class="product-item__image product-item__link">
                    <a
                        href="index.php?controller=product&action=detail&category_id=<?= $item['category_id'] ?>&brand_id=<?= $item['brand_id'] ?>&product_id=<?= $item['id'] ?>">
                        <img src="../backend/assets/uploads/<?= $item['avatar'] ?>" alt="">
                    </a>
                </div>
                <h3 class="product-item__name"><?= $item['name'] ?></h3>
            </div>
            <?php endforeach; ?>
        </div>
    </div>
    <?php endif; ?>
</div>


<div class="container categories">
    <h2 class="introduce-title text-center">Thể loại mặt hàng</h2>
    <?php if (!empty($categories)): ?>
    <div class="row categories__block">
        <?php foreach ($categories as $category): ?>
        <div class="col-md-3 category" id="category--<?= $category['id'] ?>">
            <div class="category__image category__link">
                <a href="index.php?controller=product&action=index&category_id=<?= $category['id'] ?>">
                    <img src="../backend/assets/uploads/<?= $category['avatar'] ?>" alt="">
                </a>
            </div>
            <h3 class="category__name"><?= $category['name'] ?></h3>
        </div>
        <?php endforeach; ?>
    </div>
    <?php endif; ?>
</div>



<div class="container categories">
    <h2 class="introduce-title text-center">Menu</h2>
    <hr class="container line" />
    <div class="list--products list--products-coffee container">
        <?php if (!empty($coffee_coffee_limit)): ?>
        <div class="categories-brands" id="coffee-coffee">
            <h2 class="categories-brands__name"><span>Cà phê</span></h2>
            <div class="row categories-brands__elem">
                <?php foreach ($coffee_coffee_limit as $item): ?>
                <div class="col-md-3 col-6 product-item" id="coffee--item-<?= $item['id'] ?>">
                    <div class="product-item__image product-item__link">
                        <a
                            href="index.php?controller=product&action=detail&category_id=<?= $item['category_id'] ?>&brand_id=<?= $item['brand_id'] ?>&product_id=<?= $item['id'] ?>">
                            <img src="../backend/assets/uploads/<?= $item['avatar'] ?>" alt="">
                        </a>
                    </div>
                    <h3 class="product-item__name"><?= $item['name'] ?></h3>
                </div>
                <?php endforeach; ?>
            </div>
            <div class="more-product"><a class="more-product__link"
                    href="index.php?controller=product&action=show&category_id=<?= $item['category_id'] ?>&brand_id=<?= $item['brand_id'] ?>">
                    Xem toàn bộ
                </a></div>
        </div>
        <?php endif; ?>

    </div>
    <hr class="container line" />

    <div class="list--products list--products-cake container">
        <?php if (!empty($cake_cake_limit)): ?>
        <div class="categories-brands" id="cake">
            <h2 class="categories-brands__name"><span>Bánh ngọt</span></h2>
            <div class="row categories-brands__elem">
                <?php foreach ($cake_cake_limit as $item): ?>
                <div class="col-md-3 col-6 product-item" id="coffee--item-<?= $item['id'] ?>">
                    <div class="product-item__image product-item__link">
                        <a
                            href="index.php?controller=product&action=detail&category_id=<?= $item['category_id'] ?>&brand_id=<?= $item['brand_id'] ?>&product_id=<?= $item['id'] ?>">
                            <img src="../backend/assets/uploads/<?= $item['avatar'] ?>" alt="">
                        </a>
                    </div>
                    <h3 class="product-item__name"><?= $item['name'] ?></h3>
                </div>
                <?php endforeach; ?>
            </div>
            <div class="more-product"><a class="more-product__link"
                    href="index.php?controller=product&action=show&category_id=<?= $item['category_id'] ?>&brand_id=<?= $item['brand_id'] ?>">
                    Xem toàn bộ
                </a></div>
        </div>
        <?php endif; ?>
    </div>
    <hr class="container line" />
    <div class="list--products list--products-cake container">
        <?php if (!empty($accessories_tra_limit)): ?>
        <div class="categories-brands" id="tra">
            <h2 class="categories-brands__name"><span>Trà</span></h2>
            <div class="row categories-brands__elem">
                <?php foreach ($accessories_tra_limit as $item): ?>
                <div class="col-md-3 col-6 product-item" id="coffee--item-<?= $item['id'] ?>">
                    <div class="product-item__image product-item__link">
                        <a
                            href="index.php?controller=product&action=detail&category_id=<?= $item['category_id'] ?>&brand_id=<?= $item['brand_id'] ?>&product_id=<?= $item['id'] ?>">
                            <img src="../backend/assets/uploads/<?= $item['avatar'] ?>" alt="">
                        </a>
                    </div>
                    <h3 class="product-item__name"><?= $item['name'] ?></h3>
                </div>
                <?php endforeach; ?>
            </div>
            <div class="more-product"><a class="more-product__link"
                    href="index.php?controller=product&action=show&category_id=<?= $item['category_id'] ?>&brand_id=<?= $item['brand_id'] ?>">
                    Xem toàn bộ
                </a></div>
        </div>
        <?php endif; ?>

        <?php if (!empty($accessories_trasua_limit)): ?>
        <div class="categories-brands" id="trasua">
            <h2 class="categories-brands__name"><span>Trà sữa</span></h2>
            <div class="row categories-brands__elem">
                <?php foreach ($accessories_trasua_limit as $item): ?>
                <div class="col-md-3 col-6 product-item" id="coffee--item-<?= $item['id'] ?>">
                    <div class="product-item__image product-item__link">
                        <a
                            href="index.php?controller=product&action=detail&category_id=<?= $item['category_id'] ?>&brand_id=<?= $item['brand_id'] ?>&product_id=<?= $item['id'] ?>">
                            <img src="../backend/assets/uploads/<?= $item['avatar'] ?>" alt="">
                        </a>
                    </div>
                    <h3 class="product-item__name"><?= $item['name'] ?></h3>
                </div>
                <?php endforeach; ?>
            </div>
            <div class="more-product"><a class="more-product__link"
                    href="index.php?controller=product&action=show&category_id=<?= $item['category_id'] ?>&brand_id=<?= $item['brand_id'] ?>">
                    Xem toàn bộ
                </a></div>
        </div>
        <?php endif; ?>

        <?php if (!empty($accessories_nuocep_limit)): ?>
        <div class="categories-brands" id="nuocep">
            <h2 class="categories-brands__name"><span>Nước ép</span></h2>
            <div class="row categories-brands__elem">
                <?php foreach ($accessories_nuocep_limit as $item): ?>
                <div class="col-md-3 col-6 product-item" id="coffee--item-<?= $item['id'] ?>">
                    <div class="product-item__image product-item__link">
                        <a
                            href="index.php?controller=product&action=detail&category_id=<?= $item['category_id'] ?>&brand_id=<?= $item['brand_id'] ?>&product_id=<?= $item['id'] ?>">
                            <img src="../backend/assets/uploads/<?= $item['avatar'] ?>" alt="">
                        </a>
                    </div>
                    <h3 class="product-item__name"><?= $item['name'] ?></h3>
                </div>
                <?php endforeach; ?>
            </div>
            <div class="more-product"><a class="more-product__link"
                    href="index.php?controller=product&action=show&category_id=<?= $item['category_id'] ?>&brand_id=<?= $item['brand_id'] ?>">
                    Xem toàn bộ
                </a></div>
        </div>
        <?php endif; ?>
    </div>
</div>