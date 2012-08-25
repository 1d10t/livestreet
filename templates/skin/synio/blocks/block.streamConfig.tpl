{if $oUserCurrent}
	{block name="script_wrap"}
	<script type="text/javascript">
		{block name="script"}
		{literal}
		jQuery(document).ready( function() {
			jQuery('#stream_users_complete').keydown(function (event) {
				if (event.which == 13) {
					ls.stream.appendUser()
				}
			});
		 });
		{/literal}
		{/block}
	</script>
	{/block}
	
	{include file="blocks/block.activity_events.tpl"}
	{include file="blocks/block.activity_users_friends.tpl"}
	{include file="blocks/block.activity_users_filter.tpl"}
	
{/if}