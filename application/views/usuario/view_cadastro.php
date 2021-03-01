<div class="container-fluid">
	<div class="row">
		<div class="col-xs-12 hidden-xs hidden-sm col-md-6 area-identificacao" id="area-identificacao">
			<div class="text-center">
				<h2>Bem vindo a area de cadastro</h2>
				<h5>
					<?php echo $descricao ?>
				</h5>
			</div>

		</div>
		<div class="col-xs-12 col-md-6 area-form">

			<div class="hidden-md hidden-lg hidden-xl  text-center">
				<h2 class="text-info">Cadastre-se</h2>
			</div>
			<?php echo form_open('usuario/salvar_cadastro', 'class="form-signin"'); ?>
			<?php
			if (!empty($this->session->flashdata('msg_retorno'))) {
				$msg_retorno = $this->session->flashdata('msg_retorno');
			?>
				<div class="alert alert-<?php echo $msg_retorno['type'] ?> text-center">
					<?php echo $msg_retorno['message'] ?>
				</div>

			<?php
			} ?>
			<div class="form-group">
				<?php
				$data = [
					'type'        => 'nome',
					'name'        => 'nome',
					'id'          => 'nome',
					'placeholder' => 'Nome completo',
					'requied'     => true,
					'class'       => 'form-control',
					'value'       => set_value('nome', (isset($nome) ? $nome : ''))
				];
				echo form_label('Informe seu nome', $data['id']);
				echo form_input($data);
				echo "<span class='text-danger'>" . form_error($data['name']) . "</span>";
				?>
			</div>
			<div class="form-group">
				<?php
				$data = [
					'type'        => 'email',
					'name'        => 'email',
					'id'          => 'email',
					'placeholder' => 'email@exemple.com',
					'requied'     => true,
					'class'       => 'form-control',
					'value'       => set_value('email', (isset($nome) ? $nome : ''))
				];
				echo form_label('Informe seu email', $data['id']);
				echo form_input($data);
				echo "<span class='text-danger'>" . form_error($data['name']) . "</span>";
				?>
			</div>
			<div class="form-group">
				<?php
				$data = [
					'type'        => 'password',
					'name'        => 'senha',
					'id'          => 'senha',
					'placeholder' => 'Digite sua senha',
					'requied'     => true,
					'class'       => 'form-control',
					'value'       => set_value('senha', (isset($nome) ? $nome : ''))
				];
				echo form_label('Informe sua senha', $data['id']);
				echo form_input($data);
				echo "<span class='text-danger'>" . form_error($data['name']) . "</span>";
				?>
			</div>

			<br>
			<?php

			echo form_submit(['class' => 'btn btn-lg btn-primary btn-block'], 'Cadastrar');
			form_close(); ?>

			<br>
			<div class="text-center">
				Já é cadastrado?
				<br><br>
				<a href="<?php echo base_url('usuario/login'); ?>">Efetuar login</a>
			</div>
		</div>
	</div>
</div>

<script src="<?php echo site_url('public/assets/js/main.js') ?>"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js" integrity="sha384-aJ21OjlMXNL5UyIl/XNwTMqvzeRMZH2w8c5cRVpzpU8Y5bApTppSuUkhZXN0VxHd" crossorigin="anonymous"></script>
