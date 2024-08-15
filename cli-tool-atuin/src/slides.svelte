<script lang="ts">
	import { Presentation, Slide, Code, Step, Media, Stack } from '@components'
	import Layout from './layout.svelte'
</script>

<Presentation>
	<!-- intro -->
	<Slide>
		<Layout>
			<div class="flex h-full items-center justify-center gap-[100px]">
				<div class="flex items-center justify-center"></div>
			</div>
		</Layout>
	</Slide>

	<Slide animate>
		<Layout>
			<div
				data-id="main-animate"
				class="flex h-full items-center justify-center gap-[100px]"
			>
				<img width="400" src="atuin.png" alt="logo" />
			</div>
		</Layout>
	</Slide>

	<Slide animate>
		<Layout>
			<div
				data-id="main-animate"
				class="flex h-full items-center justify-center gap-[100px]"
			>
				DEMO ATUIN
			</div>
		</Layout>
	</Slide>

	<Slide animate>
		<Layout>
			<div
				data-id="main-animate"
				class="flex h-full items-center justify-center gap-[100px]"
			>
				<img width="400" src="atuin.png" alt="logo" />
			</div>
		</Layout>
	</Slide>

	<Slide animate>
		<Layout>
			<div class="flex h-full items-center justify-center gap-[100px]">
				<div>
					<div class="flex items-center justify-center">
						<img width="400" src="atuin.png" alt="logo" />
					</div>
					<div class="mt-20 items-center justify-center flex">
						<p class="w-1/2 p-5 rounded-lg bg-[#1e1e2e]">
							Atuin is a tool which aims to replace how manage your shell
							history.
						</p>
					</div>
				</div>
			</div>
		</Layout>
	</Slide>

	<Slide animate>
		<Layout>
			<div class="flex h-full items-center justify-center gap-[100px]">
				<div>
					<div data-id="main-animate" class="flex items-center justify-center">
						<img width="400" src="atuin.png" alt="logo" />
					</div>
					<div class="mt-20 items-center justify-center flex-row">
						<div
							data-id="main-animate"
							class="p-5 space-y-10 rounded-lg bg-[#1e1e2e]"
						>
							<p>Key Features</p>
							<ul class="list-disc list-inside text-left">
								<li>Supports all the major shells</li>
								<li>Sync/Backup history</li>
								<li>Nice search interface</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</Layout>
	</Slide>

	<Slide animate>
		<Layout>
			<div class="flex h-full items-center justify-center gap-[100px]">
				<div data-id="main-animate">
					<div class="flex items-center justify-center">
						<img width="400" src="atuin.png" alt="logo" />
					</div>
					<div class="flex items-center justify-center">
						<img width="200" src="shell.svg" alt="logo" />
					</div>
					<div class="mt-20 items-center justify-center flex-row">
						<div
							data-id="main-animate"
							class="p-5 space-y-10 rounded-lg bg-[#1e1e2e]"
						>
							<p>Key Features</p>

							<ul class="list-disc list-inside text-left">
								<li>Supports all the major shells</li>
								<li class="text-gray-500">Sync/Backup history</li>
								<li class="text-gray-500">Nice search interface</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</Layout>
	</Slide>

	<Slide animate>
		<Layout>
			<div class="flex h-full items-center justify-center gap-[100px]">
				<div data-id="main-animate">
					<div class="flex items-center justify-center">
						<img width="400" src="atuin.png" alt="logo" />
					</div>
					<div class="flex items-center justify-center">
						<img width="200" src="sync.svg" alt="logo" />
					</div>
					<div class="mt-20 items-center justify-center flex-row">
						<div
							data-id="main-animate"
							class="p-5 space-y-10 rounded-lg bg-[#1e1e2e]"
						>
							<p>Key Features</p>

							<ul class="list-disc list-inside text-left">
								<li class="text-gray-500">Supports all the major shells</li>
								<li>Sync/Backup history</li>
								<li class="text-gray-500">Nice search interface</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</Layout>
	</Slide>

	<Slide animate>
		<Layout>
			<div class="flex h-full items-center justify-center gap-[100px]">
				<div data-id="main-animate">
					<div class="flex items-center justify-center">
						<img width="400" src="atuin.png" alt="logo" />
					</div>
					<div class="flex items-center justify-center">
						<img width="200" src="search.svg" alt="logo" />
					</div>
					<div class="mt-20 items-center justify-center flex-row">
						<div
							data-id="main-animate"
							class="p-5 space-y-10 rounded-lg bg-[#1e1e2e]"
						>
							<p>Key Features</p>

							<ul class="list-disc list-inside text-left">
								<li class="text-gray-500">Supports all the major shells</li>
								<li class="text-gray-500">Sync/Backup history</li>
								<li>Nice search interface</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</Layout>
	</Slide>

	<Slide animate>
		<Layout>
			<div class="flex h-full items-center justify-center gap-[100px]">
				<div data-id="main-animate">
					<div class="flex items-center justify-center">
						<img width="400" src="atuin.png" alt="logo" />
					</div>
					<div class="mt-20 items-center justify-center flex-row">
						<div
							data-id="main-animate"
							class="p-5 space-y-10 rounded-lg bg-[#1e1e2e]"
						>
							<h2>Alternatives?</h2>
						</div>
					</div>
				</div>
			</div>
		</Layout>
	</Slide>

	<Slide animate>
		<Layout>
			<div
				data-id="main-animate"
				class="flex h-full items-center justify-center gap-[100px]"
			>
				Builtin
			</div>
		</Layout>
	</Slide>

	<Slide animate>
		<Layout>
			<div
				data-id="main-animate"
				class="flex h-full items-center justify-center gap-[100px]"
			>
				FZF Reverse Search
			</div>
		</Layout>
	</Slide>

	<Slide animate>
		<Layout>
			<div
				data-id="main-animate"
				class="flex h-full items-center justify-center gap-[100px]"
			>
				Atuin
			</div>
		</Layout>
	</Slide>

	<Slide animate>
		<Layout>
			<div
				data-id="main-animate"
				class="flex h-full items-center justify-center gap-[100px]"
			>
				Live coding setup with home manager
			</div>
		</Layout>
	</Slide>

	<Slide animate>
		<Layout>
			<div
				data-id="main-animate"
				class="flex h-full items-center justify-center gap-[100px]"
			>
				Show atuin export fish shell
			</div>
		</Layout>
	</Slide>

	<Slide animate>
		<Layout>
			<div
				data-id="main-animate"
				class="flex h-full items-center justify-center gap-[100px]"
			>
				Setup NixOS atuin server
			</div>
		</Layout>
	</Slide>
</Presentation>
