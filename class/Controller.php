<?php  
class Controller
{

	protected $table,$total_records,$limit = 5;
	protected $config;

        //koneksi dari database
        public function __construct()
        {	
        	// $this->table = $table;
        	$this->config = Config::getInstance(); 
        	$this->total_records = $this->config->total_records();
        }   

     public function controller_get_data()
     {	
     	$start = 0;

			if ($this->current_page() > 1 ) {
				$start = ($this->current_page()*$this->limit) - $this->limit;
			}
			
     	return $this->config->get_data($start,$this->limit);
     }


	/*FUNGSI current_page() MENGAMBIL POSISI HALAMAN YANG SEDANG DITAMPILKAN*/
	public function current_page()
	{
		return isset($_GET['page']) ? (int)$_GET['page'] : 1;
	}

	/*FUNGSI get_pagination_numbers() MENGAMBIL TOTAL JUMLAH HALAMAN */
	public function get_pagination_numbers()
	{
		return ceil($this->total_records / $this->limit);	
	}

	/*FUNGSI PINDAH SATU HALAMAN SEBELUMNYA*/
	public function prev_page()	
	{		

		return ($this->current_page() != 1 ) ? $this->current_page() - 1 : 1;
	}

	/*FUNGSI PINDAH SATU HALAMAN SESUDAHNYA*/
	public function next_page()	
	{	
		return(	$this->current_page() < $this->get_pagination_numbers() ) ? $this->current_page() + 1 : $this->get_pagination_numbers();
	}

	public function is_active_page($i)
	{
		return ( $this->current_page() == $i ) ? 'active' : '' ; 		
	}

}

?>