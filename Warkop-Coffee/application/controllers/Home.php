<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Home extends CI_Controller
{


    public function __construct()
    {
        parent::__construct();
        $this->load->model('user/home_model', 'home');
        $this->load->library('session');
    }

    public function index()
    {
        $data['title'] = 'Warkop Coffee | Dashboard';
        $data['bestseller'] = $this->home->getBestSellers();
        $this->load->view('user/template/headerlogin', $data);
        $this->load->view('user/template/carousel');
        $this->load->view('user/home', $data);
        $this->load->view('user/template/footer');
    }
}

/* End of file Home.php */
