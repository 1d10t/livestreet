{extends file="block.prototype.tpl"}

{block name="block_head" append}
	{assign var="sBlockType" value="blogInfo"}
{/block}

{block name="block_header_class"}block-header{/block}

{block name="block_title"}
	{$aLang.block_blog_info}
{/block}

{block name="block_js_update"}{/block}
{block name="block_nav_wrap"}{/block}

{block name="block_content"}
	<p id="block_blog_info"></p>
{/block}