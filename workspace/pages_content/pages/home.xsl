<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:include href="../partials/artigos.xsl"/>
<xsl:template match="data">
	<xsl:apply-templates select="artigos/entry"  /> 	
</xsl:template>
</xsl:stylesheet>