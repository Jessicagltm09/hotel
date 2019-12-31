<?php
defined('BASEPATH') OR exit ('No direct script access allowed');

class Model_users extends MY_Model{
	protected $_table = 'tbl_kamar';
	protected $primary_key = 'id';
	protected $return_type = 'array';
}

?>