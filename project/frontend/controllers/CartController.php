<?php
require_once 'models/Category.php';
require_once 'models/Product.php';
require_once 'controllers/Controller.php';

class CartController extends Controller {
    public function add(){
        if(isset($_POST['add_cart'])){
            $product_id = $_POST['product_id'];

            $product_model = new Product();
            $product = $product_model->getProductById($product_id);
            $product_variants = $product_model->getProductVariantsById($product_id);

            if(!empty($product_variants)){
                $product_variant_value = isset($_POST['variant_value']) ? $_POST['variant_value'] : [];
                $product_cart = [];

                if(empty($product_variant_value)){
                    $_SESSION['error'] = 'Vui lòng chọn thể loại sản phẩm';
                    header("Location: index.php?controller=product&action=detail&category_id=". $product['category_id'] . "&brand_id=" . $product['brand_id'] . "&product_id=$product_id");
                } else {
                    foreach ($product_variant_value as $value){
                        $product_cart[$value] = [
                            'name' => $product['name'],
                            'price' => $product['price'],
                            'avatar' => $product['avatar'],
                            'amount' => 1
                        ];
                    }
                    if(!isset($_SESSION['cart'])){
                        $_SESSION['cart'][$product_id] = $product_cart;
                    } else {
                        if(!array_key_exists($product_id, $_SESSION['cart'])){
                            $_SESSION['cart'][$product_id] = $product_cart;
                        } else {
                            foreach ($product_variant_value as $variant_id){
                                if(array_key_exists($variant_id, $_SESSION['cart'][$product_id])){
                                    $_SESSION['cart'][$product_id][$variant_id]['amount']++;
                                } else {
                                    $_SESSION['cart'][$product_id][$variant_id] = $product_cart[$variant_id];
                                }
                            }
                        }
                    }

                    header("Location: index.php?controller=cart&action=index");
                    exit();
                }
            } else {
                $product_cart = [
                    'name' => $product['name'],
                    'price' => $product['price'],
                    'avatar' => $product['avatar'],
                    'amount' => 1
                ];

                if (!isset($_SESSION['cart'])) {
                    $_SESSION['cart'][$product_id] = $product_cart;
                } else {
                    if (!array_key_exists($product_id, $_SESSION['cart'])) {
                        $_SESSION['cart'][$product_id] = $product_cart;
                    } else {
                        $_SESSION['cart'][$product_id]['amount']++;
                    }
                }
                header("Location: index.php?controller=cart&action=index");
                exit();
            }
        }  
    }

    public function index(){
        $product_variants = [];
        if (!isset($_SESSION['cart'])) {
            $_SESSION['error'] = 'Không có sản phẩm nào trong giỏ hàng';
        } else {
            $product_variants = [];
            $product_model = new Product();

            foreach ($_SESSION['cart'] as $product_id => $product){
                $product_variants[$product_id] = $product_model->getProductVariantsById($product_id);
            }
        }

        $product_model = new Product();
        $category_model = new Category();
        $categories = $category_model->getAllCategories();
        $brands_coffee = $product_model->getBrandByCategoryName('cà phê');
        $brands_cake = $product_model->getBrandByCategoryName('bánh ngọt');
        $brands_accessories = $product_model->getBrandByCategoryName('các loại nước khác');

        $this->content = $this->view('views/carts/index.php', [
            'product_variants' => $product_variants
        ]);
        require_once 'views/layouts/main.php';
    }

    public function update(){
        if(isset($_POST['product_id']) && isset($_POST['variant_value_id']) && isset($_POST['num'])){
            if(isset($_SESSION['cart'])){
                $cart = $_SESSION['cart'];
                $product_id = $_POST['product_id'];
                if(!empty($_POST['variant_value_id'])){
                    $variant_value_id = $_POST['variant_value_id'];
                    if(array_key_exists($product_id, $cart)){
                        if($_POST['num']>0){
                            $cart[$product_id][$variant_value_id] = [
                                'name' => $cart[$product_id][$variant_value_id]['name'],
                                'price' => $cart[$product_id][$variant_value_id]['price'],
                                'avatar' => $cart[$product_id][$variant_value_id]['avatar'],
                                'amount' => $_POST['num']
                            ];
                        } else {
                            unset($cart[$product_id][$variant_value_id]);
                        }
                        $_SESSION['cart'] = $cart;
                    }
                    if(empty($_SESSION['cart'][$product_id])){
                        unset($_SESSION['cart'][$product_id]);
                    }
                    if(empty($_SESSION['cart'])){
                        unset($_SESSION['cart']);
                    }
                } else {
                    if(array_key_exists($product_id, $cart)){
                        if($_POST['num']>0){
                            $cart[$product_id] = [
                                'name' => $cart[$product_id]['name'],
                                'price' => $cart[$product_id]['price'],
                                'avatar' => $cart[$product_id]['avatar'],
                                'amount' => $_POST['num']
                            ];
                        } else {
                            unset($cart[$product_id]);
                        }
                        $_SESSION['cart'] = $cart;
                    }
                    if(empty($_SESSION['cart'])){
                        unset($_SESSION['cart']);
                    }
                }
            }
        }
    }

    public function fetch_cart(){
        $total_item = 0;
        if(!empty($_SESSION['cart'])){
            foreach ($_SESSION['cart'] as $product_id => $product){
                if (!array_key_exists('name', $product)){
                    foreach ($product as $variant_value_id => $item){
                        $total_item += $item['amount'];
                    }
                } else {
                    $total_item += $product['amount'];
                }
            }
        }

        echo json_encode($total_item);
    }
}