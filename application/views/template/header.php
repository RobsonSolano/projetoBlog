<!DOCTYPE html>
<html lang="pt" id="autenticacao">

<head>
	<link rel="shortcut icon" href="https://cdn1.iconfinder.com/data/icons/logos-3/304/codeigniter-512.png" type="image/x-icon">
	<link rel="stylesheet" href="<?php echo site_url('public/assets/css/layout.css'); ?>">
	<!-- Latest compiled and minified CSS -->
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" integrity="sha384-HSMxcRTRxnN+Bdg0JdbxYKrThecOKuH5zCYotlSAcp1+c8xmyTe9GYg1l9a69psu" crossorigin="anonymous">

	<!-- Optional theme -->
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap-theme.min.css" integrity="sha384-6pzBo3FDv/PJ8r2KRkGHifhEocL+1X2rVCTTkUfGk7/0pbek5mMa1upzvWbrUbOZ" crossorigin="anonymous">

	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script src="https://code.jquery.com/jquery-1.12.4.min.js" integrity="sha384-nvAa0+6Qg9clwYCGGPpDQLVpLNn0fRaROjHqs13t4Ggj3Ez50XnGQqc/r8MhnRDZ" crossorigin="anonymous"></script>
	<!-- Latest compiled and minified JavaScript -->
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title><?php echo $titulo ?> - <?php echo NOME_PROJETO ?></title>
</head>

<body id="autenticacao">
	<nav class="navbar navbar-inverse navbar-fixed-top">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="<?php echo base_url() ?>"><?php echo NOME_PROJETO ?></a>
			</div>
			<div id="navbar" class="navbar-collapse collapse">
				<ul class="nav navbar-nav">
					<li class="<?php echo $menu_ativo == 'início' ? 'active' : ''; ?>">
						<a href="<?php echo base_url(); ?>">
							Home
						</a>
					</li>
					<li class="<?php echo $menu_ativo == 'blog' ? 'active' : ''; ?>">
						<a href=" <?php echo base_url('blog'); ?>">
							Blog
						</a>
					</li>
					<li class="<?php echo $menu_ativo == 'contato' ? 'active' : ''; ?>">
						<a href="<?php echo base_url('contato'); ?>">
							Contato
						</a>
					</li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li class="<?php echo $menu_ativo == 'sobre' ? 'active' : ''; ?>">
						<a href="<?php echo base_url('sobre'); ?>">
							Sobre
						</a>
					</li>
					<li class="dropdown <?php echo $menu_ativo == 'area_menbros' ? 'active' : ''; ?>">
						<?php if (empty($this->session->userdata('id_usuario'))) { ?>
							<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Área de membros <span class="caret"></span></a>
							<ul class="dropdown-menu">
								<li>
									<a href="<?php echo base_url('usuario/login') ?>">
										Login
									</a>
								</li>
								<li>
									<a href="<?php echo base_url('usuario/cadastro') ?>">
										Cadastro
									</a>
								</li>
							</ul>
						<?php } else { ?>
							<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Olá, <?php echo ucfirst($this->session->userdata('nome_usuario')) ?> <span class="caret"></span></a>
							<ul class="dropdown-menu">
								<li>
									<a href="<?php echo base_url('usuario/perfil') ?>">
										Perfil
									</a>
								</li>
								<li>
									<a href="<?php echo base_url('usuario/logout') ?>">
										Sair
									</a>
								</li>
							</ul>

						<?php } ?>
					</li>
				</ul>
			</div>
			<!--/.nav-collapse -->
		</div>
	</nav>
