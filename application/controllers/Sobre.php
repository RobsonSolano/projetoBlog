<?php
defined('BASEPATH') or exit('URL inválida.');

class Sobre extends CI_Controller
{

	public function index()
	{
		$data['titulo'] = "Sobre";
		$data['menu_ativo'] = "sobre";
		$data['descricao'] = "Saiba mais sobre nós";
		//Carrega a view
		$this->load->view('template/header', $data);
		$this->load->view('sobre/view_default');
		$this->load->view('template/footer');
	}
}
