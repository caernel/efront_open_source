{capture name = "moduleTincanOptions"}
	<tr><td class = "moduleCell">
	{if $smarty.get.tincan_import}
	        {assign var = "title" value = "`$title`&nbsp;&raquo;&nbsp;<a class = 'titleLink'  href = '`$smarty.server.PHP_SELF`?ctg=scorm&tincan_import=1'>`$smarty.const._TINCANIMPORT`</a>"}
	
	        {capture name = 'tincan_import_code'}
	        	{eF_template_printForm form = $T_UPLOAD_TINCAN_FORM}
	        {/capture}
	        {eF_template_printBlock title = $smarty.const._TINCANIMPORT data = $smarty.capture.tincan_import_code image = '32x32/theory.png' main_options = $T_TABLE_OPTIONS}
	{else}                                
			{capture name = 't_tree_code'}                               
                <table>
                    <tr><td>
                        {$T_TINCAN_TREE}
                    </td></tr>
                </table>
            {/capture}
            {eF_template_printBlock title = $smarty.const._TINCAN data = $smarty.capture.t_tree_code image = '32x32/theory.png' main_options = $T_TABLE_OPTIONS}                                
	{/if}
    </td></tr>
{/capture}
