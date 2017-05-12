<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output method="xml"
	doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN"
	doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"
	omit-xml-declaration="yes"
	encoding="UTF-8"
	indent="yes" />

<xsl:include href="../pages_content/partials/menu.xsl"/>

<xsl:template match="/">
	<html>
		<head>
			<style>
				table{width:25%;
				}
				table, th, td {
				    border: 1px solid black;
				    border-collapse: collapse;
				    padding:5px;text-align:center;
				}
			</style>
			
			<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
			<meta charset="UTF-8"/>
			<link rel="stylesheet" href="{$workspace}/dist/css/sobre.css"/>
			<link rel="stylesheet" href="{$workspace}/dist/css/contactos.css"/>
			<link rel="stylesheet" href="{$workspace}/dist/css/menu.css"/>
			<link rel="stylesheet" href="{$workspace}/dist/css/arquivo_programas.css"/>
			<link rel="stylesheet" href="{$workspace}/dist/css/artigos.css"/>
			<link rel="stylesheet" href="{$workspace}/dist/css/footer.css"/>
			<link rel="stylesheet" href="{$workspace}/dist/css/home.css"/>
			<link rel="stylesheet" href="{$workspace}/dist/css/lightbox.min.css"/>
			<script src="{$workspace}/dist/js/lightbox-plus-jquery.min.js" />
			<link rel="stylesheet" href="{$workspace}/dist/css/404.css"/>
			<title>EPB tv</title>
			<link rel="shortcut icon" href="{$workspace}/sources/favicon_1.ico" type="image/x-icon"/>
		</head>
	<body>
		<header id="header" class="header row">
			<xsl:apply-templates select="*" mode="menu"/>
		</header>
		<xsl:choose>
			<xsl:when test="//page-types/item = 'index'">
				<xsl:apply-templates />
			</xsl:when>		
			<xsl:otherwise>
				<main id="main" class="main row">
					<xsl:apply-templates />
				</main>	
			</xsl:otherwise>
		</xsl:choose>
		<br/><br/>

		<footer id="footer" class="footer row">
			<xsl:apply-templates select="*" mode="footer"/>		
		</footer>

	</body>	

	</html>
</xsl:template>



</xsl:stylesheet>
