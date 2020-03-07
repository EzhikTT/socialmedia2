<?php
abstract class DbController {
    private static $DB_NAME = 'web0812';
    private static $DB_HOST = 'localhost';
    private static $DB_LOGIN = 'root';
    private static $DB_PASSWORD = '';

    protected $link = null;

    function __construct() {
        // var_dump('234');
        $this->connect();
        // $link = mysqli_connect(
        //     $this::$DB_HOST,
        //     $this::$DB_LOGIN,
        //     $this::$DB_PASSWORD,
        //     $this::$DB_NAME
        // );
        // var_dump($link);
    }

    function __destruct() {
        mysqli_close($this->link);
        $this->link = null;
    }

    private function connect() {
        // var_dump('2');
        // var_dump($this);
        // var_dump(DbController::$DB_HOST);
        $this->link = mysqli_connect(
            $this::$DB_HOST,
            $this::$DB_LOGIN,
            $this::$DB_PASSWORD,
            $this::$DB_NAME
        );
        // var_dump(mysqli_error($this->link));
    }

    public function login($login, $password) {
        // var_dump('login');
        $res = [];

        $login = htmlspecialchars($login);
        $password = htmlspecialchars($password);

        // var_dump($this->link);

        $query = "SELECT * FROM users WHERE LOGIN='$login' AND PASSWORD='$password' LIMIT 1";
        $resDb = mysqli_query($this->link, $query);

        // var_dump(mysqli_error($this->link));

        if($user = mysqli_fetch_assoc($resDb)){
            if($user['ACTIVE']){
                $query = "SELECT TOKEN FROM tokens WHERE LOGIN={$user['ID']} LIMIT 1";
                $resDb = mysqli_query($this->link, $query);
                if($token = mysqli_fetch_assoc($resDb)){
                    $res['token'] = $token['TOKEN'];
                }
                else{
                    $token = sha1($login . $password);
                    $query = "INSERT INTO tokens(TOKEN, LOGIN) VALUES ('$token', {$user['ID']})";
                    $resDb = mysqli_query($this->link, $query);
                    // if($resDb){
                        $res['token'] = $token;
                    // }
                }
            }
        }
        else{
            $query = "INSERT INTO users(LOGIN, PASSWORD) VALUES('$login', '$password')";
            mysqli_query($this->link, $query);
            $id = mysqli_insert_id($this->link);
            if($id > 0){
                $token = sha1($login . $password);
                $query = "INSERT INTO tokens(TOKEN, LOGIN) VALUES ('$token', $id)";
                $resDb = mysqli_query($this->link, $query);
                $res['token'] = $token;
            }
        }

        return $res;
    }

    abstract public function test();
}

$db = new DbController();

final class DbControllerApi extends DbController {
    function __construct() {
        parent::__construct();
    }

    public function test() {

    }
}

interface Api {
    public function connect();
}

class TestApi implements Api {
    public function connect() {

    }
}