<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Kategori extends CI_Controller
{

    public function __construct()
    {
        parent::__construct();
        $this->load->library('session');
        $this->load->model('admin/kategori_model', 'kategori');
        $this->load->helper('security');
        $this->load->library('form_validation');
    }

    public function index()
    {
        $data['title'] = 'Kategori';
        $data['kategori'] = $this->kategori->getAllKategori();
        $this->load->view('template/adm_header', $data);
        $this->load->view('admin/kategori/index', $data);
        $this->load->view('template/adm_table_footer');
    }

   
}

/* End of file Kategori.php */
