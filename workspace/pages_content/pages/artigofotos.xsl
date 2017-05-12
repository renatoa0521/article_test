<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="data">
	<xsl:apply-templates select="artigo/entry"/>
</xsl:template>

<xsl:template match="artigo/entry">
	<div class="artigo">
		<div class="titulo_artg_pag">
			<center>
				<span class="titulo_artigo"><xsl:value-of select="title"/></span>
			</center>
		</div>
		<div class="categorias">
				<xsl:if test="imagens">
					<xsl:for-each select="imagens/file">
						<div class="categoria">
							<xsl:apply-templates select="." mode="imagens-image"/>
						</div>
					</xsl:for-each>
				</xsl:if>	
		</div>
	</div>
</xsl:template>

<xsl:template match="imagens/file" mode="imagens-image">
	<a class="example-image-link " href="{$workspace}/images/{filename}" data-lightbox="example-set">
		<img class="example-image img_catg" src="{$workspace}/images/{filename}" alt="{filename}"/>
	</a>
</xsl:template>


</xsl:stylesheet>
