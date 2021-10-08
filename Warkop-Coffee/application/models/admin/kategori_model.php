<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class kategori_model extends CI_Model {

    public function getAllKategori()
    {
        return $this->db->get('kategori')->result_array();
    }

}

/* End of file kategori_model.php */

?>