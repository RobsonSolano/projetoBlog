<?php
defined('BASEPATH') or exit('URL inválida.');

class Blog_model extends CI_Model
{

	public function listar($limit = [], $offset = [], $filtro = [])
	{
		$sql = 'SELECT p.id, p.titulo,p.slug, p.introducao, p.data_cadastro, p.categoria_id,p.privado, c.nome AS nome_categoria';
		$sql .= ' FROM post p ';
		$sql .= ' INNER JOIN categoria c ON c.id = p.categoria_id ';
		$sql .= ' WHERE p.deletado = 0 ';

		if (!empty($filtro['pesquisa'])) {
			$sql .= " AND p.titulo LIKE '%" . $this->db->escape_like_str($filtro['pesquisa']) . "%'";
		}

		if (!empty($filtro['categoria'])) {
			$sql .= " AND p.categoria_id = " . $this->db->escape($filtro['categoria']);
		}

		$sql .= ' ORDER BY p.data_cadastro DESC';

		if ($limit != 0) {
			$sql .= " LIMIT $limit ";
		}

		if ($offset != 0) {
			$sql .= " OFFSET $offset ";
		}

		// var_dump($sql);
		// exit;

		$query = $this->db->query($sql); // SELECT id, titulo, introducao, data_cadastro FROM post ORDER BY data_cadastro DESC

		// var_dump($query->result());
		// exit;
		return $query->result();
	}

	public function get_total($filtro, $categoria_id = "")
	{

		$sql = "SELECT COUNT(1) AS total ";
		$sql .= " FROM post p";
		$sql .= " WHERE p.deletado = 0 ";

		if (!empty($filtro['pesquisa'])) {
			$sql .= " AND p.titulo LIKE '%" . $this->db->escape_like_str($filtro['pesquisa']) . "%'";
		}

		if (!empty($filtro['categoria'])) {
			$sql .= " AND p.categoria_id = " . $this->db->escape($filtro['categoria']);
		}

		$query = $this->db->query($sql); // SELECT id, titulo, introducao, data_cadastro FROM post ORDER BY data_cadastro DESC

		if (!$query) {
			throw new Exception("Erro ao capturar o total de itens.");
		}

		return $query->row()->total;
	}


	public function post($slug)
	{

		$this->db->where_in('p.slug', array('slug' => $slug));
		$this->db->select('p.id,p.slug, p.titulo,p.conteudo, p.introducao, p.data_cadastro, p.categoria_id,p.privado, c.nome AS nome_categoria');
		$this->db->join('categoria c', 'c.id = p.categoria_id');

		$query = $this->db->get('post p');

		return $query->row();
	}

	public function listar_por_categoria($id = "", $limit = [], $offset = [], $filtro = [])
	{
		$sql = 'SELECT p.id, p.titulo,p.slug, p.introducao, p.data_cadastro, p.categoria_id,p.privado, c.nome AS nome_categoria';
		$sql .= ' FROM post p ';
		$sql .= ' INNER JOIN categoria c ON c.id = p.categoria_id ';
		$sql .= ' WHERE p.deletado = 0 ';
		$sql .= ' AND p.categoria_id = ' . $this->db->escape($id);

		if (!empty($filtro['pesquisa'])) {
			$sql .= " AND p.titulo LIKE '%" . $this->db->escape_like_str($filtro['pesquisa']) . "%'";
		}

		$sql .= ' ORDER BY p.data_cadastro DESC';

		if ($limit != 0) {
			$sql .= " LIMIT $limit ";
		}

		if ($offset != 0) {
			$sql .= " OFFSET $offset ";
		}

		$query = $this->db->query($sql); // SELECT id, titulo, introducao, data_cadastro FROM post ORDER BY data_cadastro DESC

		// var_dump($query->result());
		// exit;
		return $query->result();
	}

	public function relacionados($categoria_id, $post_id, $limit = 5)
	{
		$sql = 'SELECT p.id, p.titulo,p.slug, p.introducao, p.data_cadastro, p.categoria_id,p.privado, c.nome AS nome_categoria';
		$sql .= ' FROM post p ';
		$sql .= ' INNER JOIN categoria c ON c.id = p.categoria_id ';
		$sql .= ' WHERE p.deletado = 0 ';
		$sql .= ' AND p.categoria_id = ' . $this->db->escape($categoria_id);
		$sql .= ' AND p.id != ' . $this->db->escape($post_id);

		if (!empty($filtro['pesquisa'])) {
			$sql .= " AND p.titulo LIKE '%" . $this->db->escape_like_str($filtro['pesquisa']) . "%'";
		}

		$sql .= ' ORDER BY RAND()';

		if ($limit != 0) {
			$sql .= " LIMIT $limit ";
		}

		$query = $this->db->query($sql); // SELECT id, titulo, introducao, data_cadastro FROM post ORDER BY data_cadastro DESC

		// var_dump($query->result());
		// exit;
		return $query->result();
	}

	public function categorias()
	{
		$this->db->select('*');
		$this->db->order_by('nome', 'ASC');

		$query = $this->db->get('categoria')->result(); // SELECT id, titulo, introducao, data_cadastro FROM post ORDER BY data_cadastro DESC

		return $query;
	}

	public function get_categoria($categoria_id)
	{
		$this->db->where_in('id', $categoria_id);
		$this->db->select('*');
		$query = $this->db->get('categoria')->row(); // SELECT id, titulo, introducao, data_cadastro FROM post ORDER BY data_cadastro DESC

		return $query;
	}
}
