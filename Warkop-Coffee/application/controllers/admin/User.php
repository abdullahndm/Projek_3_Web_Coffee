<?php

defined('BASEPATH') or exit('No direct script access allowed');

class User extends CI_Controller
{

    public function __construct()
    {
        parent::__construct();
        $this->load->library('session');
        $this->load->model('admin/user_model', 'user');
        $this->load->helper('security');
        $this->load->library('form_validation');
        
    }

    public function index()
    {
        $data['title'] = 'User';
        $data['user'] = $this->user->getAllUser();
        $this->load->view('template/adm_header', $data);
        $this->load->view('admin/user/index', $data);
        $this->load->view('template/adm_table_footer');
    }

    public function add()
    {
        $data['title'] = 'Tambah User';

        $this->form_validation->set_rules('user', 'User', 'required');
        $this->form_validation->set_rules('password', 'Password', 'required|numeric');
        $this->form_validation->set_rules('email', 'Email', 'required');
        $this->form_validation->set_rules('nama', 'Nama', 'required');
        $this->form_validation->set_rules('level', 'Level', 'required');

        if ($this->form_validation->run() == FALSE) {
            $this->load->view('template/adm_header', $data);
            $this->load->view('admin/user/add', $data);
            $this->load->view('template/adm_footer_form');
        } else {
            $upload = $this->user->upload();
            if ($upload['result'] == 'success') {
                $this->user->storeUser($upload);
                $this->session->set_flashdata('flash-data', 'ditambahkan');
                redirect('admin/user');
            } else {
                echo $upload['error'];
            }
        }
    }

    public function delete($id_user)
    {
        $this->user->delete($id_user);
        $this->session->set_flashdata('flash-data', 'dihapus');
        redirect('admin/user', 'refresh');
    }
    
    public function update($id_user)
    {
        $this->form_validation->set_rules('user', 'User', 'required');
        $data['title'] = 'Update User';
        $data['user'] = $this->user->getUserById($id_user);
        if ($this->form_validation->run() == FALSE) {
            $this->load->view('template/adm_header', $data);
            $this->load->view('admin/user/update', $data);
            $this->load->view('template/adm_footer_form');
        } else {
            $this->user->update($id_user, $data);
            $this->session->set_flashdata('flash-data', 'diupdate');
            redirect('admin/user', 'refresh');
        }
    }
}

/* End of file Login.php */
