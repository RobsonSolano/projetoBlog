<?php
defined('BASEPATH') or exit('URL inválida.');

class Usuario_model extends CI_Model
{

	public function salvar($user)
	{

		$user['senha'] = password_hash($user['senha'], PASSWORD_BCRYPT);

		if ($this->db->insert('usuario', $user)) {
			return true;
		} else {
			return false;
		}
	}

	public function login($form)
	{

		$this->db->select('*');
		$this->db->where_in('email', $form['email']);
		$usuario = $this->db->get('usuario')->row_array();

		if (empty($usuario)) {
			return false;
		}

		if (password_verify($form['senha'], $usuario['senha'])) {
			$this->session->set_userdata('id_usuario', $usuario['id']);
			$this->session->set_userdata('nome_usuario', $usuario['nome']);
			return true;
		} else {
			return false;
		}
	}

	public function valida_email($email)
	{
		if (empty($email)) {
			return false;
		}

		$this->db->select('email');
		$this->db->where_in('email', $email);
		$query = $this->db->get('usuario');
		return $query->num_rows();
	}

	public function logout()
	{
		if ($this->session->has_userdata('id_usuario')) {
			$this->session->unset_userdata('id_usuario');
			$this->session->unset_userdata('nome_usuario');
			return true;
		} else {
			return false;
		}
	}
}
