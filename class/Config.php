<?php
class Config
{	 
	private static $INSTANCE=null;
	private $connect;
	
	public function __construct()
	{	
		$this->connect = new PDO("mysql:host=localhost;dbname=laravel","root","root");		
		
	}

	/*SINGLETON-PATTERN*/
  public static function getInstance()
  {
    if(!isset(self::$INSTANCE) ){
      self::$INSTANCE = new Config();
    }
    return self::$INSTANCE;
  }

  /*FUNGSI total_records() UNTUK MENGHITUNG BANYAKNYA DATA DALAM TABEL*/
	public function total_records()
	{
		$stmt = $this->connect->prepare("SELECT id FROM blogs");
		$stmt->execute();
		return $stmt->rowCount();
	}

	/*FUNGSI get_data() UNTUK MENAMPILKAN DATA DI HALAMAN BROWSER*/
	public function get_data($start,$limit)
	{	 
		
		$stmt = $this->connect->prepare("SELECT * FROM blogs LIMIT $start,$limit"); 

		$stmt->execute();
		return $stmt->fetchAll(PDO::FETCH_OBJ);
	}


}

?>