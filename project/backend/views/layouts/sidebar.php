<!-- Main Sidebar Container -->
<aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="" class="brand-link">
        <img src="assets/dist/img/logo.jpg" alt="Lan Nguyễn Shop" class="brand-image img-circle elevation-3"
            style="opacity: .8">
        <span class="brand-text font-weight-light">Lan Nguyễn Shop</span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
        <!-- Sidebar user (optional) -->
        <div class="user-panel mt-3 pb-3 mb-3 d-flex">
            <div class="pull-left image">
            </div>
            <div class="pull-left info">
                <p style="margin-bottom: 4px; color: #ffffff"><?php echo $username; ?></p>
                <a href="#"><i class="fa fa-circle text-success"></i> Đang hoạt động</a>
            </div>
        </div>

        <!-- Sidebar Menu -->
        <nav class="mt-2">
            <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
                <li class="nav-item header" style="color: #ffffff">Danh mục quản lí</li>
                <li class="nav-item">
                    <a class="nav-link" href="index.php?controller=category&action=index">
                        <i class="fa fa-th"></i> <span>Quản lý danh mục</span>
                        <span class="pull-right-container">
                        </span>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="index.php?controller=product&action=index">
                        <i class="fa fa-code"></i> <span>Quản lý sản phẩm</span>
                        <span class="pull-right-container">
                        </span>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="index.php?controller=order&action=index">
                        <i class="fa fa-shopping-cart" aria-hidden="true"></i> <span>Quản lý đơn hàng</span>
                        <span class="pull-right-container"></span>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="index.php?controller=manager&action=index">
                        <i class="fa fa-user-cog" aria-hidden="true"></i> <span>Quản lý tài khoản</span>
                        <span class="pull-right-container"></span>
                    </a>
                </li>

                <li class="nav-item">
                    <a class="nav-link" href="index.php?controller=member&action=index">
                        <i class="fa fa-user" aria-hidden="true"></i> <span>Quản lý khách hàng</span>
                        <span class="pull-right-container"></span>
                    </a>
                </li>

                <li class="nav-item">
                    <a class="nav-link" href="index.php?controller=static&action=index">
                        <i class="fa fa-user" aria-hidden="true"></i> <span>Thống kê về khách hàng</span>
                        <span class="pull-right-container"></span>
                    </a>
                </li>
            </ul>
        </nav>
    </div>
</aside>