{extends file="block.prototype.tpl"}

{block name="block_wrap"}
	{assign var="sBlogType" value="blog"}
	{if $oTopic}
		{assign var="oBlog" value=$oTopic->getBlog()}
		{if $oBlog->getType()!='personal'}
			{$smarty.block.parent}
		{/if}
	{/if}
{/block}

{block name="block_header_class"}block-header{/block}

{block name="block_title"}
	<a href="{$oBlog->getUrlFull()}">{$oBlog->getTitle()|escape:'html'}</a>
{/block}

{block name="block_js_update"}{/block}
{block name="block_nav_wrap"}{/block}

{block name="block_content"}
	<span id="blog_user_count_{$oBlog->getId()}">{$oBlog->getCountUser()}</span> {$oBlog->getCountUser()|declension:$aLang.reader_declension:'russian'}<br />
	{$oBlog->getCountTopic()} {$oBlog->getCountTopic()|declension:$aLang.topic_declension:'russian'}
{/block}

{block name="block_footer"}
	{if $oUserCurrent and $oUserCurrent->getId()!=$oBlog->getOwnerId()}
		<button type="submit"  class="button button-small" id="blog-join" data-only-text="1" onclick="ls.blog.toggleJoin(this,{$oBlog->getId()}); return false;">{if $oBlog->getUserIsJoin()}{$aLang.blog_leave}{else}{$aLang.blog_join}{/if}</button>
	{/if}
	<a href="{router page='rss'}blog/{$oBlog->getUrl()}/" class="rss">RSS</a>
{/block}