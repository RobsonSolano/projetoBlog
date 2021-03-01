<?php

if (!defined('BASEPATH'))
	exit('No direct script access allowed');


if (!function_exists('saudacao')) {

	function saudacao()
	{

		$hr = date(" H ");
		if ($hr >= 12 && $hr < 18) {
			$resp = "Boa tarde!";
		} else if ($hr >= 0 && $hr < 12) {
			$resp = "Bom dia!";
		} else {
			$resp = "Boa noite!";
		}

		return $resp;
	}
}


if (!function_exists('somar')) {

	function somar($n1 = 0, $n2 = 0)
	{

		return $n1 + $n2;
	}
}
if (!function_exists('count_num_rows_categoria')) {
	function count_num_rows_categoria($categoria_id)
	{
		$CI = &get_instance();

		$sql = " SELECT count('1') AS total_itens ";
		$sql .= " FROM post p";
		$sql .= " WHERE p.categoria_id  = $categoria_id";

		$query = $CI->db->query($sql);

		return $query->row()->total_itens;
	}
}
