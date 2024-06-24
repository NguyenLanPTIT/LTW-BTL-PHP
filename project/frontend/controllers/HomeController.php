<?php
require_once 'C:\xampp\htdocs\PTIT-Web\project\frontend\models\Category.php';
require_once 'C:\xampp\htdocs\PTIT-Web\project\frontend\models\Product.php';
require_once 'C:\xampp\htdocs\PTIT-Web\project\frontend\models\Slide.php';
require_once 'C:\xampp\htdocs\PTIT-Web\project\frontend\controllers\Controller.php';

class HomeController extends Controller
{
    public function index()
    {
        $category_model = new Category();
        $product_model = new Product();
        $slide_model = new Slide();

        $categories = $category_model->getAllCategories();
        $slides = $slide_model->getSlides();
        $top_products = $product_model->getTopProducts();

        $coffee_coffee_limit = $product_model->getProductRandLimitByName('Cà phê', 'CÀ PHÊ', 4);

        $cake_cake_limit = $product_model->getProductRandLimitByName('Bánh ngọt', 'BÁNH', 4);


        $accessories_tra_limit = $product_model->getProductRandLimitByName('Các loại nước khác', 'trà', 4);
        $accessories_trasua_limit = $product_model->getProductRandLimitByName('Các loại nước khác', 'trà sữa', 4);
        $accessories_nuocep_limit = $product_model->getProductRandLimitByName('Các loại nước khác', 'nước ép', 4);

        $count_categories = $category_model->countCategories();
        $brands_coffee = $product_model->getBrandByCategoryName('Cà phê');
        $brands_phone = $product_model->getBrandByCategoryName('Bánh ngọt');
        $brands_accessories = $product_model->getBrandByCategoryName('Các loại nước khác');

        $this->content = $this->view('views/homes/index.php', [
            'categories' => $categories,
            'slides' => $slides,
            'count_categories' => $count_categories,
            'coffee_coffee_limit' => $coffee_coffee_limit,
            'cake_cake_limit' => $cake_cake_limit,
            'accessories_tra_limit' => $accessories_tra_limit,
            'accessories_trasua_limit' => $accessories_trasua_limit,
            'accessories_nuocep_limit' => $accessories_nuocep_limit,
            'top_products' => $top_products
        ]);

        require_once 'views/layouts/main.php';
    }
}