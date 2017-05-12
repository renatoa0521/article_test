<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="data">
	<xsl:if test="//contacto[@result ='success'] ">
		<center>
			<div class="sucesso_div">
				O seu contacto foi registado por favor esteja atento ao seu email
			</div>
		</center>
	</xsl:if> 

	<xsl:if test="//contacto[@result ='error'] ">
		<center>
			<div class="erro_div">
				Ocorreu um erro tente outra vez
			</div>
		</center>
	</xsl:if> 

	<center>
		<form method="post" action="{$current-url}/" enctype="multipart/form-data">
			<input name="MAX_FILE_SIZE" type="hidden" value="2097152" />
				<label class="label_form">Nome <span class="obrigatorio">*</span><br/>
					<input class="input_form" name="fields[nome]" type="text" />
				</label>
				<br/><br/>

			<label class="label_form">Email <span class="obrigatorio">*</span><br/>
				<input class="input_form" name="fields[email]" type="email" />
			</label >
			<br/><br/>

			<label class="label_form">Assunto <span class="obrigatorio">*</span><br/>
				<input class="input_form" name="fields[assunto]" type="text" />
			</label>
			<br/><br/>
	
			<label class="label_form">Mensagem <span class="obrigatorio">*</span><br/>
				<textarea class="text_form" name="fields[mensagem]" type="text" />
			</label>
			<br/><br/>
			<input class="submit_form" name="action[contacto]" type="submit" value="Enviar" />
			<br/><br/>
			<span class="obrigatorio">* Obrigatório</span>

		</form>
	</center>
</xsl:template>

</xsl:stylesheet>
