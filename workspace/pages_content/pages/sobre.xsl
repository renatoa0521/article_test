<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="data">
	<center>
		<div class="texto_sobre">
			<span class="texto_sob"><xsl:copy-of select="sobre/entry/sobre"/>
			</span>
		</div>
	</center>
	<!-- EQUIPA Epbtv -->
<div class="equipa">
	<xsl:for-each select="equipa/entry">
		<div class="elemento">
			<img class="img_elem" src="{$workspace}/{foto/filename}"/>
			<span class="titulo_elem"><xsl:value-of select="nome"/></span>
		</div>
	</xsl:for-each>
</div>	
	
</xsl:template>
</xsl:stylesheet>