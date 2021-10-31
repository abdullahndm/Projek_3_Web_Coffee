<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Sejarahkopi extends CI_Controller {

    public function index()
    {
        $data['title'] = 'Sejarah Kopi';
        $this->load->view('user/template/headerlogin', $data);
        // $this->load->view('user/template/carousel');
        $this->load->view('user/sejarahkopi', $data);
        $this->load->view('user/template/footer');
    }

}

/* End of file Sejarahkopi.php */


?>