<?php
defined('BASEPATH') OR exit ('Akses tidak diizinkan');

require APPPATH.'/libraries/REST_Controller.php';
require APPPATH.'libraries/Format.php';
use Restserver\Libraries\REST_Controller;

class Api extends REST_Controller {
	function __construct(){
		parent::__construct();
	}

	function student_get(){
		// $this->response('Halo ini adalah respon pertama RESTful');
		$id = $this->uri->segment(3); //ini keyword di postman nya unutk mengakses halamannya
		$user = array(
			1=>array('nama_depan'=>'Budi','nama_belakang'=>'Effendi'),
			2=>array('nama_depan'=>'Iwan','nama_belakang'=>'Mulya')
		);

		if (isset($user[$id])) {
			$this->response(array('status'=>'sukses','data'=>$user[$id]));
		}
		else{
			$this->response(array('status'=>'gagal','data'=>'User Tidak Ditemukan'),REST_Controller:: HTTP_NOT_FOUND);
		}
	}

	function kamar_get() {
		$this->load->model('Model_users');
		// $user = $this->Model_users->get_by(array('id'=>$id));
		$kamar = $this->Model_users->get_all();

		if (isset($kamar)) {
			$this->response(array('status'=>'sukses', 'data'=>$kamar));
		}
		else {
			$this->response(array('status'=>'gagal', 'data'=>'Data Tidak Ditemukan'), REST_controller::HTTP_NOT_FOUND);
		}
	}
	// 	$id = $this->uri->segment(3);
	// 	$this->load->model('Model_users');
	// 	$user = $this->Model_users->get_by(array('id' => $id));
	// 	if (isset($user['id'])) {
	// 		$this->response(array('status' => 'sukses','data' =>$user));
	// 	}
	// 	else{
	// 		$this->response(array('status' => 'gagal', 'data' => 'User tidak ditemukan'),REST_Controller:: HTTP_NOT_FOUND);
	// 	}
	// }

	function kamar_put(){
		$this->load->library('form_validation');
		$this->form_validation->set_data($this->put());

		if($this->form_validation->run('users_put')!=false){
			$this->load->model('Model_users');
			$users = $this->put();
			$users_id = $this->Model_users->insert($users);
			
			if(!$users_id){
				$this->response(array('status'=>'gagal','data'=>'Terjadi Kesalahan Pada Saat Pembuatan Data'),REST_controller::HTTP_INTERNAL_SERVER_ERROR);
			}

			else{
				$this->response(array('status'=>'sukses','pesan'=>'Data Berhasil Dibuat'));
			}
		}

			else{
				$this->response(array('status'=>'gagal','data'=>$this->form_validation->get_errors_as_array()),
					REST_Controller::HTTP_BAD_REQUEST);
			}
		}
	}
?>	