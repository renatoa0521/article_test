<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="data">
	<div class="categorias">
		<xsl:if test="$current-path = '/arquivo'">
			<center>
				<span class="tit_pag_arq">Arquivo</span>
			</center>
			<xsl:apply-templates select="arqcategorias/entry"/>
		</xsl:if>
	</div>
	<xsl:if test="$arquivo-id = ''">
		<div class="categorias">
			<xsl:apply-templates select="arqartigos/entry"/>
			<xsl:apply-templates select="arqprogramas/entry"/>
		</div>
	</xsl:if>
</xsl:template>


<!-- /arquivo -->
<xsl:template match="arqcategorias/entry">
	<div class="categoria">	
		<a href="{root}/arquivo/{categoria/@handle}"> 
			<img class="img_catg" src="{$workspace}/images/{imagem/filename}" alt="{categoria}"/>
			<span class="titulo_catg"><xsl:value-of select="categoria"/></span>
		</a>
	</div>	
</xsl:template>

<!-- /arqivo/categoria-->
<xsl:template match="arqartigos/entry">
	<xsl:if test="categoria/item/@handle = /data/params/categoria-id">
		<div class="categoria">	
			<a href="{$root}/artigo/{title/@handle}">
				<xsl:apply-templates select="imagens/file[1]" mode="thumb-image"/>
				<span class="titulo_catg"><xsl:value-of select="title"/></span>
			</a>
		</div>
	</xsl:if>
</xsl:template>

<xsl:template match="imagens/file" mode="thumb-image">
	<img class="img_catg" src="{$workspace}/images/{filename}" alt="{filename}"/>
</xsl:template>

<xsl:template match="arqprogramas/entry">
	<xsl:if test="categoria/item/@handle = /data/params/categoria-id">
		<div class="categoria">	
			<a href="{$root}/programas/{nome/@handle}">
				<img class="img_catg" src="{$workspace}/images/{thumbnail/filename}"/>
				<span class="titulo_catg"><xsl:value-of select="nome"/></span>
			</a>
		</div>
	</xsl:if>
</xsl:template>


</xsl:stylesheet>
