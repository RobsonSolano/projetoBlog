<div class="container area-conteudo">
	<div class="blog-header">
		<h1 class="blog-title"><?php echo $titulo ?></h1>
	</div>
	<div class="row">
		<div class="col-sm-8 col-sm-7 col-md-8 blog-main">
			<?php foreach ($itens as $item) { ?>
				<div class="blog-post">
					<h2 class="blog-post-title">
						<a href="<?php echo base_url('blog/post/' . $item->slug) ?>">
							<?php echo $item->titulo ?>
						</a>
					</h2>
					<p class="blog-post-meta">
						<?php if ($item->privado == 1 && empty($this->session->userdata('id_usuario'))) { ?>
							<span class="badge">PRIVADO</span>
						<?php } ?>
						<?php echo date('d/m/Y - H:i', strtotime($item->data_cadastro)) ?> - Categoria:
						<strong>
							<?php echo $item->nome_categoria ?>
						</strong>
					</p>
					<p>
						<?php echo nl2br($item->introducao); ?>
					</p>
					<a class="btn btn-blog" href="<?php echo base_url('blog/post/' . $item->slug) ?>">Ver post</a>
				</div><!-- /.blog-post -->
				<hr>
			<?php } ?>
			<?php if ($total_resultados > 0) { ?>
				<div class="row">
					<div class="col-xs-12 align-center">
						<div>
							<?php echo $paginas; ?>
							<div class="clearfix"></div>
						</div>
					</div>
					<div class="col-xs-12 align-center">
						<?php echo 'Total: ' . $total_resultados ?>
					</div>
				</div>
			<?php } ?>
		</div><!-- /.blog-main -->
		<div class="col-sm-3 col-sm-4 col-md-3 col-sm-offset-1 blog-sidebar">
			<div class="sidebar-module sidebar-module-inset">
				<br>
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
			</div>
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
						<a class="link-blog" href="<?php echo base_url('blog'); ?>">Ver todos</a>
					</small>
				</div>
				<div class="panel-body">
					<ol class="list-unstyled table-categorias">
						<?php foreach ($categorias as $categoria) { ?>
							<li>
								<a class="link-blog" href="<?php echo base_url('blog/categoria/?categoria=' . $categoria->id); ?>"><?php echo $categoria->nome; ?>
									<span>(<?php echo count_num_rows_categoria($categoria->id) ?>)</span>
								</a>
							</li>
						<?php } ?>
					</ol>
				</div>
			</div>
		</div><!-- /.blog-sidebar -->
	</div><!-- /.row -->
</div><!-- /.container -->
