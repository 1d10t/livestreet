{extends file="block.prototype.tpl"}

{block name="block_wrap" prepend}
	{assign var="sBlockType" value="activity"}
{/block}

{block name="block_header_class"}block-header{/block}

{block name="block_title"}
	{$aLang.stream_block_users_friends}
{/block}

{block name="block_js_update"}{/block}
{block name="block_nav_wrap"}{/block}

{block name="block_content"}
	<small class="note">{$aLang.stream_settings_note_follow_friend}</small>
	
	{if count($aStreamFriends)}
		<ul class="stream-settings-friends user-list-mini max-height-200">
			{foreach from=$aStreamFriends item=oUser}
				{assign var=iUserId value=$oUser->getId()}
				<li><input class="streamUserCheckbox input-checkbox"
							type="checkbox"
							id="strm_u_{$iUserId}"
							{if isset($aStreamSubscribedUsers.$iUserId)} checked="checked"{/if}
							onClick="if (jQuery(this).prop('checked')) { ls.stream.subscribe({$iUserId}) } else { ls.stream.unsubscribe({$iUserId}) } " />
					<a href="{$oUser->getUserWebPath()}" title="{$oUser->getLogin()}"><img src="{$oUser->getProfileAvatarPath(24)}" alt="avatar" class="avatar" /></a>
					<a href="{$oUser->getUserWebPath()}">{$oUser->getLogin()}</a>
				</li>
			{/foreach}
		</ul>
	{else}
		<small class="note">{$aLang.stream_no_subscribed_users}</small>
	{/if}
{/block}