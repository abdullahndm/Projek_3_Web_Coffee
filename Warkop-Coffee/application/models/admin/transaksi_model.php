<?php

defined('BASEPATH') or exit('No direct script access allowed');

class transaksi_model extends CI_Model
{

    public function getTransaksiSukses()
    {
        $this->db->select('t.*, l.username');
        $this->db->join('login l', 't.username = l.username');
        $this->db->where('t.status', '0');
        return $this->db->get('transaksi t')->result_array();
    }
    public function getTransaksiPending(){
        $this->db->select('t.*, l.username');
        $this->db->join('login l', 't.username = l.username');
        $this->db->where('t.status', '2');
        return $this->db->get('transaksi t')->result_array();
    }
 
    public function getTransaksiUser($id){
        $this->db->select('t.*,l.*');
        $this->db->join('login l', 't.username = l.username');
        $this->db->where('t.id_transaksi', $id);
        return $this->db->get('transaksi t')->result_array();
    }
    public function getPengiriman($id){
        $this->db->select('t.*,p.*');
        $this->db->join('transaksi t', 't.id_transaksi = p.id_transaksi');
        $this->db->where('p.id_transaksi', $id);
        return $this->db->get('pengiriman p')->result_array();
    }
 
}

/* End of file transaksi_model.php */
