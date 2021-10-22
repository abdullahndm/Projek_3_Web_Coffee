<?php

defined('BASEPATH') or exit('No direct script access allowed');

class trans_model extends CI_Model
{

    public function getUserTrans()
    {
        // return $this->db->get_where('transaksi', array('username' => $this->session->userdata('username')))->result();
    }

}

/* End of file trans_model.php */
