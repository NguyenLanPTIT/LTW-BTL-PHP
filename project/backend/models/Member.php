<?php
require_once 'models/Model.php';

class Member extends Model {
    public $id;
    public $username;
    public $password;
    public $fullname;
    public $avatar;
    public $phone_number;
    public $address;
    public $email;
    public $created_at;
    public $updated_at;

    public $str_search;

    public function __construct() {
        parent::__construct();
        if (isset($_GET['username']) && !empty($_GET['username'])) {
            $username = addslashes($_GET['username']);
            $this->str_search .= " AND members.username LIKE '%$username%'";
        }
    }

    public function getAll() {
        $obj_select = $this->connection->prepare("SELECT * FROM members ORDER BY updated_at DESC, created_at DESC");
        $obj_select->execute();
        $users = $obj_select->fetchAll(PDO::FETCH_ASSOC);

        return $users;
    }

    public function getAllPagination($params = []) {
        $limit = $params['limit'];
        $page = $params['page'];
        $start = ($page - 1) * $limit;
        $obj_select = $this->connection->prepare("SELECT * FROM members WHERE TRUE $this->str_search
              ORDER BY created_at DESC
              LIMIT $start, $limit");

        $obj_select->execute();
        $users = $obj_select->fetchAll(PDO::FETCH_ASSOC);

        return $users;
    }

    public function getTotal() {
        $obj_select = $this->connection->prepare("SELECT COUNT(id) FROM members WHERE TRUE $this->str_search");
        $obj_select->execute();
        return $obj_select->fetchColumn();
    }

    public function getById($id) {
        $obj_select = $this->connection->prepare("SELECT * FROM members WHERE id = $id");
        $obj_select->execute();
        return $obj_select->fetch(PDO::FETCH_ASSOC);
    }

    public function getManagerByUsername($username) {
        $obj_select = $this->connection->prepare("SELECT * FROM members WHERE username='$username'");
        $obj_select->execute();
        return $obj_select->fetch(PDO::FETCH_ASSOC);
    }

    public function insertRegister() {
        $obj_insert = $this->connection->prepare("INSERT INTO managers(username, password, fullname, phone_number, address, email, jobs)
            VALUES(:username, :password, :fullname, :phone_number, :address, :email, :jobs)");
        $arr_insert = [
            ':username' => $this->username,
            ':password' => $this->password,
            ':fullname' => $this->fullname,
            ':phone_number' => $this->phone_number,
            ':address' => $this->address,
            ':email' => $this->email,
            ':jobs' => $this->jobs
        ];
        $is_insert = $obj_insert->execute($arr_insert);

        if($is_insert){
            $manager_id = $this->connection->lastInsertId();
            $obj_update_level = $this->connection->prepare("UPDATE managers SET `level`=:level WHERE id = $manager_id");
            $arr_update_level = [
                ':level' => 1
            ];

            if($manager_id == 1){
                $arr_update_level = [
                    ':level' => 3
                ];
            }

            $is_update_level = $obj_update_level->execute($arr_update_level);
            return $is_update_level;
        } else {
            return false;
        }
    }

    public function create() {
        $obj_insert = $this->connection->prepare("INSERT INTO members(username, password, fullname) VALUES(:username, :password, :fullname)");
        $arr_insert = [
            ':username' => $this->username,
            ':password' => $this->password,
            ':fullname' => $this->fullname,
        ];
        return $obj_insert->execute($arr_insert);
    }

    public function update($id) {
        $obj_update = $this->connection
            ->prepare("UPDATE members SET username=:username, password=:password, fullname=:fullname, phone_number=:phone_number, 
            address=:address, email=:email, avatar=:avatar, updated_at=:updated_at
             WHERE id = $id");
        $arr_update = [
            ':username' => $this->username,
            ':password' => $this->password,
            ':fullname' => $this->fullname,
            ':phone_number' => $this->phone_number,
            ':address' => $this->address,
            ':email' => $this->email,
            ':avatar' => $this->avatar,
            ':updated_at' => $this->updated_at
        ];
        $obj_update->execute($arr_update);

        return $obj_update->execute($arr_update);
    }
    public function delete($id){
        $obj_delete = $this->connection->prepare("DELETE FROM members WHERE id = $id");
        return $obj_delete->execute();
    }

    public function getManagerByUsernameAndPassword($username, $password) {
        $obj_select_username = $this->getManagerByUsername($username);

        if(empty($obj_select_username)){
            return false;
        } else {
            $hashed_pwd_check = password_verify($password, $obj_select_username['password']);
            if ($hashed_pwd_check) {
                return $obj_select_username;
            } else {
                return false;
            }
        }
    }

    public function getPercentNewUser() {
        $obj_user_new = $this->connection->prepare("SELECT * FROM members WHERE created_at < '2024-05-14' and created_at > '2024-05-01' ");
        $obj_user_new->execute();
        
        $obj_user = $this->connection->prepare("SELECT * FROM members");
        $obj_user->execute();
        // $percent = count($obj_user_new->fetchAll(PDO::FETCH_ASSOC));
        $percent = round(count($obj_user_new->fetchAll(PDO::FETCH_ASSOC)) / count($obj_user->fetchAll(PDO::FETCH_ASSOC)), 2) * 100;
        // $percent = (count($obj_user_new) / count($obj_user)) * 100;

        return $percent;
    } 
}
