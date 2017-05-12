<?php

class eventcontacto extends SectionEvent
{
    public $ROOTELEMENT = 'contacto';

    public $eParamFILTERS = array(
        
    );

    public static function about()
    {
        return array(
            'name' => 'contacto',
            'author' => array(
                'name' => 'Renato Almeida',
                'website' => 'http://article.dev',
                'email' => 'renatoa0521@gmai.com'),
            'version' => 'Symphony 2.6.7',
            'release-date' => '2016-12-29T22:25:26+00:00',
            'trigger-condition' => 'action[contacto]'
        );
    }

    public static function getSource()
    {
        return '12';
    }

    public static function allowEditorToParse()
    {
        return true;
    }

    public static function documentation()
    {
        return '
                <h3>Success and Failure XML Examples</h3>
                <p>When saved successfully, the following XML will be returned:</p>
                <pre class="XML"><code>&lt;contacto result="success" type="create | edit">
    &lt;message>Entry [created | edited] successfully.&lt;/message>
&lt;/contacto></code></pre>
                <p>When an error occurs during saving, due to either missing or invalid fields, the following XML will be returned.</p>
                <pre class="XML"><code>&lt;contacto result="error">
    &lt;message>Entry encountered errors when saving.&lt;/message>
    &lt;field-name type="invalid | missing" />
...&lt;/contacto></code></pre>
                <h3>Example Front-end Form Markup</h3>
                <p>This is an example of the form markup you can use on your frontend:</p>
                <pre class="XML"><code>&lt;form method="post" action="{$current-url}/" enctype="multipart/form-data">
    &lt;input name="MAX_FILE_SIZE" type="hidden" value="2097152" />
    &lt;label>Nome 
        &lt;input name="fields[nome]" type="text" />
    &lt;/label>
    &lt;label>Email
        &lt;input name="fields[email]" type="text" />
    &lt;/label>
    &lt;label>Assunto
        &lt;input name="fields[assunto]" type="text" />
    &lt;/label>
    &lt;label>Mensagem
        &lt;input name="fields[mensagem]" type="text" />
    &lt;/label>
    &lt;input name="action[contacto]" type="submit" value="Submit" />
&lt;/form></code></pre>
                <p>To edit an existing entry, include the entry ID value of the entry in the form. This is best as a hidden field like so:</p>
                <pre class="XML"><code>&lt;input name="id" type="hidden" value="23" /></code></pre>
                <p>To redirect to a different location upon a successful save, include the redirect location in the form. This is best as a hidden field like so, where the value is the URL to redirect to:</p>
                <pre class="XML"><code>&lt;input name="redirect" type="hidden" value="http://article.dev/success/" /></code></pre>';
    }

    public function load()
    {
        if (isset($_POST['action']['contacto'])) {
            return $this->__trigger();
        }
    }

}
