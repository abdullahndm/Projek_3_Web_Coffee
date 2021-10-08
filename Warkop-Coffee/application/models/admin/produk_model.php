<?php

defined('BASEPATH') or exit('No direct script access allowed');

class produk_model extends CI_Model
{

    public function getAllProduk()
    {
        $this->db->select('p.*,k.kategori');
        $this->db->join('kategori k', 'p.id_kategori = k.id_kategori');
        return $this->db->get('produk p')->result_array();
    }
 
}

/* End of file produk_model.php */
