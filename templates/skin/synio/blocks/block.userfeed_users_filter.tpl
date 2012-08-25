{extends file="block.prototype.tpl"}

{block name="block_wrap" prepend}
	{assign var="sBlockType" value="activity"}
{/block}

{block name="block_header_class"}block-header{/block}

{block name="block_title"}
	{$aLang.userfeed_block_users_title}
{/block}

{block name="block_js_update"}{/block}
{block name="block_nav_wrap"}{/block}

{block name="block_content"}
	<small class="note">{$aLang.userfeed_settings_note_follow_user}</small>
	
	<div class="stream-settings-userlist">
		<div class="search-form-wrapper">
			<div class="search-input-wrapper">
				<input type="text" id="userfeed_users_complete" autocomplete="off" placeholder="{$aLang.userfeed_block_users_append}" class="autocomplete-users input-text input-width-full" />
				<div onclick="ls.userfeed.appendUser();" class="input-submit"></div>
			</div>
		</div>
		
		{if count($aUserfeedSubscribedUsers)}
			<ul id="userfeed_block_users_list" class="user-list-mini max-height-200">
				{foreach from=$aUserfeedSubscribedUsers item=oUser}
					{assign var=iUserId value=$oUser->getId()}
					
					{if !isset($aUserfeedFriends.$iUserId)}
						<li><input class="userfeedUserCheckbox input-checkbox"
									type="checkbox"
									id="usf_u_{$iUserId}"
									checked="checked"
									onClick="if (jQuery(this).prop('checked')) { ls.userfeed.subscribe('users',{$iUserId}) } else { ls.userfeed.unsubscribe('users',{$iUserId}) } " />
							<a href="{$oUser->getUserWebPath()}" title="{$oUser->getLogin()}"><img src="{$oUser->getProfileAvatarPath(24)}" alt="avatar" class="avatar" /></a>
							<a href="{$oUser->getUserWebPath()}">{$oUser->getLogin()}</a>
						</li>
					{/if}
				{/foreach}
			 </ul>
		{else}
			<ul id="userfeed_block_users_list"></ul>
		{/if}
	</div>
{/block}