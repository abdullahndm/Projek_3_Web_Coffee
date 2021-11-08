<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class tentang extends CI_Controller {

    public function index()
    {
        $data['title'] = 'Tentang';
        $this->load->view('user/template/headerlogin', $data);
        // $this->load->view('user/template/carousel');
        $this->load->view('user/tentang', $data);
        $this->load->view('user/template/footer');
    }

}

/* End of file Sejarahkopi.php */


?>