{extends file="block.prototype.tpl"}

{block name="block_wrap" prepend}
	{assign var="sBlockType" value="blogs"}
{/block}

{block name='block_attrs'}id="block_blogs"{/block}

{block name="block_title"}
	{$aLang.block_blogs}
{/block}

{block name="block_nav"}
	<li class="active js-block-blogs-item" data-type="top"><a href="#">{$aLang.block_blogs_top}</a></li>
	{if $oUserCurrent}
		<li class="js-block-blogs-item" data-type="join"><a href="#">{$aLang.block_blogs_join}</a></li>
		<li class="js-block-blogs-item" data-type="self"><a href="#">{$aLang.block_blogs_self}</a></li>
	{/if}
{/block}

{block name="block_js_content"}
	{$sBlogsTop}
{/block}

{block name="block_content_footer"}
	<a href="{router page='blogs'}">{$aLang.block_blogs_all}</a>
{/block}