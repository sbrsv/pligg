{if $pagename eq "story"}<br />{/if}

{if $pagename neq "submit"}
	{checkActionsTpl location="tpl_pligg_sidebar2_start"}
	
                 {checkActionsTpl location="tpl_pligg_sidebar_middle"}
	<!-- START ABOUT -->
		{assign var=sidebar_module value="about_box"}{include file=$the_template_sidebar_modules."/wrapper.tpl"}
	<!-- END ABOUT -->

	<!-- START LINKS -->
	        	<div class="links">
	            	<div class="sectiontitle"><a href='{$URL_topusers}'> {#PLIGG_Visual_Top_Users#}</a></div>
	            </div>
				{if $Enable_Tags}
	            <div class="links">
	            	<div class="sectiontitle"><a href="{$URL_tagcloud}">{#PLIGG_Visual_Tags#}</a></div>
	            </div>
				{/if}
				{if $Enable_Live}
	            <div class="links">
	            	<div class="sectiontitle"><a href='{$URL_live}'> {#PLIGG_Visual_Live#}</a></div>
	            </div>
				{/if}
	<!-- END LINKS -->

	{checkActionsTpl location="tpl_pligg_sidebar2_end"}
	<br />
{/if}