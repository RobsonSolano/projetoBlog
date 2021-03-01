<?php
defined('BASEPATH') or exit('URL inválida.');

/**
 * @property Usuario_model $usuario_model
 */
class Usuario extends CI_Controller
{
	public function __construct()
	{
		parent::__construct();
		$this->load->model('usuario_model');
		$this->load->library('form_validation');
	}

	public function index()
	{
		$this->login();
	}

	public function cadastro()
	{
		$data['titulo'] = "Cadastro";
		$data['menu_ativo'] = "area_menbros";
		$data['descricao'] = "Cadastre-se agora mesmo e faça parte dessa familia.";
		//Carrega a view
		$this->load->view('template/header', $data);
		$this->load->view('usuario/view_cadastro');
	}

	public function login()
	{
		$data['titulo'] = "Acesse";
		$data['menu_ativo'] = "area_menbros";
		$data['descricao'] = "Acesse agora mesmo e aproveite nossos serviços.";
		//Carrega a view
		$this->load->view('template/header', $data);
		$this->load->view('usuario/view_login');
	}

	public function salvar_cadastro()
	{

		$form = $this->input->post();

		//Definir regras
		$this->form_validation->set_message('required', 'Campo %s é obrigatório');

		$this->form_validation->set_rules('nome', 'nome', 'trim|required');
		$this->form_validation->set_rules('email', 'e-mail', 'trim|required');
		$this->form_validation->set_rules('senha', 'senha', 'trim|required');

		if ($this->form_validation->run() === FALSE) {
			$this->cadastro();
		} else {

			$usuario = $this->usuario_model->valida_email($form['email']);

			if ($usuario > 0) {
				$msg = "E-mail já cadastrado, por favor utilize outro.";
				$this->session->set_flashdata('msg_retorno', ['message' => $msg, 'type' => 'danger']);
				redirect(base_url('usuario/cadastro'));
			}

			if ($this->usuario_model->salvar($form)) {
				$msg = "Cadastro realizado com sucesso.";
				$this->session->set_flashdata('msg_retorno', ['message' => $msg, 'type' => 'success']);
				redirect(base_url('usuario/login'));
			} else {
				$msg = "Falha ao efetuar cadastro, tente novamente.";
				$this->session->set_flashdata('msg_retorno', ['message' => $msg, 'type' => 'danger']);
				redirect(base_url('usuario/cadastro'));
			}
		}
	}

	public function logar()
	{

		$form = $this->input->post();

		//Definir regras
		$this->form_validation->set_message('required', 'Campo %s é obrigatório');

		$this->form_validation->set_rules('email', 'e-mail', 'trim|required');
		$this->form_validation->set_rules('senha', 'senha', 'trim|required');

		if ($this->form_validation->run() === FALSE) {
			$this->login();
		} else {

			if ($this->usuario_model->login($form)) {
				redirect(base_url('inicio'));
			} else {
				$msg = "E-mail ou senha incorreto, tente novamente.";
				$this->session->set_flashdata('msg_retorno', ['message' => $msg, 'type' => 'danger']);
				redirect(base_url('usuario/login'));
			}
		}
	}

	public function logout()
	{
		if ($this->usuario_model->logout()) {
			redirect(base_url('usuario/login'));
		}
	}
}
