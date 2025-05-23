<script lang="ts">
	import '../styles/app.css'

	let { children } = $props()
</script>

<svelte:head>
	<title>Intro To SQLC</title>
</svelte:head>

{@render children()}
