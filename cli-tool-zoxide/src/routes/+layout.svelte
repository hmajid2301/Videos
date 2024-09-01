<script lang="ts">
	import '../styles/app.css'

	let { children } = $props()
</script>

<svelte:head>
	<title>CLI Tool: Zoxide</title>
</svelte:head>

{@render children()}
