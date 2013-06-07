<!-- START HEADER.TPL -->
<div class="head">

<a href="{$my_base_url}{$my_pligg_base}" rel="nofollow"><img src="{$my_pligg_base}/templates/{$the_template}/images/logo.jpg" alt="{#PLIGG_Visual_Name#}"/></a>

<div class="regs">

	
	{if $user_authenticated neq true}
	<a href='{$URL_login}'>{#PLIGG_Visual_Login_Title#}</a>
	<a href='{$URL_register}'>{#PLIGG_Visual_Register#}</a> 
	{/if}


	{if $user_authenticated eq true}<a href="{$URL_userNoVar}">{#PLIGG_Visual_Profile#}</a>{/if}
	{if isset($isgod) && $isgod eq 1}<a href="{$URL_admin}">{#PLIGG_Visual_Header_AdminPanel#}</a>{/if}

	{if $user_authenticated eq true} <a href="{$URL_logout}"> {#PLIGG_Visual_Logout#}</a>{/if}
	
	{checkActionsTpl location="tpl_pligg_sidebar2_end"}



</div>

<ul class="tabs">
	<li {if $pagename eq "published" || $pagename eq "index"}class="current-tab"{/if}><a href='{$my_base_url}{$URL_base}'><b>{#PLIGG_Visual_Published_News#}</b></a></li>
	<li {if $pagename eq "upcoming"}class="current-tab"{/if}><a href="{$URL_upcoming}"><b>{#PLIGG_Visual_Pligg_Queued#}</b></a></li>
	<li {if $pagename eq "submit"}class="current-tab"{/if}><a href="{$URL_submit}"><b>{#PLIGG_Visual_Submit_A_New_Story#}</b></a></li>
</ul>
</div>


<!-- START NAVBAR -->

<div class="topbar">
<ul>
		{checkActionsTpl location="tpl_pligg_navbar_start"}

	
	<li><a href="{$my_base_url}{$my_pligg_base}">{#PLIGG_Visual_Home#}</a> </li>
	
	<li><a href='{$URL_topusers}'> {#PLIGG_Visual_Top_Users#}</a></li>
	{if $Enable_Tags}<li><a href="{$URL_tagcloud}">{#PLIGG_Visual_Tags#}</a></li>{/if}
	
	{if $Enable_Live}<li> <a href='{$URL_live}'> {#PLIGG_Visual_Live#}</a></li>{/if}
	
	{if $enable_group eq "true"}	
	<li {if $pagename eq "groups" || $pagename eq "submit_groups" || $pagename eq "group_story"}class="current"{/if}><a href="{$URL_groups}"><span>{#PLIGG_Visual_Groups#}</span></a></li>
	{/if}	
	
		{checkActionsTpl location="tpl_pligg_navbar_end"}

	<!-- START RSS -->

	{if $URL_rss_page}
	<li><a href="{$URL_rss_page}" target="_blank" class="rss"><img src="{$my_pligg_base}/templates/{$the_template}/images/rss.gif" align="top" border="0" alt="RSS" /></a></li>
	{else}
	<li><a href="{$URL_rss}" target="_blank" class="rss"><img src="{$my_pligg_base}/templates/{$the_template}/images/rss.gif" alt="RSS" /></a></li>
	{/if}
	<!-- END RSS -->


</ul>
</div>

<!-- END NAVBAR -->


<!-- START SEARCH -->

<div class="topsearch">
<div class="right_float">


	{if isset($templatelite.get.search)}
		{assign var=searchboxtext value=$templatelite.get.search|sanitize:2}
	{else}
		{assign var=searchboxtext value=#PLIGG_Visual_Search_SearchDefaultText#}			
	{/if}

	<form action="{$my_pligg_base}/search.php" method="get" name="thisform-search" id="thisform-search"
		{php}
		global $URLMethod, $my_base_url, $my_pligg_base;
		if ($URLMethod==2) print "onsubmit='document.location.href=\"{$my_base_url}{$my_pligg_base}/search/\"+encodeURIComponent(this.search.value); return false;'";
		{/php}
		>

		<input type="text" size="20" class="searchfield" name="search" id="searchsite" value="{$searchboxtext}" onfocus="if(this.value == '{$searchboxtext}') {ldelim}this.value = '';{rdelim}" onblur="if (this.value == '') {ldelim}this.value = '{$searchboxtext}';{rdelim}"/>
		<input type="submit" value="" class="go" />
	</form>

			

</div>
</div>	


<!-- END SEARCH -->


<!-- END HEADER.TPL -->