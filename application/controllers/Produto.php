<?php
defined('BASEPATH') or exit('URL inválida.');

class Produto extends CI_Controller
{

	public function index()
	{

		$data['titulo'] = "Produto";
		$data['menu_ativo'] = "produto";
		$data['saudacao'] = saudacao();
		//Carrega a view
		$this->load->view('template/header', $data);
		$this->load->view('produto/view_default');
		$this->load->view('template/footer');
	}
}
