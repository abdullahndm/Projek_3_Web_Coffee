<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Home extends CI_Controller
{

    public function __construct()
    {
        parent::__construct();
        $this->load->library('session');
        $this->load->helper('security');
        $this->load->library('form_validation');
        $this->load->model('admin/user_model','user');
        $this->load->model('admin/transaksi_model','transaksi');
        $this->load->model('admin/produk_model','produk');
        
    }
    public function index()
    {
        $data['title'] = 'Dashboard';
        $data['customer'] = $this->user->getcustomer();
        $data['transaksi'] = $this->transaksi->gettrans();
        $data['pending'] = $this->transaksi->gettransp();
        $data['produk'] = $this->produk->getprod();
        $this->load->view('template/header_dash', $data);
        $this->load->view('admin/index', $data);
    }
}

/* End of file Home.php */
