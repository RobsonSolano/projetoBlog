<?php
defined('BASEPATH') or exit('URL inválida.');

class Inicio extends CI_Controller
{

	public function index()
	{

		$data['titulo'] = "Início";
		$data['menu_ativo'] = "início";
		$data['saudacao'] = saudacao();
		$data['descricao'] = "Este é um projeto de estudos em Codeigniter 3.";
		//Carrega a view
		$this->load->view('template/header', $data);
		$this->load->view('inicio/view_default');
		$this->load->view('template/footer');
	}
}
