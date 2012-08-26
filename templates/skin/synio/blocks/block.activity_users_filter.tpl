{extends file="block.prototype.tpl"}

{block name="block_head" append}
	{assign var="sBlockType" value="activity"}
{/block}

{block name="block_header_class"}block-header{/block}

{block name="block_title"}
	{$aLang.stream_block_users_title}
{/block}

{block name="block_js_update"}{/block}
{block name="block_nav_wrap"}{/block}

{block name="block_content"}
	<div class="search-form-wrapper">
		<div class="search-input-wrapper">
			<input type="text" id="stream_users_complete" autocomplete="off" placeholder="{$aLang.stream_block_config_append}" class="autocomplete-users input-text input-width-full" />
			<div onclick="ls.stream.appendUser();" class="input-submit"></div>
		</div>
	</div>
	
	{if count($aStreamSubscribedUsers)}
		<ul id="stream_block_users_list" class="user-list-mini max-height-200">
			{foreach from=$aStreamSubscribedUsers item=oUser}
				{assign var=iUserId value=$oUser->getId()}
				
				{if !isset($aStreamFriends.$iUserId)}
					<li><input class="streamUserCheckbox input-checkbox"
								type="checkbox"
								id="strm_u_{$iUserId}"
								checked="checked"
								onClick="if (jQuery(this).prop('checked')) { ls.stream.subscribe({$iUserId}) } else { ls.stream.unsubscribe({$iUserId}) } " />
						<a href="{$oUser->getUserWebPath()}" title="{$oUser->getLogin()}"><img src="{$oUser->getProfileAvatarPath(24)}" alt="avatar" class="avatar" /></a>
						<a href="{$oUser->getUserWebPath()}">{$oUser->getLogin()}</a>
					</li>
				{/if}
			{/foreach}
		</ul>
	{else}
		<ul id="stream_block_users_list"></ul>
		<p id="stream_no_subscribed_users">{$aLang.stream_no_subscribed_users}</p>
	{/if}
{/block}