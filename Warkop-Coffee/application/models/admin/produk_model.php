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

    public function getprod()
    {
        $this->db->select('count(id_produk) pro');
        return $this->db->get('produk')->result();
    }
 
}

/* End of file produk_model.php */
