<?php
defined('BASEPATH') or exit('URL inválida.');

/**
 * @property Blog_model $blog_model
 */
class Blog extends CI_Controller
{

	public function __construct()
	{
		parent::__construct();

		$this->load->model('blog_model');
		$this->load->helper('url_helper');
	}

	public function index()
	{

		$filtro = $this->_recuperar_filtro();

		$por_pagina = $this->config->item('per_page');
		$pagina = (!empty($filtro['pagina']) ? $filtro['pagina'] : 1);
		$offset = ($pagina == 1) ? 0 : ($pagina * $por_pagina - $por_pagina);

		$itens = $this->blog_model->listar(QUANTIDADE_PAGINACAO, $offset, $filtro);

		$data['total_resultados'] = $this->blog_model->get_total($filtro);

		$data['paginas'] = $this->_criar_paginacao($filtro, $data['total_resultados'], 'blog');

		$data['itens'] = $itens;

		$data['titulo'] = "Blog";

		$data['menu_ativo'] = 'blog';

		$categorias = $this->blog_model->categorias();

		$data['categorias'] = $categorias;

		$data['saudacao'] = saudacao();

		//Carrega a view
		$this->load->view('template/header', $data);
		$this->load->view('blog/view_default');
		$this->load->view('template/footer');
	}

	public function post($slug = "")
	{
		if (empty($slug)) {
			redirect(base_url('blog'));
		}

		$itens = $this->blog_model->post($slug);

		if (empty($itens)) {
			redirect(base_url('blog'));
		}
		$categorias = $this->blog_model->categorias();
		$data['categorias'] = $categorias;
		$data['relacionados'] = $this->blog_model->relacionados($itens->categoria_id, $itens->id);

		$data['item'] = $itens;
		$data['titulo'] = $itens->titulo;
		$data['menu_ativo'] = 'blog';
		$data['saudacao'] = saudacao();

		//Carrega a view
		$this->load->view('template/header', $data);
		$this->load->view('blog/view_post');
		$this->load->view('template/footer');
	}

	public function categoria()
	{

		$filtro = $this->_recuperar_filtro();
		if (empty($filtro['categoria'])) {
			redirect(base_url('blog'));
		}
		$por_pagina = $this->config->item('per_page');
		$pagina = (!empty($filtro['pagina']) ? $filtro['pagina'] : 1);
		$offset = ($pagina == 1) ? 0 : ($pagina * $por_pagina - $por_pagina);

		$itens = $this->blog_model->listar_por_categoria($filtro['categoria'], QUANTIDADE_PAGINACAO, $offset, $filtro);

		$data['total_resultados'] = $this->blog_model->get_total($filtro, $filtro['categoria']);

		$data['paginas'] = $this->_criar_paginacao($filtro, $data['total_resultados'], 'blog');

		if (empty($itens)) {
			redirect(base_url('blog'));
		}
		$data['itens'] = $itens;

		$data['relacionados'] = $this->blog_model->relacionados($itens[0]->categoria_id, $itens[0]->id);

		$categorias = $this->blog_model->categorias();
		$data['categorias'] = $categorias;

		$categoria = $this->blog_model->get_categoria($filtro['categoria']);

		$data['titulo'] = "Postagens sobre " . $categoria->nome;
		$data['menu_ativo'] = 'blog';
		//Carrega a view

		$this->load->view('template/header', $data);
		$this->load->view('blog/view_default');
		$this->load->view('template/footer');
	}

	private function _recuperar_filtro()
	{

		$filtros = [];

		$this->form_validation->set_data($this->input->get());

		$validation = array(
			array('field' => 'pesquisa', 'label' => 'Pesquisa', 'rules' => 'trim')
		);

		$this->form_validation->set_rules($validation);

		if ($this->form_validation->run()) {

			$filtros = $this->input->get();
		}

		return $filtros;
	}

	private function _criar_paginacao($filtro, $total_resultados, $base_url)
	{
		$config['base_url'] = base_url($base_url);

		// Configuração da Paginação para mostrar a página via GET
		if (isset($filtro['pagina'])) {
			unset($filtro['pagina']);
		}

		if (!empty($filtro)) {
			$config['suffix'] = '&' . http_build_query($filtro, '', "&");
			$config['first_url'] = $config['base_url'] . '?' . http_build_query($filtro, '', "&");
		}

		$config['total_rows'] = $total_resultados;
		$this->pagination->initialize($config);

		// Agora armazena todas as paginas na variavel de controle
		return $this->pagination->create_links();
	}
}
