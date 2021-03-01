<?php
defined('BASEPATH') or exit('URL inválida.');

class Contato extends CI_Controller
{

	public function index()
	{

		$data['titulo'] = "Contato";
		$data['menu_ativo'] = "contato";
		$data['descricao'] = "Entre em contato.";
		//Carrega a view
		$this->load->view('template/header', $data);
		$this->load->view('contato/view_default');
		$this->load->view('template/footer');
	}
}
