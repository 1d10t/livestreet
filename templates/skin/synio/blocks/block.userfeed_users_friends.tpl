{extends file="block.prototype.tpl"}

{block name="block_head" append}
	{assign var="sBlockType" value="activity"}
{/block}

{block name="block_header_class"}block-header{/block}

{block name="block_title"}
	{$aLang.userfeed_block_users_friends}
{/block}

{block name="block_js_update"}{/block}
{block name="block_nav_wrap"}{/block}

{block name="block_content"}
	<small class="note">{$aLang.userfeed_settings_note_follow_friend}</small>
	
	<ul class="user-list-mini stream-settings-friends max-height-200">
		{foreach from=$aUserfeedFriends item=oUser}
			{assign var=iUserId value=$oUser->getId()}
			
			<li><input class="userfeedUserCheckbox input-checkbox"
						type="checkbox"
						id="usf_u_{$iUserId}"
						{if isset($aUserfeedSubscribedUsers.$iUserId)} checked="checked"{/if}
						onClick="if (jQuery(this).prop('checked')) { ls.userfeed.subscribe('users',{$iUserId}) } else { ls.userfeed.unsubscribe('users',{$iUserId}) } " />
				<a href="{$oUser->getUserWebPath()}" title="{$oUser->getLogin()}"><img src="{$oUser->getProfileAvatarPath(24)}" alt="avatar" class="avatar" /></a>
				<a href="{$oUser->getUserWebPath()}">{$oUser->getLogin()}</a>
			</li>
		{/foreach}
	</ul>
{/block}