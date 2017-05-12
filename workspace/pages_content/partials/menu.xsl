<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output method="xml"
	doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN"
	doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"
	omit-xml-declaration="yes"
	encoding="UTF-8"
	indent="yes" />

<xsl:template match="*" mode="menu">
	<div class="menu">
		<nav>
			
			<ul class="menu_ul">
				<li class="menu_li sobre">
					<a href="{$root}/sobre">SOBRE</a>
				</li>
				<li class="menu_li">
					<a href="{$root}/contacto">CONTACTO</a>
				</li>
				<li class="menu_li">
					<a href="{$root}/arquivo/arquivofotos">ARQ. FOTOGRÁFICO</a>
				</li>				
				<li class="menu_li">
					<a href="{$root}/arquivo">ARQUIVO</a>
				</li>					
				<li class="menu_li">
					<a href="{$root}/programas">PROGRAMAS</a>
				</li>
				<li class="">
					<div class="logo">
						<a href="{$root}">
							<img class="logo_img" src="{$workspace}/pages_content/partials/logo.png" />
						</a>
					</div>
				</li>
			</ul>
		</nav>

	</div>

	<div class="mbmenu">
		<header><center><div class="hamb_logo"><a href="{$root}"><img class="logo_hamb" src="{$workspace}/pages_content/partials/logo.png" /></a></div></center>
		  <button class="hamburger">&#9776;</button>
		  <button class="cross">&#735;</button>
		</header>
		<div class="menu_mb">
	  <ul>
		<a href="{$root}/programas">
			<li>
				PROGRAMAS
			</li>
		</a>
		<a href="{$root}/arquivo">
			<li>
				ARQUIVO
			</li>	
		</a>		
		<a href="{$root}/arquivo/arquivofotos">
			<li>
				ARQ. FOTOGRÁFICO
			</li>
		</a>
	
		<a href="{$root}/contacto">
			<li>
				CONTACTO
			</li>
		</a>
		<a href="{$root}/sobre">
			<li>
				SOBRE
			</li>
		</a>
	  </ul>
		</div> 
	</div>	<script src="{$workspace}/dist/js/test.js" />
			<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
</xsl:template>

<xsl:template match="*" mode="footer">
	<div class="footer">
		<div class="hr_1">
			<hr class="hr_linha"/>
		</div>

		<div class="sitemap">
 			<nav class="nav_menu_1">
				<ul class="sitemap_ul">
					<li class="sitemap_li">
						<a href="{$root}">Home</a>
					</li>
					<li class="sitemap_li">
						<a href="{$root}/arquivo">Arquivo</a>
					</li>						
					<li class="sitemap_li">
						<a href="{$root}/programas">Programas</a>
					</li>
					<li class="sitemap_li">
						<a href="{$root}/contacto">Contacto</a>
					</li>
					<li class="sitemap_li">
						<a href="{$root}/sobre">Sobre</a>
					</li>
				</ul>
			</nav>
		</div>
			<div class="redes">
				<a href="https://www.youtube.com/channel/UCkPLw7D_MIbKvcklkskwPYA" target="_blank"><img class="redes_img"   alt="youtube" src="{$workspace}/sources/youtube.png"/></a>
				<a href="http://www.epb.pt/" target="_blank"><img class="redes_img" alt="epb" src="{$workspace}/sources/epb_logo.png"/></a>
			</div>
	</div>
</xsl:template>

</xsl:stylesheet>			