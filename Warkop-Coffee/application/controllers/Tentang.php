<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Tentang extends CI_Controller {

    public function __construct()
    {
        parent::__construct();
        $this->load->library('session');
        $this->load->helper('form');
        $this->load->library('form_validation');
    }
    public function index()
    {
        $data['title'] = 'Tentang';
        $this->load->view('user/template/header', $data);
        $this->load->view('user/tentang', $data);
        $this->load->view('user/template/footer');
    }

}

/* End of file Tentang.php */

?>