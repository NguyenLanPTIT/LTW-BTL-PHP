<div id="g10-section-header" class="section-header">
    <header id="header" class="section-header__top">
        <div class="container">
            <div class="row inner">
                <div class="col-md-6 p-10 inner__item inner__item--left">
                    <div class="header-logo">
                        <a class="header-logo__link" href="index.php?controller=home"></a>
                    </div>
                </div>
                <div class="col-md-6 p-10 inner__item inner__item--right g10-section">

                    <?php if (isset($_COOKIE['user'])):
                        $user = json_decode($_COOKIE['user'], true);
                        ?>
                    <div class="user" id="user--<?= $user['id'] ?>">
                        <div style="margin-right: 10px;">
                            <p>Tài khoản</p>
                        </div>
                        <div class="user__block user__info">
                            <p id="username"><?= $user['username'] ?></p>
                            <div class="sub-block">
                                <a href="index.php?controller=user&action=logout">Đăng xuất</a>
                            </div>
                        </div>
                    </div>
                    <?php else: ?>
                    <div class="text-right text-link">
                        <a id="user-login-link" href="index.php?controller=user&action=login">Đăng nhập</a>
                        <span>|</span>
                        <a id="user-register-link" href="index.php?controller=user&action=register">Đăng ký</a>
                    </div>
                    <?php endif; ?>

                    <div class="row">
                        <div class="col-md-8 p-10 search-section">
                            <form class="search-section__form" action="" method="get">
                                <input type="hidden" name="controller" value="product">
                                <input type="hidden" name="action" value="all">
                                <div class="form-group row search-section__form-main">
                                    <input id="search-input" type="text" name="search_title" class="col-md-10 p-10"
                                        value="<?php echo isset($_GET['search_title']) ? $_GET['search_title'] : '' ?>"
                                        placeholder="Tìm kiếm...">
                                    <button id="search-btn" type="submit" name="search"
                                        class="col-md-2 p-10 btn float-right"><i class="fas fa-search"></i></button>
                                </div>
                            </form>
                        </div>
                        <div class="col-md-4 p-10 cart-section">
                            <a title="Giỏ hàng" href="index.php?controller=cart&action=index">
                                <i class="fas fa-shopping-cart"></i>
                                <span>Giỏ hàng</span>
                                <?php if (isset($_SESSION['cart']) && !empty($_SESSION['cart'])): ?>
                                <span id="cart-quantity"></span>
                                <?php endif; ?>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </header>
    <div id="mobile-nav" class="g10-section-mobile">
        <div class="row">
            <div class="col-4 p-10">
                <button type="button" class="mobile-link menu-toggle" data-toggle="#toggleSection">
                    <i class="fas fa-bars"></i>
                    <span>Menu</span>
                </button>
            </div>
            <div class="col-4 p-10">
                <?php if (isset($_COOKIE['user'])):
                    $user = json_decode($_COOKIE['user'], true);
                    ?>
                <div class="user" id="user--<?= $user['id'] ?>">
                    <div class="user__block user__info">
                        <?php if (empty($user['avatar'])): ?>
                        <img id="user--image"
                            src="https://upload.wikimedia.org/wikipedia/commons/thumb/7/7c/User_font_awesome.svg/1200px-User_font_awesome.svg.png"
                            alt="<?= $user['fullname'] ?>">
                        <?php else: ?>
                        <img id="user--image" src="../backend/assets/uploads/<?= $user['avatar'] ?>"
                            alt="<?= $user['fullname'] ?>">
                        <?php endif; ?>
                        <p id="username"><?= $user['username'] ?></p>
                        <div class="sub-block">
                            <a href="index.php?controller=user&action=logout">Đăng xuất</a>
                        </div>
                    </div>
                </div>
                <?php else: ?>
                <div class="mobile-link text-center text-link">
                    <a id="user-login-link" href="index.php?controller=user&action=login">Đăng nhập</a>
                    <span>|</span>
                    <a id="user-register-link" href="index.php?controller=user&action=register">Đăng ký</a>
                </div>
                <?php endif; ?>
            </div>
            <div class="col-4 p-10 text-right">
                <a title="Giỏ hàng" class="mobile-link cart-toggle" href="index.php?controller=cart">
                    <i class="fas fa-shopping-cart"></i>
                    <span>Giỏ hàng</span>
                    <?php if (isset($_SESSION['cart']) && !empty($_SESSION['cart'])): ?>
                    <span id="cart-quantity"></span>
                    <?php endif; ?>
                </a>
            </div>
        </div>
    </div>
    <?php if (!empty($categories)): ?>
    <nav id="nav-bar" class="navbar navbar-expand-md text-uppercase section-header__bottom g10-section">
        <div class="container">
            <div class="inner categories-menu">
                <ul class="navbar-nav inner__item categories-menu--ul">
                    <?php
                        $active_home_link = '';
                        if (!isset($_GET['controller']) || (isset($_GET['controller']) && $_GET['controller'] == 'home')) {
                            $active_home_link = 'active';
                        } else {
                            $active_home_link = '';
                        }
                        ?>
                    <li class="nav-item categories-menu--li">
                        <a href="index.php?controller=home" class="nav-link <?= $active_home_link; ?>">trang chủ</a>
                    </li>
                    <?php foreach ($categories as $category):
                            $active = '';
                            if (isset($_GET['category_id']) && $_GET['category_id'] == $category['id']) {
                                $active = 'active';
                            }
                            ?>
                    <li class="nav-item categories-menu--li">
                        <a href="index.php?controller=product&action=index&category_id=<?= $category['id'] ?>"
                            class="nav-link <?= $active ?>" data-category-id="<?= $category['id'] ?>">
                            <?= $category['name'] ?>
                        </a>

                        <?php if ($category['name'] == 'Cà phê'): ?>
                        <?php if (!empty($brands_coffee)): ?>
                        <div class="sub-menu">
                            <ul class="sub-menu__ul">
                                <?php foreach ($brands_coffee as $brand): ?>
                                <li class="sub-menu__li">
                                    <a class="nav-link"
                                        href="index.php?controller=product&action=show&category_id=<?= $category['id'] ?>&brand_id=<?= $brand['brand_id'] ?>">
                                        <?= $brand['brand_name'] ?>
                                    </a>
                                </li>
                                <?php endforeach; ?>
                            </ul>
                        </div>
                        <?php endif; ?>

                        <?php elseif ($category['name'] == 'Bánh ngọt'): ?>
                        <?php if (!empty($brands_cake)): ?>
                        <div class="sub-menu">
                            <ul class="sub-menu__ul">
                                <?php foreach ($brands_cake as $brand): ?>
                                <li class="sub-menu__li">
                                    <a class="nav-link"
                                        href="index.php?controller=product&action=show&category_id=<?= $category['id'] ?>&brand_id=<?= $brand['brand_id'] ?>">
                                        <?= $brand['brand_name'] ?>
                                    </a>
                                </li>
                                <?php endforeach; ?>
                            </ul>
                        </div>
                        <?php endif; ?>

                        <?php elseif ($category['name'] == 'Các loại nước khác'): ?>
                        <?php if (!empty($brands_accessories)): ?>
                        <div class="sub-menu">
                            <ul class="sub-menu__ul">
                                <?php foreach ($brands_accessories as $brand): ?>
                                <li class="sub-menu__li">
                                    <a class="nav-link"
                                        href="index.php?controller=product&action=show&category_id=<?= $category['id'] ?>&brand_id=<?= $brand['brand_id'] ?>">
                                        <?= $brand['brand_name'] ?>
                                    </a>
                                </li>
                                <?php endforeach; ?>
                            </ul>
                        </div>
                        <?php endif; ?>
                        <?php endif; ?>
                    </li>
                    <?php endforeach; ?>
                    <?php
                        if (isset($_GET['controller']) && $_GET['controller'] == 'product') {
                            if (isset($_GET['action']) && $_GET['action'] == 'price_range') {
                                $get_category_name = $_GET['category_name'];
                                $active_coffee_range = '';
                                $active_cake_range = '';
                                if ($get_category_name == 'Cà phê') {
                                    $active_coffee_range = 'active';
                                } elseif ($get_category_name == 'Bánh ngọt') {
                                    $active_cake_range = 'active';
                                } else {
                                    $active_accessories_range = 'active';
                                }

                            }
                        }
                        ?>

                    <div class="  nav-item categories-menu--li price-range__menu">
                        <a class="  nav-link">Menu theo khoảng giá</a>
                        <div class="sub-menu">
                            <ul class="sub-menu__ul">
                                <li class="sub-menu__li">
                                    <a href="index.php?controller=product&action=price_range&category_name=Cà phê&min_price=1&max_price=999999999"
                                        class="price-range__link nav-link price-range--2-4">Cà phê
                                    </a>
                                </li>
                                <li class="sub-menu__li">
                                    <a href="index.php?controller=product&action=price_range&category_name=Bánh ngọt&min_price=1&max_price=999999999"
                                        class="price-range__link nav-link price-range--4-8">
                                        Bánh ngọt
                                    </a>
                                </li>
                                <li class="sub-menu__li">
                                    <a href="index.php?controller=product&action=price_range&category_name=Các loại nước khác&min_price=1&max_price=999999999"
                                        class="price-range__link nav-link price-range--8-12">
                                        Các loại nước khác
                                    </a>
                                </li>

                            </ul>
                        </div>

                    </div>
                </ul>
            </div>
        </div>
    </nav>
    <section id="toggleSection" class="g10-section-mobile section-toggle">
        <i class="far fa-times-circle"></i>
        <div class="row search-section">
            <form class="search-section__form" action="" method="get">
                <input type="hidden" name="controller" value="product">
                <input type="hidden" name="action" value="all">
                <div class="form-group row search-section__form-main">
                    <input id="search-input" type="text" name="search_title" class="col-11 p-10"
                        value="<?php echo isset($_GET['search_title']) ? $_GET['search_title'] : '' ?>"
                        placeholder="Tìm kiếm...">
                    <button id="search-btn" type="submit" name="search" class="col-1 p-10 btn float-right"><i
                            class="fa-solid fa-magnifying-glass"></i></button>
                </div>
            </form>
        </div>
        <nav id="mobileNavBar" class="navbar text-uppercase categories-menu">
            <ul class="w-100 navbar-nav categories-menu--ul">
                <li class="nav-item categories-menu--li">
                    <a href="index.php?controller=home" class="nav-link">trang chủ</a>
                </li>
                <?php foreach ($categories as $category): ?>
                <li class="nav-item categories-menu--li">
                    <a class="nav-link" data-category-id="<?= $category['id'] ?>"><?= $category['name'] ?></a>
                    <?php if ($category['name'] == 'Cà phê'): ?>
                    <?php if (!empty($brands_coffee)): ?>
                    <div class="sub-menu">
                        <ul class="sub-menu__ul">
                            <?php foreach ($brands_coffee as $brand): ?>
                            <li class="sub-menu__li">
                                <a class="nav-link"
                                    href="index.php?controller=product&action=show&category_id=<?= $category['id'] ?>&brand_id=<?= $brand['brand_id'] ?>">
                                    <?= $brand['brand_name'] ?>
                                </a>
                            </li>
                            <?php endforeach; ?>
                        </ul>
                    </div>
                    <?php endif; ?>
                    <?php elseif ($category['name'] == 'Bánh ngọt'): ?>
                    <?php if (!empty($brands_cake)): ?>
                    <div class="sub-menu">
                        <ul class="sub-menu__ul">
                            <?php foreach ($brands_cake as $brand): ?>
                            <li class="sub-menu__li">
                                <a class="nav-link"
                                    href="index.php?controller=product&action=show&category_id=<?= $category['id'] ?>&brand_id=<?= $brand['brand_id'] ?>">
                                    <?= $brand['brand_name'] ?>
                                </a>
                            </li>
                            <?php endforeach; ?>
                        </ul>
                    </div>
                    <?php endif; ?>
                    <?php elseif ($category['name'] == 'Các loại bánh khác'): ?>
                    <?php if (!empty($brands_accessories)): ?>
                    <div class="sub-menu">
                        <ul class="sub-menu__ul">
                            <?php foreach ($brands_accessories as $brand): ?>
                            <li class="sub-menu__li">
                                <a class="nav-link"
                                    href="index.php?controller=product&action=show&category_id=<?= $category['id'] ?>&brand_id=<?= $brand['brand_id'] ?>">
                                    <?= $brand['brand_name'] ?>
                                </a>
                            </li>
                            <?php endforeach; ?>
                        </ul>
                    </div>
                    <?php endif; ?>
                    <?php endif; ?>
                </li>
                <?php endforeach; ?>
                <!-- <li class="nav-item categories-menu--li price-range__menu">
                    <a class="nav-link">Cà phê theo khoảng giá</a>
                    <div class="sub-menu">
                        <ul class="sub-menu__ul">
                            <li class="sub-menu__li">
                                <a href="index.php?controller=product&action=price_range&category_name=Cà phê&min_price=1&max_price=20000"
                                    class="price-range__link nav-link price-range--2-4">
                                    < 20.000đ </a>
                            </li>
                            <li class="sub-menu__li">
                                <a href="index.php?controller=product&action=price_range&category_name=Cà phê&min_price=20000&max_price=40000"
                                    class="price-range__link nav-link price-range--4-8">
                                    20.000đ - 40.000đ
                                </a>
                            </li>
                            <li class="sub-menu__li">
                                <a href="index.php?controller=product&action=price_range&category_name=Cà phê&min_price=40000&max_price=60000"
                                    class="price-range__link nav-link price-range--8-12">
                                    40.000đ - 60.000đ
                                </a>
                            </li>
                            <li class="sub-menu__li">
                                <a href="index.php?controller=product&action=price_range&category_name=Cà phê&min_price=60000&max_price=80000"
                                    class="price-range__link nav-link price-range--12-16">
                                    50.000đ - 80.000đ
                                </a>
                            </li>
                            <li class="sub-menu__li">
                                <a href="index.php?controller=product&action=price_range&category_name=Cà phê&min_price=80000&max_price=100000"
                                    class="price-range__link nav-link price-range--16-20">
                                    80.000đ - 100.000đ
                                </a>
                            </li>
                            <li class="sub-menu__li">
                                <a href="index.php?controller=product&action=price_range&category_name=Cà phê&min_price=20000000&max_price=100000"
                                    class="price-range__link nav-link price-range--20+">
                                    100.000đ+
                                </a>
                            </li>
                        </ul>
                    </div>
                </li>
                <li class="nav-item categories-menu--li price-range__menu">
                    <a class="nav-link">Bánh ngọt theo khoảng giá</a>
                    <div class="sub-menu">
                        <ul class="sub-menu__ul">
                            <li class="sub-menu__li">
                                <a href="index.php?controller=product&action=price_range&category_name=Bánh ngọt&min_price=1&max_price=20000"
                                    class="price-range__link nav-link price-range--2-4">
                                    < 20.000đ </a>
                            </li>
                            <li class="sub-menu__li">
                                <a href="index.php?controller=product&action=price_range&category_name=Bánh ngọt&min_price=20000&max_price=40000"
                                    class="price-range__link nav-link price-range--4-8">
                                    20.000đ - 40.000đ
                                </a>
                            </li>
                            <li class="sub-menu__li">
                                <a href="index.php?controller=product&action=price_range&category_name=Bánh ngọt&min_price=40000&max_price=60000"
                                    class="price-range__link nav-link price-range--8-12">
                                    40.000đ - 60.000đ
                                </a>
                            </li>
                            <li class="sub-menu__li">
                                <a href="index.php?controller=product&action=price_range&category_name=Bánh ngọt&min_price=60000&max_price=80000"
                                    class="price-range__link nav-link price-range--12-16">
                                    50.000đ - 80.000đ
                                </a>
                            </li>
                            <li class="sub-menu__li">
                                <a href="index.php?controller=product&action=price_range&category_name=Bánh ngọt&min_price=80000&max_price=100000"
                                    class="price-range__link nav-link price-range--16-20">
                                    80.000đ - 100.000đ
                                </a>
                            </li>
                            <li class="sub-menu__li">
                                <a href="index.php?controller=product&action=price_range&category_name=Bánh ngọt&min_price=20000000&max_price=100000"
                                    class="price-range__link nav-link price-range--20+">
                                    100.000đ+
                                </a>
                            </li>
                        </ul>
                    </div>
                </li>
                <li class="nav-item categories-menu--li price-range__menu">
                    <a class="nav-link">Các loại nước khác theo khoảng giá</a>
                    <div class="sub-menu">
                        <ul class="sub-menu__ul">
                            <li class="sub-menu__li">
                                <a href="index.php?controller=product&action=price_range&category_name=Các loại nước khác&min_price=1&max_price=20000"
                                    class="price-range__link nav-link price-range--2-4">
                                    < 20.000đ </a>
                            </li>
                            <li class="sub-menu__li">
                                <a href="index.php?controller=product&action=price_range&category_name=Các loại nước khác&min_price=20000&max_price=40000"
                                    class="price-range__link nav-link price-range--4-8">
                                    20.000đ - 40.000đ
                                </a>
                            </li>
                            <li class="sub-menu__li">
                                <a href="index.php?controller=product&action=price_range&category_name=Các loại nước khác&min_price=40000&max_price=60000"
                                    class="price-range__link nav-link price-range--8-12">
                                    40.000đ - 60.000đ
                                </a>
                            </li>
                            <li class="sub-menu__li">
                                <a href="index.php?controller=product&action=price_range&category_name=Các loại nước khác&min_price=60000&max_price=80000"
                                    class="price-range__link nav-link price-range--12-16">
                                    50.000đ - 80.000đ
                                </a>
                            </li>
                            <li class="sub-menu__li">
                                <a href="index.php?controller=product&action=price_range&category_name=Các loại nước khác&min_price=80000&max_price=100000"
                                    class="price-range__link nav-link price-range--16-20">
                                    80.000đ - 100.000đ
                                </a>
                            </li>
                            <li class="sub-menu__li">
                                <a href="index.php?controller=product&action=price_range&category_name=Các loại nước khác&min_price=20000000&max_price=100000"
                                    class="price-range__link nav-link price-range--20+">
                                    100.000đ+
                                </a>
                            </li>
                        </ul>
                    </div>
                </li> -->
            </ul>
        </nav>
    </section>
    <?php endif; ?>
</div>

<script type="text/javascript">
load_cart_data();

function load_cart_data() {
    $.ajax({
        url: 'index.php?controller=cart&action=fetch_cart',
        method: 'POST',
        dataType: 'json',
        success: function(data) {
            $('.section-header #cart-quantity').text(data);
        }
    });
}
</script>