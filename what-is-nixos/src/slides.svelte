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
							NixOS is a Linux distribution powered by the Nix package manager
							and configured using the Nix language.
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
						<img width="400" src="nix-logo.svg" alt="logo" />
					</div>
					<div class="mt-20 items-center justify-center flex-row">
						<div
							data-id="main-animate"
							class="p-5 space-y-10 rounded-lg bg-[#1e1e2e]"
						>
							<p>Key Features</p>
							<ul class="list-disc list-inside text-left">
								<li>Declarative</li>
								<li>Rollback</li>
								<li>OS as code</li>
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
					<div data-id="main-animate" class="flex items-center justify-center">
						<img width="400" src="nix-logo.svg" alt="logo" />
					</div>
					<div class="mt-20 items-center justify-center flex-row">
						<div
							data-id="main-animate"
							class="p-5 space-y-10 rounded-lg bg-[#1e1e2e]"
						>
							<p>Key Features</p>
							<ul class="list-disc list-inside text-left">
								<li>Declarative</li>
								<li class="text-gray-500">Rollback</li>
								<li class="text-gray-500">OS as code</li>
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
					<div data-id="main-animate" class="flex items-center justify-center">
						<img width="200" src="declare.svg" alt="logo" />
					</div>
					<div class="mt-20 items-center justify-center flex-row">
						<div
							data-id="main-animate"
							class="p-5 space-y-10 rounded-lg bg-[#1e1e2e]"
						>
							<p>Declarative</p>
							<p>Declarative tells us what to do, not how to do it.</p>
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
					<div data-id="main-animate" class="flex items-center justify-center">
						<img width="200" src="declare.svg" alt="logo" />
					</div>
					<div class="mt-20 items-center justify-center flex-row">
						<div
							data-id="main-animate"
							class="p-5 space-y-10 rounded-lg bg-[#1e1e2e]"
						>
							<p>Declarative</p>
							<p>
								For example, make me a cup of tea ☕ <br />
								vs giving someone a recipe how to make tea.
							</p>
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
					<div data-id="main-animate" class="flex items-center justify-center">
						<img width="200" src="declare.svg" alt="logo" />
					</div>
					<div class="mt-20 items-center justify-center flex-row">
						<div
							data-id="main-animate"
							class="p-5 space-y-10 rounded-lg bg-[#1e1e2e]"
						>
							<Code lang="bash" class="rounded-lg">
								{`
                                   sudo apt-get install hyprland
                                   sudo apt-get install i3
                                   # Other instructions ...
                               `}
							</Code>
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
					<div data-id="main-animate" class="flex items-center justify-center">
						<img width="200" src="declare.svg" alt="logo" />
					</div>
					<div class="mt-20 items-center justify-center flex-row">
						<div
							data-id="main-animate"
							class="p-5 space-y-10 rounded-lg bg-[#1e1e2e]"
						>
							<Code lang="nix" class="rounded-lg">
								{`
                            {
                                services.xserver.windowManager.i3.enable = false;
                                programs.hyprland.enable = true;
                            }
                            `}
							</Code>
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
					<div data-id="main-animate" class="flex items-center justify-center">
						<img width="400" src="nix-logo.svg" alt="logo" />
					</div>
					<div class="mt-20 items-center justify-center flex-row">
						<div
							data-id="main-animate"
							class="p-5 space-y-10 rounded-lg bg-[#1e1e2e]"
						>
							<p>Key Features</p>
							<ul class="list-disc list-inside text-left">
								<li class="text-gray-500">Declarative</li>
								<li>Rollback</li>
								<li class="text-gray-500">OS as code</li>
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
					<div data-id="main-animate" class="flex items-center justify-center">
						<img width="200" src="restore.svg" alt="logo" />
					</div>
					<div class="mt-20 items-center justify-center flex-row">
						<div
							data-id="main-animate"
							class="p-5 space-y-10 rounded-lg bg-[#1e1e2e]"
						>
							<img
								src="nixos-boot-menu.png"
								alt="nixos boot previous generations"
							/>
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
					<div data-id="main-animate" class="flex items-center justify-center">
						<img width="400" src="nix-logo.svg" alt="logo" />
					</div>
					<div class="mt-20 items-center justify-center flex-row">
						<div
							data-id="main-animate"
							class="p-5 space-y-10 rounded-lg bg-[#1e1e2e]"
						>
							<p>Key Features</p>
							<ul class="list-disc list-inside text-left">
								<li class="text-gray-500">Declarative</li>
								<li class="text-gray-500">Rollback</li>
								<li>OS as code</li>
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
					<div data-id="main-animate" class="flex items-center justify-center">
						<img width="200" src="programming.svg" alt="logo" />
					</div>
					<div class="mt-20 items-center justify-center flex-row">
						<div
							data-id="main-animate"
							class="p-5 space-y-10 rounded-lg bg-[#1e1e2e]"
						>
							<p>OS as code</p>
							<ul class="list-disc list-inside text-left">
								<li>Version control</li>
								<li>Share across devices</li>
								<li>Common language for config</li>
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
					data-id="main-animate"
					class="mt-20 items-center justify-center flex-row"
				>
					<Code lang="nix" class="rounded-lg">
						{`
                           nvim /etc/nixos/configuration.nix
                        `}
					</Code>
				</div>
			</div>
		</Layout>
	</Slide>

	<Slide animate>
		<Layout>
			<div class="flex h-full items-center justify-center gap-[100px]">
				<div
					data-id="main-animate"
					class="mt-20 items-center justify-center flex-row"
				>
					<Code lang="nix" class="rounded-lg">
						{`
                        {
                           imports = [
                             ./hardware-configuration.nix
                           ];

                           virtualisation = {
                             podman = {
                               enable = true;
                               dockerSocket.enable = true;
                               dockerCompat = true;
                               defaultNetwork.settings = {
                                 dns_enabled = true;
                               };
                             };
                           };
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
				<div data-id="main-animate" class="flex items-center justify-center">
					<img width="200" src="install.svg" alt="logo" />
				</div>
			</div>
		</Layout>
	</Slide>

	<Slide animate>
		<Layout>
			<div class="flex h-full items-center justify-center gap-[100px]">
				<div>
					<div data-id="main-animate" class="flex items-center justify-center">
						<img width="200" src="install.svg" alt="logo" />
					</div>
					<div class="mx-auto p-5 space-y-10 rounded-lg bg-[#1e1e2e]">
						<h2>How to install?</h2>
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
				<Media autoplay class="w-full" src="install.mp4" type="video" />
			</div>
		</Layout>
	</Slide>

	<Slide animate>
		<Layout>
			<div class="flex h-full items-center justify-center gap-[100px]">
				<div
					data-id="main-animate"
					class="mt-20 items-center justify-center flex-row"
				>
					<Code lang="bash" class="rounded-lg">
						{`
                        dotfiles on  main [$] via ❄  impure (nix-shell-env)
                        ❯ nix build .#install-isoConfigurations.graphical

                        built: /nix/store/gia0nq2mmh3a4i9kihfglp6a6hpy72ry-evolution-with-plugins.drv
                        /nix/store/6sh5c0ccrjq1z9mqhda32qc6djgn0fqv-nixos-background-info.drv
                        /nix/store/k5xavl3m1b8n3hl8kmsvingqc68ws40m-X11-fonts.drv
                        nixos-24.11.20240529.ad57eef-x86_64-linux.iso> xorriso : NOTE : Copying to
                        System Area: 432 bytes from file '/nix/store/c9lkx7mb7vvhfq4kvap7miik0lwx77zb-s
                        yslinux-unstable-2019-02-07/share/syslinux/isohdpfx.bin'
                        nixos-24.11.20240529.ad57eef-x86_64-linux.iso> libisofs: NOTE : Automatically
                        adjusted MBR geometry to 1021/162/32
                        nixos-24.11.20240529.ad57eef-x86_64-linux.iso> libisofs: NOTE : Aligned image
                        size to cylinder size by 604 blocks
                        nixos-24.11.20240529.ad57eef-x86_64-linux.iso> xorriso : UPDATE : 5.34% done
                        nixos-24.11.20240529.ad57eef-x86_64-linux.iso> xorriso : UPDATE : 53.00% done
                        nixos-24.11.20240529.ad57eef-x86_64-linux.iso> ISO image produced: 1323216
                        sectors nixos-24.11.20240529.ad57eef-x86_64-linux.iso> Written to medium :
                        `}
					</Code>
				</div>
			</div>
		</Layout>
	</Slide>

	<Slide animate>
		<Layout>
			<div class="flex h-full items-center justify-center gap-[100px]">
				<div
					data-id="main-animate"
					class="mt-20 items-center justify-center flex-row"
				>
					<Code lang="bash" class="rounded-lg">
						{`
                        dotfiles on  main [$] via ❄  impure (nix-shell-env)
                        ❯ eza --tree  result/
                        result
                        ├── iso
                        │  └── nixos-24.11.20240529.ad57eef-x86_64-linux.iso
                        └── nix-support
                           ├── hydra-build-products
                           └── system
                        `}
					</Code>
				</div>
			</div>
		</Layout>
	</Slide>

	<Slide animate>
		<Layout>
			<div class="flex h-full items-center justify-center gap-[100px]">
				<div
					data-id="main-animate"
					class="w-[800px] h-[800px] rounded-full overflow-hidden flex items-center justify-center border-4 border-white"
				>
					<img src="logo.png" alt="logo" />
				</div>
			</div>
		</Layout>
	</Slide>

	<Slide>
		<Layout>
			<div class="flex h-full items-center justify-center gap-[100px]">
				<h4 class="w-[800px] text-[64px] leading-[120%] font-bold">
					I use Nix btw!
				</h4>
			</div>
		</Layout>
	</Slide>
</Presentation>
