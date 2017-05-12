<?php
	$settings = array(


		###### ADMIN ######
		'admin' => array(
			'max_upload_size' => '5242880',
			'upload_blacklist' => '/\\.(?:php[34567s]?|phtml)$/i',
		),
		########


		###### SYMPHONY ######
		'symphony' => array(
			'admin-path' => 'article',
			'pagination_maximum_rows' => '20',
			'association_maximum_rows' => '5',
			'lang' => 'pt',
			'pages_table_nest_children' => 'no',
			'version' => '2.6.7',
			'cookie_prefix' => 'sym-',
			'session_gc_divisor' => '10',
			'cell_truncation_length' => '75',
			'enable_xsrf' => 'yes',
		),
		########


		###### LOG ######
		'log' => array(
			'archive' => '1',
			'maxsize' => '102400',
		),
		########


		###### DATABASE ######
		'database' => array(
			'host' => 'localhost',
			'port' => '3306',
			'user' => 'root',
			'password' => null,
			'db' => 'article',
			'tbl_prefix' => 'sym_',
			'query_caching' => 'on',
			'query_logging' => 'on',
		),
		########


		###### PUBLIC ######
		'public' => array(
			'display_event_xml_in_source' => 'no',
		),
		########


		###### GENERAL ######
		'general' => array(
			'sitename' => 'article',
			'useragent' => 'Symphony/2.6.7',
		),
		########


		###### FILE ######
		'file' => array(
			'write_mode' => '0644',
		),
		########


		###### DIRECTORY ######
		'directory' => array(
			'write_mode' => '0755',
		),
		########


		###### REGION ######
		'region' => array(
			'time_format' => 'g:i a',
			'date_format' => 'd/m/Y',
			'datetime_separator' => ' ',
			'timezone' => 'Europe/Lisbon',
		),
		########


		###### CACHE_DRIVER ######
		'cache_driver' => array(
			'default' => 'database',
		),
		########


		###### IMAGE ######
		'image' => array(
			'cache' => '1',
			'quality' => '90',
			'allow_origin' => null,
			'disable_regular_rules' => 'no',
			'disable_upscaling' => 'no',
			'disable_proxy_transform' => 'no',
		),
		########


		###### MAINTENANCE_MODE ######
		'maintenance_mode' => array(
			'enabled' => 'no',
		),
		########


		###### EMAIL ######
		'email' => array(
			'default_gateway' => 'sendmail',
		),
		########


		###### EMAIL_SENDMAIL ######
		'email_sendmail' => array(
			'from_name' => null,
			'from_address' => null,
		),
		########


		###### EMAIL_SMTP ######
		'email_smtp' => array(
			'helo_hostname' => null,
			'from_name' => null,
			'from_address' => null,
			'host' => '127.0.0.1',
			'port' => '25',
			'secure' => 'no',
			'auth' => '0',
			'username' => 'dark-renato',
			'password' => 'hcbhcbhcb2323',
		),
		########


		###### HTML5_DOCTYPE ######
		'html5_doctype' => array(
			'exclude_pagetypes' => null,
		),
		########


		###### SORTING ######
		'sorting' => array(
			'section_contacto_sortby' => '45',
			'section_contacto_order' => 'asc',
			'section_artigos_sortby' => '26',
			'section_artigos_order' => 'asc',
		),
		########
	);
