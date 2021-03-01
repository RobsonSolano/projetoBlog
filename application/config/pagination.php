<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

$config['num_links'] = 5;

$config['per_page'] = QUANTIDADE_PAGINACAO;

$config['full_tag_open'] = '<ul class="pagination">';
$config['full_tag_close'] = '</ul><!--pagination-->';

$config['first_link'] = 'Primeiro';
$config['first_tag_open'] = '<li class="prev page">';
$config['first_tag_close'] = '</li>';

$config['last_link'] = 'Último';
$config['last_tag_open'] = '<li class="next page">';
$config['last_tag_close'] = '</li>';

$config['next_link'] = '<span class="glyphicon glyphicon-chevron-right"></span>';
$config['next_tag_open'] = '<li class="next page">';
$config['next_tag_close'] = '</li>';

$config['prev_link'] = '<span class="glyphicon glyphicon-chevron-left"></span>';
$config['prev_tag_open'] = '<li class="prev page">';
$config['prev_tag_close'] = '</li>';

$config['cur_tag_open'] = '<li class="active"><a href="javascript:;">';
$config['cur_tag_close'] = '</a></li>';

$config['num_tag_open'] = '<li class="page">';
$config['num_tag_close'] = '</li>';

$config['page_query_string'] = true;
$config['query_string_segment'] = 'pagina';
$config['use_page_numbers'] = TRUE;


?>