<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Tjson extends CI_Controller {

	public function index() {
		$sumber = file_get_contents('http://localhost/hotel/api/kamar');
		
		$data = json_decode($sumber, true);
		$data['result'] = $data["data"];
		$this->load->view('tjson', $data);
	}

}
 ?>
