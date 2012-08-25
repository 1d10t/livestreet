{if $oUserCurrent}
	
	{block name="script_wrap"}
	<script language="JavaScript" type="text/javascript">
		{block name="script"}{literal}
		jQuery(document).ready( function() {
			jQuery('#userfeed_users_complete').keydown(function (event) {
				if (event.which == 13) {
					ls.userfeed.appendUser()
				}
			});
		 });
		{/literal}{/block}
	</script>
	{/block}
	


	{include file="blocks/block.userfeed_users_filter.tpl"}
	
	
	{if count($aUserfeedFriends)}
		{include file="blocks/block.userfeed_users_friends.tpl"}
	{/if}
{/if}