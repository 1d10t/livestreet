{block name="block_head"}{/block}

{block name="block_wrap"}
<section
	class="{block name='block_class'}block block-type-{$sBlockType}{/block}"
	{block name='block_attrs'}{/block}
	>
	{block name="block"}
	
	{block name="block_header_wrap"}
	<header class="{block name="block_header_class"}block-header sep{/block}">
		{block name="block_header"}
		
		{block name="block_title_wrap"}
		<h3>
			{block name="block_title"}
			<!-- title: text | a -->
			{/block}{*/block_title*}
		</h3>
		{/block}{*/block_title_wrap*}
		
		{block name="block_js_update"}
		<div class="{block name="block_js_update_class"}block-update js-block-{$sBlockType}-update{/block}"></div>
		{/block}{*/block_js_update*}
		
		{block name="block_nav_wrap"}
		<ul
			class="{block name="block_nav_class"}nav nav-pills js-block-{$sBlockType}-nav{/block}"
			{block name="block_nav_attrs"}{/block}
			>
			{block name="block_nav"}
			<!-- nav items: li -->
			{/block}{*/block_nav*}
		</ul>
		{/block}{*/block_nav_wrap*}
		
		{/block}{*/block_header*}
	</header>
	{/block}{*/block_header_wrap*}
	
	{block name="block_content_wrap"}
	<div class="{block name="block_content_class"}block-content{/block}">
		
		{block name="block_content"}
		
		{block name="block_js_content_wrap"}
		<div
			class="js-block-{$sBlockType}-content"
			{block name="block_js_content_attrs"}{/block}
			>
			{block name="block_js_content"}
			<!-- js content: html -->
			{/block}{*/block_js_content*}
		</div>
		{/block}{*/block_js_content_wrap*}

		{block name="block_content_footer_wrap"}
		<footer>
			{block name="block_content_footer"}
			<!-- footer links: a -->
			{/block}{*/block_content_footer*}
		</footer>
		{/block}{*/block_content_footer_wrap*}
		
		{/block}{*/block_content*}
		
	</div>
	{/block}{*/block_content_wrap*}
		
	{block name="block_footer_wrap"}
	<footer>
		{block name="block_footer"}
		<!-- footer links: a -->
		{/block}{*/block_footer*}
	</footer>
	{/block}{*/block_footer_wrap*}
	
	{/block}{*/block*}
</section>
{/block}{*/block_wrap*}