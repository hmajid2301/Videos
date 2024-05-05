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
			<div class="flex h-full items-center justify-center gap-[100px]">
				<div data-id="circle-1" class="flex items-center justify-center">
					<img width="800" src="nix-bird.jpg" alt="logo" />
				</div>
			</div>
		</Layout>
	</Slide>

	<Slide animate>
		<Layout>
			<div
				data-id="circle-1"
				class="flex h-full items-center justify-center gap-[100px]"
			>
				<img width="400" src="nix-logo.svg" alt="logo" />
			</div>
		</Layout>
	</Slide>

	<Slide animate>
		<Layout>
			<div class="flex h-full items-center justify-center gap-[100px]">
				<div>
					<div class="flex items-center justify-center">
						<img width="400" src="nix-logo.svg" alt="logo" />
					</div>
					<div class="mt-20 items-center justify-center flex">
						<p class="w-1/2 p-5 rounded-lg bg-[#1e1e2e]">
							Nix is a tool that takes a unique approach to package management
							and system configuration.
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
					<div class="flex items-center justify-center">
						<img width="400" src="nix-logo.svg" alt="logo" />
					</div>
					<div class="mt-20 items-center justify-center flex-row">
						<div class="p-5 space-y-10 rounded-lg bg-[#1e1e2e]">
							<p>Programming Language</p>
							<p>Package Manager</p>
							<p>Operating System?</p>
						</div>
					</div>
				</div>
			</div>
		</Layout>
	</Slide>

	<Slide animate>
		<Layout>
			<div class="flex h-full items-center justify-center gap-[100px]">
				<div>
					<div class="flex items-center justify-center">
						<img width="400" src="nix-logo.svg" alt="logo" />
					</div>
					<div class="mt-20 items-center justify-center flex-row">
						<div class="p-5 space-y-10 rounded-lg bg-[#1e1e2e]">
							<p>Programming Language</p>
							<p>Package Manager</p>
							<p class="text-gray-500">Operating System?</p>
						</div>
					</div>
				</div>
			</div>
		</Layout>
	</Slide>

	<Slide animate>
		<Layout>
			<div class="flex h-full items-center justify-center gap-[100px]">
				<div>
					<div class="flex items-center justify-center">
						<img width="400" src="nix-logo.svg" alt="logo" />
					</div>
					<div class="mt-20 items-center justify-center flex-row">
						<div class="p-5 space-y-10 rounded-lg bg-[#1e1e2e]">
							<p>Programming Language</p>
							<p class="text-gray-500">Package Manager</p>
							<p class="text-gray-500">Operating System?</p>
						</div>
					</div>
				</div>
			</div>
		</Layout>
	</Slide>

	<Slide animate>
		<Layout>
			<div class="flex h-full items-center justify-center gap-[100px]">
				<div>
					<div class="flex items-center justify-center">
						<img width="400" src="nix-logo.svg" alt="logo" />
					</div>
					<div class="mt-20 items-center justify-center flex-row">
						<div class="p-5 space-y-10 rounded-lg bg-[#1e1e2e]">
							<p>Programming Language</p>
							<ul class="list-disc list-inside text-left">
								<li>Functional</li>
								<li>Pure</li>
								<li>Lazily Evaluated</li>
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
				<div>
					<div class="flex items-center justify-center">
						<img width="400" src="nix-logo.svg" alt="logo" />
					</div>
					<div class="mt-20 items-center justify-center flex-row">
						<div class="p-5 space-y-10 rounded-lg bg-[#1e1e2e]">
							<p class="text-gray-500">Programming Language</p>
							<p>Package Manager</p>
							<p class="text-gray-500">Operating System?</p>
						</div>
					</div>
				</div>
			</div>
		</Layout>
	</Slide>

	<Slide animate>
		<Layout>
			<div class="flex h-full items-center justify-center gap-[100px]">
				<div>
					<div class="flex items-center justify-center">
						<img width="400" src="nix-logo.svg" alt="logo" />
					</div>
					<div class="mt-20 items-center justify-center flex-row">
						<div
							data-id="circle-1"
							class="p-5 space-y-10 rounded-lg bg-[#1e1e2e]"
						>
							<p>Package Manager</p>
							<ul class="list-disc list-inside text-left">
								<li>Declarative</li>
								<li>Reproducible</li>
								<li>Reliable</li>
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
				<div
					data-id="circle-1"
					class="min-w-96 mx-auto p-5 space-y-10 rounded-lg bg-[#1e1e2e] text-[#1e1e2e]"
				></div>
			</div>
		</Layout>
	</Slide>

	<Slide animate>
		<Layout>
			<div class="flex h-full items-center justify-center gap-[100px]">
				<div
					data-id="circle-1"
					class="mx-auto p-5 space-y-10 rounded-lg bg-[#1e1e2e]"
				>
					<a href="https://install.determinate.systems/">
						install.determinate.systems
					</a>
				</div>
			</div>
		</Layout>
	</Slide>

	<Slide animate>
		<Layout>
			<div class="flex h-full items-center justify-center gap-[100px]">
				<div data-id="circle-1" class="min-w-96 mx-auto">
					<Code lang="bash" class="rounded-lg">
						{`nix-shell -p neovim`}
					</Code>
				</div>
			</div>
		</Layout>
	</Slide>
	<Slide animate>
		<Layout>
			<div class="flex h-full items-center justify-center gap-[100px]">
				<div class="mx-auto min-w-96">
					<Code lang="bash" class="rounded-lg">
						{`
                            nix-shell -p neovim
                            which nvim
                            `}
					</Code>
				</div>
			</div>
		</Layout>
	</Slide>

	<Slide animate>
		<Layout>
			<div class="flex h-full items-center justify-center gap-[100px]">
				<div>
					<div class="mx-auto">
						<Code lang="bash" class="rounded-lg">
							{`
                            nix-shell -p neovim
                            which nvim
                            # /nix/store/dr53sp25hyfsnzjpm8mh3r3y36vrw3ng-neovim-0.9.5/bin/nvim
                            `}
						</Code>
					</div>
				</div>
			</div>
		</Layout>
	</Slide>

	<Slide animate>
		<Layout>
			<div class="flex h-full items-center justify-center gap-[100px]">
				<div>
					<div class="mx-auto m-w-96">
						<Code lang="bash" class="rounded-lg" lines="5">
							{`
                            nix-shell -p neovim
                            which nvim
                            # /nix/store/dr53sp25hyfsnzjpm8mh3r3y36vrw3ng-neovim-0.9.5/bin/nvim

                            nvim shell.nix
                            `}
						</Code>
					</div>
				</div>
			</div>
		</Layout>
	</Slide>

	<Slide animate>
		<Layout>
			<div class="flex h-full items-center justify-center gap-[100px]">
				<div>
					<div class="mx-auto w-[800px]">
						<Code lang="nix" class="rounded-lg">
							{`
                            { pkgs ? import <nixpkgs> {} }:
                            `}
						</Code>
					</div>
				</div>
			</div>
		</Layout>
	</Slide>

	<Slide animate>
		<Layout>
			<div class="flex h-full items-center justify-center gap-[100px]">
				<div>
					<div class="mx-auto w-[800px]">
						<Code lang="nix" lines="2-5" class="rounded-lg">
							{`
                            { pkgs ? import <nixpkgs> {} }:
                            pkgs.mkShell {
                                packages = with pkgs; [
                                ];
                            }
                            `}
						</Code>
					</div>
				</div>
			</div>
		</Layout>
	</Slide>

	<Slide animate>
		<Layout>
			<div class="flex h-full items-center justify-center gap-[100px]">
				<div class="mx-auto w-[800px]">
					<Code lang="nix" lines="4-7" class="rounded-lg">
						{`
                            { pkgs ? import <nixpkgs> {} }:
                            pkgs.mkShell {
                                packages = [
                                   pkgs.lolcat
                                   pkgs.go
                                   pkgs.golangci-lint
                                   pkgs.docker-compose
                                ];
                            }
                        `}
					</Code>
				</div>
			</div>
		</Layout>
	</Slide>

	<Slide animate>
		<Layout>
			<div class="flex h-full items-center justify-center gap-[100px]">
				<div data-id="circle-1" class="mx-auto w-[800px]">
					<Code lang="nix" lines="3|4-7" class="rounded-lg">
						{`
                            { pkgs ? import <nixpkgs> {} }:
                            pkgs.mkShell {
                                packages = with pkgs; [
                                   lolcat
                                   go
                                   golangci-lint
                                   docker-compose
                                ];
                            }
                            `}
					</Code>
				</div>
			</div>
		</Layout>
	</Slide>

	<Slide animate>
		<Layout>
			<div
				data-id="circle-1"
				class="flex h-full items-center justify-center gap-[100px]"
			>
				<Media autoplay class="w-full" src="nix-shell.mp4" type="video" />
			</div>
		</Layout>
	</Slide>

	<Slide animate>
		<Layout>
			<div class="flex h-full items-center justify-center gap-[100px]">
				<div
					data-id="circle-1"
					class="mx-auto p-5 space-y-10 rounded-lg bg-[#1e1e2e]"
				>
					<a href="https://search.nixos.org/packages">
						nixpkgs: https://search.nixos.org/packages
					</a>
				</div>
			</div>
		</Layout>
	</Slide>

	<Slide animate>
		<Layout>
			<div class="flex h-full items-center justify-center gap-[100px]">
				<div
					data-id="circle-1"
					class="w-[800px] h-[800px] rounded-full overflow-hidden flex items-center justify-center border-4 border-white"
				>
					<img src="logo.png" alt="logo" />
				</div>
			</div>
		</Layout>
	</Slide>

	<Slide>
		<Layout>
			<div
				data-id="circle-1"
				class="flex h-full items-center justify-center gap-[100px]"
			>
				<h4 class="w-[800px] text-[64px] leading-[120%]">I use Nix btw!</h4>
			</div>
		</Layout>
	</Slide>
</Presentation>
