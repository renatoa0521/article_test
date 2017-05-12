<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output method="xml"
	doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN"
	doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"
	omit-xml-declaration="yes"
	encoding="UTF-8"
	indent="yes" />
<!-- DESTAQUES -->
<xsl:template match="entry[1]" >
	<div class="artigo_destaque">
		<a href="{$root}/artigo/{title/@handle}">
			<div class="artg_dest">
				<xsl:choose>
					<xsl:when test="imagens/file[1]">
						<xsl:apply-templates select="imagens/file[1]" mode="destaque"/>
					</xsl:when>		
					<xsl:otherwise>
						<img src="http://placehold.it/902x600" class="img_dest" alt="{name}"/>
					</xsl:otherwise>
				</xsl:choose>
				<div class="titulo_dest_1">
						<span class="titulo_dest"><xsl:value-of select="title"/></span>
				</div>	
			</div>
		</a>
	</div>
</xsl:template>

<xsl:template match="entry[2]" >
	<div class="artigos_principal">
		<a href="{$root}/artigo/{title/@handle}">
			<xsl:choose>
				<xsl:when test="imagens">
					<xsl:apply-templates select="imagens/file[1]" mode="principais"/>
				</xsl:when>		
				<xsl:otherwise>
					<img class="img_princ" src="http://placehold.it/902x600" alt="{name}"/>
				</xsl:otherwise>
			</xsl:choose>
		
			<span class="titulo_princ"><xsl:value-of select="title"/></span>
		</a>
	</div>
</xsl:template>

<xsl:template match="entry[3]" >
	<div class="artigos_principal">
		<a href="{$root}/artigo/{title/@handle}">
				<xsl:choose>
					<xsl:when test="imagens">
						<xsl:apply-templates select="imagens/file[1]" mode="principais"/>
					</xsl:when>		
					<xsl:otherwise>
						<img class="img_princ" src="http://placehold.it/902x600" alt="{name}"/>
					</xsl:otherwise>
				</xsl:choose>
			<span class="titulo_princ"><xsl:value-of select="title"/></span>
		</a>
	</div>
</xsl:template>

<xsl:template match="entry[4]" >
	<div class="artigos_principal">
		<a href="{$root}/artigo/{title/@handle}">
			<xsl:choose>
				<xsl:when test="imagens">
						<xsl:apply-templates select="imagens/file[1]" mode="principais"/>
					</xsl:when>		
				<xsl:otherwise>
					<img class="img_princ" src="http://placehold.it/902x600" alt="{name}"/>
				</xsl:otherwise>
			</xsl:choose>
			<span class="titulo_princ"><xsl:value-of select="title"/></span>
		</a>
	</div>
</xsl:template>

<xsl:template match="entry[5]" >
	<div class="artigos_principal">
		<a href="{$root}/artigo/{title/@handle}">
			<xsl:choose>
				<xsl:when test="imagens">
						<xsl:apply-templates select="imagens/file[1]" mode="principais"/>
					</xsl:when>		
				<xsl:otherwise>
					<img class="img_princ" src="http://placehold.it/902x600" alt="{name}"/>
				</xsl:otherwise>
			</xsl:choose>
			<span class="titulo_princ"><xsl:value-of select="title"/></span>
		</a>
	</div> 
	<div class="espaco"></div>
</xsl:template>

<!-- Outros artigos -->
<xsl:template match="entry" >
	<div class="cont_sec">
		<a href="{$root}/artigo/{title/@handle}">
			<xsl:choose>
				<xsl:when test="imagens">
						<xsl:apply-templates select="imagens/file[1]" mode="secundarias"/>
					</xsl:when>		
				<xsl:otherwise>
					<img class="img_sec" src="http://placehold.it/902x600" alt="{name}"/>
				</xsl:otherwise>
			</xsl:choose>
			<span class="titulo_sec"><xsl:value-of select="title"/></span>
		</a>
	 </div>			 
</xsl:template>






<xsl:template match="imagens/file" mode="destaque">
	<img class="img_dest" src="{$workspace}/images/{filename}" alt="{../../name}"/>
</xsl:template>
<xsl:template match="imagens/file" mode="principais">
	<img  class="img_princ" src="{$workspace}/images/{filename}" alt="{../../name}"/>
</xsl:template>
<xsl:template match="imagens/file" mode="secundarias">
	<img  class="img_sec" src="{$workspace}/images/{filename}" alt="{../../name}"/>
</xsl:template>
</xsl:stylesheet>			