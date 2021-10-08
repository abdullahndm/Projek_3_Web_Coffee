<?php

defined('BASEPATH') or exit('No direct script access allowed');

class User extends CI_Controller
{

    public function __construct()
    {
        parent::__construct();
        $this->load->library('session');
        $this->load->model('admin/user_model', 'user');
        $this->load->helper('security');
        $this->load->library('form_validation');
        
    }

    public function index()
    {
        $data['title'] = 'User';
        $data['user'] = $this->user->getAllUser();
        $this->load->view('template/adm_header', $data);
        $this->load->view('admin/user/index', $data);
        $this->load->view('template/adm_table_footer');
    }

   
}

/* End of file Login.php */
