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
						<img width="400" src="channels.svg" alt="logo" />
					</div>
					<div class="mt-20 items-center justify-center flex">
						<p class="w-1/2 p-5 rounded-lg bg-[#1e1e2e]">
							Channels are a way to reference remote nix expressions and
							retrieve the latest version.
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
						<img width="400" src="channels.svg" alt="logo" />
					</div>
					<div class="mt-20 items-center justify-center flex">
						<p class="p-5 rounded-lg bg-[#1e1e2e]">nixpkgs = /nix/store/...</p>
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
						<img width="400" src="channels.svg" alt="logo" />
					</div>
					<div class="mt-20 items-center justify-center flex-row">
						<div
							data-id="main-animate"
							class="p-5 space-y-10 rounded-lg bg-[#1e1e2e]"
						>
							<Code lang="bash" class="rounded-lg">
								{`
                                $ nix-channel --list
                                nixos https://nixos.org/channels/nixos-20.03
                                nixpkgs https://nixos.org/channels/nixpkgs-unstable
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
						<img width="400" src="snowflake.svg" alt="logo" />
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
						<img width="400" src="flake.png" alt="logo" />
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
						<img width="400" src="flake.png" alt="logo" />
					</div>
					<div class="mt-20 items-center justify-center flex-row">
						<div
							data-id="main-animate"
							class="p-5 space-y-10 rounded-lg bg-[#1e1e2e]"
						>
							<p>Allow us to lock our inputs and put them into code.</p>
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
						<img width="400" src="flake.png" alt="logo" />
					</div>
					<div class="mt-20 items-center justify-center flex-row">
						<div
							data-id="main-animate"
							class="p-5 space-y-10 rounded-lg bg-[#1e1e2e]"
						>
							<p>Key Features</p>
							<ul class="list-disc list-inside text-left">
								<li>Lock inputs</li>
								<li>Use git repositories</li>
								<li>Version control</li>
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
						<img width="400" src="flake.png" alt="logo" />
					</div>
					<div class="flex items-center justify-center">
						<img width="200" src="lock.svg" alt="logo" />
					</div>
					<div class="mt-20 items-center justify-center flex-row">
						<div
							data-id="main-animate"
							class="p-5 space-y-10 rounded-lg bg-[#1e1e2e]"
						>
							<p>Key Features</p>
							<ul class="list-disc list-inside text-left">
								<li>Lock inputs</li>
								<li class="text-gray-500">Use git repositories</li>
								<li class="text-gray-500">Reproducible</li>
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
						<img width="400" src="flake.png" alt="logo" />
					</div>
					<div class="flex items-center justify-center">
						<img width="200" src="lock.svg" alt="logo" />
						<img width="200" src="git.svg" alt="logo" />
					</div>
					<div class="mt-20 items-center justify-center flex-row">
						<div
							data-id="main-animate"
							class="p-5 space-y-10 rounded-lg bg-[#1e1e2e]"
						>
							<p>Key Features</p>
							<ul class="list-disc list-inside text-left">
								<li class="text-gray-500">Lock inputs</li>
								<li>Use git repositories</li>
								<li class="text-gray-500">Reproducible</li>
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
						<img width="400" src="flake.png" alt="logo" />
					</div>
					<div class="flex items-center justify-center">
						<img width="200" src="lock.svg" alt="logo" />
						<img width="200" src="git.svg" alt="logo" />
						<img width="200" src="reproducible.svg" alt="logo" />
					</div>
					<div class="mt-20 items-center justify-center flex-row">
						<div
							data-id="main-animate"
							class="p-5 space-y-10 rounded-lg bg-[#1e1e2e]"
						>
							<p>Key Features</p>
							<ul class="list-disc list-inside text-left">
								<li class="text-gray-500">Lock inputs</li>
								<li class="text-gray-500">Use git repositories</li>
								<li>Reproducible</li>
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
						<img width="400" src="flake.png" alt="logo" />
					</div>
					<div class="mt-20 items-center justify-center flex-row">
						<div
							data-id="main-animate"
							class="p-5 space-y-10 rounded-lg bg-[#1e1e2e]"
						>
							<p>How to get started?</p>
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
					<div class="mt-20 items-center justify-center flex-row">
						<div
							data-id="main-animate"
							class="p-5 space-y-10 rounded-lg bg-[#1e1e2e]"
						>
							<Code lang="bash" class="rounded-lg">
								{`
                                nvim /etc/nix/nix.conf
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
					<div class="mt-20 items-center justify-center flex-row">
						<div
							data-id="main-animate"
							class="p-5 space-y-10 rounded-lg bg-[#1e1e2e]"
						>
							<Code lang="bash" class="rounded-lg">
								{`
                                experimental-features = nix-command flakes
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
					<div class="mt-20 items-center justify-center flex-row">
						<div
							data-id="main-animate"
							class="p-5 space-y-10 rounded-lg bg-[#1e1e2e]"
						>
							<Code lang="bash" class="rounded-lg">
								{`
                                nvim /etc/nixos/configuration.nix
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
					<div class="mt-20 items-center justify-center flex-row">
						<div
							data-id="main-animate"
							class="p-5 space-y-10 rounded-lg bg-[#1e1e2e]"
						>
							<Code lang="nix" class="rounded-lg">
								{`
                                { config, pkgs, ... }:
                                {
                                  imports = [
                                    # Include the results of the hardware scan.
                                    ./hardware-configuration.nix
                                  ];

                                  # ......

                                  nix.settings.experimental-features = [ "nix-command" "flakes" ];
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
					<div class="mt-20 items-center justify-center flex-row">
						<div
							data-id="main-animate"
							class="p-5 space-y-10 rounded-lg bg-[#1e1e2e]"
						>
							<Code lang="nix" class="rounded-lg" lines="9">
								{`
                                { config, pkgs, ... }:
                                {
                                  imports = [
                                    ./hardware-configuration.nix
                                  ];

                                  # ......

                                  nix.settings.experimental-features = [ "nix-command" "flakes" ];
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
					<div class="mt-20 items-center justify-center flex-row">
						<div
							data-id="main-animate"
							class="p-5 space-y-10 rounded-lg bg-[#1e1e2e]"
						>
							<Code lang="bash" class="rounded-lg">
								{`
                                nix flake init

                                # flake.nix
                                # flake.lock
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
					<div class="mt-20 items-center justify-center flex-row">
						<div
							data-id="main-animate"
							class="p-5 space-y-10 rounded-lg bg-[#1e1e2e]"
						>
							<Code lang="bash" class="rounded-lg">
								{`
                                nvim flake.nix
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
					<div class="mt-20 items-center justify-center flex-row">
						<div
							data-id="main-animate"
							class="p-5 space-y-10 rounded-lg bg-[#1e1e2e]"
						>
							<Code lang="nix" class="rounded-lg">
								{`
                                {
                                    description = "My first flake";
                                    inputs = {};
                                    outputs = {};
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
					<div class="mt-20 items-center justify-center flex-row">
						<div
							data-id="main-animate"
							class="p-5 space-y-10 rounded-lg bg-[#1e1e2e]"
						>
							<Code lang="nix" class="rounded-lg" lines="4-6">
								{`
                                {
                                    description = "My first flake";
                                    inputs = {
                                        nixpkgs = {
                                            url = "github:NixOS/nixpkgs/nixos-unstable";
                                        };
                                    };
                                    outputs = {};
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
					<div class="mt-20 items-center justify-center flex-row">
						<div
							data-id="main-animate"
							class="p-5 space-y-10 rounded-lg bg-[#1e1e2e]"
						>
							<Code lang="bash" class="rounded-lg">
								{`
                                nvim flake.lock
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
					<div class="mt-20 items-center justify-center flex-row">
						<div
							data-id="main-animate"
							class="p-5 space-y-10 rounded-lg bg-[#1e1e2e]"
						>
							<Code lang="nix" class="rounded-lg" lines="13">
								{`
                                {
                                  "nodes": {
                                    "nixpkgs": {
                                      "locked": {
                                        "lastModified": 1668703332,
                                        // A SHA of the contents of the flake
                                        "narHash": "sha256-PW3vz3ODXaInogvp2IQyDG9lnwmGlf07A6OEeA1Q7sM=",
                                        // The GitHub org
                                        "owner": "NixOS",
                                        // The GitHub repo
                                        "repo": "nixpkgs",
                                        // The specific revision
                                        "rev": "de60d387a0e5737375ee61848872b1c8353f945e",
                                        // The type of input
                                        "type": "github"
                                      }
                                    },
                                    // Other inputs
                                  }
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
					<div class="mt-20 items-center justify-center flex-row">
						<div
							data-id="main-animate"
							class="p-5 space-y-10 rounded-lg bg-[#1e1e2e]"
						>
							<Code lang="nix" class="rounded-lg" lines="7-9">
								{`
                                {
                                    description = "My first flake";
                                    inputs = {
                                        nixpkgs = {
                                            url = "github:NixOS/nixpkgs/nixos-unstable";
                                        };
                                    };
                                    outputs = {nixpkgs}: {
                                        nixosConfigurations =
                                        devShell =
                                    };
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
					<div class="mt-20 items-center justify-center flex-row">
						<div
							data-id="main-animate"
							class="p-5 space-y-10 rounded-lg bg-[#1e1e2e]"
						>
							<Code lang="nix" class="rounded-lg" lines="10-14">
								{`
                                {
                                    description = "My first flake";
                                    inputs = {
                                        nixpkgs = {
                                            url = "github:NixOS/nixpkgs/nixos-unstable";
                                        };
                                    };
                                    outputs = {nixpkgs}: {
                                        nixosConfigurations = {
                                            myHost = nixpkgs.lib.nixosSystem {
                                                system = "x86_64-linux";
                                                modules = [ /etc/nixos/configuration.nix ];
                                            };
                                        }
                                    };
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
			<div
				data-id="main-animate"
				class="flex h-full items-center justify-center gap-[100px]"
			>
				<Media autoplay class="w-full" src="nix-develop.mp4" type="video" />
			</div>
		</Layout>
	</Slide>

	<Slide animate>
		<Layout>
			<div class="flex h-full items-center justify-center gap-[100px]">
				<div>
					<div class="mt-20 items-center justify-center flex-row">
						<div
							data-id="main-animate"
							class="p-5 space-y-10 rounded-lg bg-[#1e1e2e]"
						>
							<Code lang="bash" class="rounded-lg" lines="10-14">
								{`
                                nix run github:nix-community/nixos-anywhere -- --flake '.#vm' haseeb@192.168.122.42
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
