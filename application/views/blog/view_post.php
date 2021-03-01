<div class="container area-conteudo">

	<div class="row">
		<div class="col-xs-12 col-sm-3">
			<div class="thumbnail bg-subdark">
				<img src="https://source.unsplash.com/user/erondu/250x150">
			</div>
		</div>
		<div class="col-xs-12 col-sm-9 blog-main">
			<div class="blog-post">
				<div class="blog-header">
					<h1 class="blog-title"><?php echo $item->titulo ?></h1>
					<p class="lead blog-description">Publicado em <?php echo date('d/m/Y - H:i', strtotime($item->data_cadastro)) ?> - <em>Categoria: <strong><?php echo $item->nome_categoria ?></strong></em></p>
				</div>
			</div>
		</div>
	</div>
	<hr>
	<div class="row">
		<div class="col-sm-8">
			<p><?php echo $item->introducao ?></p>
			<?php if ($item->privado == 1 && empty($this->session->userdata('id_usuario'))) { ?>
				<div class="alert alert-warning text-center" role="alert">
					<strong>Conteúdo privado</strong><br><br>
					<a href="<?php echo base_url('usuario/cadastro') ?>" class="link-blog">Cadastre-se</a>
					ou
					<a href="<?php echo base_url('usuario/login') ?>" class="link-blog">efetue login</a>
					para ter acesso completo ao conteúdo.
				</div>
			<?php
			} else {
			?>
				<p>
					<?php echo nl2br($item->conteudo); ?>
				</p>
			<?php } ?>
			<br>
			<a href="<?php echo base_url('blog') ?>" class="btn btn-default btn-block">
				<i class="glyphicon glyphicon-chevron-left"></i>
				Ver todos os posts</a>
			<br>
			<div class="area-relacionados">
				<div class="text-start">
					<h4>Itens relacionados</h4>
				</div>
				<?php foreach ($relacionados as $relacionado) { ?>
					<div class="blog-post">
						<p>
							<a class="link-blog" href=" <?php echo base_url('blog/post/' . $relacionado->slug) ?>">
								<?php echo $relacionado->titulo ?>
							</a>
						</p>
					</div><!-- /.blog-post -->
				<?php } ?>
			</div>
		</div><!-- /.blog-post -->

		<div class="col-sm-3 col-sm-offset-1 blog-sidebar">
			<div class="sidebar-module sidebar-module-inset">
				<?php
				echo form_open('blog', ['method' => 'GET', 'class' => 'form-search']); ?>
				<div class="input-group">
					<?php
					$data = [
						'name'        => 'pesquisa',
						'id'          => 'pesquisa',
						'placeholder' => 'Pesquise pelo título',
						'requied'     => true,
						'class'       => 'form-control',
						'value'       => set_value('pesquisa', (isset($pesquisa) ? $pesquisa : ''))
					];
					echo form_input($data); ?>

					<span class="input-group-btn">
						<button type="submit" class="btn btn-default"><i class="glyphicon glyphicon-search"></i></button>
					</span>
				</div>
				<?php echo form_close(); ?>
				<br>
				<h4>Sobre</h4>
				<p>
					Desenvolvemos plataformas digitais e aplicativos para empresas e startups, gerando valor na vida e nos negócios de nossos clientes.
				</p>
				<br>
				<p>Para saber mais, acesse:<br><a href="www.nanoincub.com.br" class="link-blog">www.nanoincub.com.br</a></p>
				<br>
				<div class="panel panel-default">
					<div class="panel-heading">
						Categorias
						<small class="pull-right">
							<a class="link-blog" href="<?php echo base_url('blog'); ?>">Ver tudo</a>
						</small>
					</div>
					<div class="panel-body">

						<ol class="list-unstyled list-categorias">
							<?php foreach ($categorias as $categoria) { ?>
								<li><a class="link-blog" href="<?php echo base_url('blog/categoria/?categoria=' . $categoria->id); ?>"><?php echo $categoria->nome; ?> <span>(<?php echo count_num_rows_categoria($categoria->id) ?>)</span></a></li>
							<?php } ?>
						</ol>

					</div>
				</div>
			</div><!-- /.blog-sidebar -->

		</div><!-- /.row -->

	</div><!-- /.container -->
