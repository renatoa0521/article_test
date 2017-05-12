<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="data">
	<div class="categorias">
		<xsl:if test="params/current-path = '/programas'">
			<center>
				<span class="tit_pag_arq">Programas</span>
			</center>
			<xsl:apply-templates select="programaspagina/entry"/>
		</xsl:if>
	</div>

	<div class="categorias">
		<xsl:if test="params/video-id = '' ">
			<xsl:apply-templates select="programa/entry"/>
		</xsl:if>
	</div>

	<xsl:if test="params/video-id = //video/entry/titulo/@handle">
		<xsl:apply-templates select="video/entry"/>
	</xsl:if>
</xsl:template>

<!-- /programas -->
<xsl:template match="programaspagina/entry">
	<div class="categoria">
		<a href="{$root}/programas/{nome/@handle}">
			<img class="img_catg" src="{$workspace}/images/{thumbnail/filename}" alt="{nome}" />
			<span class="titulo_catg"><xsl:value-of select="nome"/></span>
		</a>
	</div>
</xsl:template>

<!--  /programas/programa -->
<xsl:template match="programa/entry">
	<xsl:if test="programa/item/@handle = /data/params/programa-id ">
		<div class="categoria">
			<a href="{$root}/programas/{/data/programaspagina/entry/nome/@handle}/{titulo/@handle}">
				<img class="img_catg" src="{$workspace}/images/{thumbnail/filename}" alt="{nome}" />
				<span class="titulo_catg"><xsl:value-of select="titulo"/></span>
			</a>
		</div>	
	</xsl:if>
</xsl:template>

<!--  /programas/programa/video -->
<xsl:template match="video/entry">
	<xsl:if test="titulo/@handle = /data/params/video-id ">
	<div class="artigo">
			<div class="titulo_artg_pag">
				<center>
					<span class="titulo_artigo"><xsl:value-of select="titulo"/></span>
				</center>
			</div>	
		<div class="background_iframe">	
			<div class="wrapper">
		    	<div class="h_iframe">
		       		<img class="ratio" src="http://placehold.it/16x9"/>
		       		<iframe width="50%" height="500px;" src="{link-video}" frameborder="0" ></iframe>
		       	</div>
		    </div>
		</div>
			<center>
				<div class="texto_vd">
					<span class="texto_pag"><xsl:copy-of select="descricao"/></span>
				</div>
			</center>
	</div>
	</xsl:if>
</xsl:template>


</xsl:stylesheet>
