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
		<div class="autor_data">
			<span class="autor"><xsl:value-of select="autor"/></span><br/>
			<span class="data"><xsl:value-of select="data"/></span>
		</div>
		<xsl:choose>
			<xsl:when test="//fotos = 'Yes' ">				
				<div class="imagens">
					<xsl:if test="imagens">
						<center>
							<div class="main-image imagem_principal">
								<xsl:apply-templates select="imagens/file[1]" mode="main-image"/>
							</div>

							<div class="imagens_gal">
								<xsl:for-each select="imagens/file[position() =2]">
									<xsl:apply-templates select="." mode="imagens-image"/>
								</xsl:for-each>
								<xsl:for-each select="imagens/file[position() =3]">
									<xsl:apply-templates select="." mode="imagens-image"/>
								</xsl:for-each>
								<xsl:for-each select="imagens/file[position() =4]">
									<xsl:apply-templates select="." mode="imagens-image"/>
								</xsl:for-each>	
							</div>
						</center>
					</xsl:if>	
				</div>
			</xsl:when>		
			<xsl:otherwise>
			<div class="background_iframe">	
				<div class="wrapper">
		    		<div class="h_iframe">
		      		  	<img class="ratio" src="http://placehold.it/16x9"/>
		        		<iframe src="{//video-embed-link}" frameborder="0" />
		    		</div>
				</div>
			</div>
			</xsl:otherwise>
		</xsl:choose>
		
		<center>
			<div class="texto_vd">
				<span class="texto_pag">
					<xsl:copy-of select="texto/node()"/>
				</span>
			</div>
		</center>
		

	
	</div>

</xsl:template>

<xsl:template match="imagens/file" mode="main-image">
	<a class="example-image-link" href="{$workspace}/images/{filename}" data-lightbox="example-set">
		<img class="example-image img_artg_princ" src="{$workspace}/images/{filename}" alt="{filename}"/>
	</a>
</xsl:template>

<xsl:template match="imagens/file" mode="imagens-image">
	<a class="example-image-link " href="{$workspace}/images/{filename}" data-lightbox="example-set">
		<img class="example-image img_artg_gal" src="{$workspace}/images/{filename}" alt="{filename}"/>
	</a>
</xsl:template>


</xsl:stylesheet>
