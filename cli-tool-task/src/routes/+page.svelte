<script lang="ts">
	import { Presentation, Slide, Code, Transition, Action } from '@animotion/core'
	import { tween } from '@animotion/motion'

	let code: Code
</script>

<Presentation
	options={{
		history: true,
		transition: 'slide',
		controls: true,
		progress: true
	}}
>
	<Slide class="h-full place-content-center place-items-center">
		<Transition>
			<img width="400" src="taskfile.svg" alt="logo" />
		</Transition>

		<Transition class="mt-16">
			<div class="flex h-full items-center justify-center gap-[100px]">
				<div class="mt-10 flex items-center justify-center">
					<p class="w-2/3 rounded-lg bg-[#1e1e2e] p-5">
						Task is a task runner or build tool, like make.
					</p>
				</div>
			</div>
		</Transition>
	</Slide>

	<Slide class="h-full place-content-center place-items-center">
		<Transition>
			<img height="900" width="auto" src="crying.jpeg" alt="logo" />
		</Transition>
	</Slide>

	<Slide class="h-full place-content-center place-items-center">
		<Code
			bind:this={code}
			lang="shellscript"
			theme="catppuccin-mocha"
			code={`task tests:unit`}
			options={{ duration: 1000, stagger: 0.3, containerStyle: false }}
		/>

		<Action do={() => code.update`gotestsum --hide-summary=skipped -- -short ./internal/...`} />
	</Slide>

	<Slide class="h-full place-content-center place-items-center">
		<Code
			bind:this={code}
			lang="yaml"
			theme="catppuccin-mocha"
			code={`
tests:unit:
    desc: Runs all the unit tests.
    cmds:
        - gotestsum --hide-summary=skipped -- -short ./internal/...`}
			options={{ duration: 1000, stagger: 0.3, containerStyle: false }}
		/>
	</Slide>

	<Slide class="h-full place-content-center place-items-center">
		<Transition>
			<img height="900" width="auto" src="install.svg" alt="logo" />
		</Transition>
	</Slide>

	<Slide class="h-full place-content-center place-items-center">
		<Code
			bind:this={code}
			lang="shellscript"
			theme="catppuccin-mocha"
			code={`sh -c "$(curl --location https://taskfile.dev/install.sh)" -- -d`}
			options={{ duration: 1000, stagger: 0.3, containerStyle: false }}
		/>

		<Action do={() => code.update`nix-shell -p go-task`} />
		<Action do={() => code.update`nvim Taskfile.yml`} />
	</Slide>

	<Slide class="h-full place-content-center place-items-center">
		<Code
			bind:this={code}
			lang="yaml"
			theme="catppuccin-mocha"
			code={`
version: "3"

tasks:
  dev:
    desc: Start the app in dev mode with live-reloading.
    env:
      BANTERBUS_LOG_LEVEL: debug
    cmds:
      - air

  lint:
    desc: Runs the linter.
    cmds:
      - golangci-lint run {{.CLI_ARGS}} ./...

  format:
    desc: Runs the formatter.
    cmds:
      - goimports -local gitlab.com/hmajid2301/banterbus -w .
      - golines -m 120 -w .

  docker:build:
    desc: Builds a Docker image using Nix.
    cmds:
      - nix build .#container

  tests:
    desc: Runs all the tests.
    cmds:
      - gotestsum`}
			options={{ duration: 1000, stagger: 0.3, containerStyle: true }}
		/>
		<Action do={() => code.selectLines`4-9`} />
		<Action do={() => code.selectLines`11-14`} />
	</Slide>

	<Slide class="h-full place-content-center place-items-center">
		<Transition>
			<img height="900" width="auto" src="yaml-file-engineer.jpg" alt="logo" />
		</Transition>
	</Slide>

	<Slide class="h-full place-content-center place-items-center">
		<Transition>
			<img height="900" width="auto" src="install.svg" alt="logo" />
		</Transition>
	</Slide>

	<Slide class="h-full place-content-center place-items-center">
		<Transition>
			<img height="900" width="auto" src="terminal.png" alt="logo" />
		</Transition>
	</Slide>

	<Slide class="h-full place-content-center place-items-center">
		<Code
			bind:this={code}
			lang="shellscript"
			theme="catppuccin-mocha"
			code={`nvim $HOME/Taskfile.yml`}
			options={{ duration: 1000, stagger: 0.3, containerStyle: false }}
		/>
		<Action do={() => code.update`task -g lint`} />
	</Slide>

	<Slide class="h-full place-content-center place-items-center">
		<Transition>
			<img height="900" width="auto" src="friendship_ended_with.jpg" alt="logo" />
		</Transition>
	</Slide>

	<Slide class="h-full place-content-center place-items-center">
		<h1>⛲Features</h1>
	</Slide>

	<Slide class="m-y-10 h-full place-content-center place-items-center">
		<h2>👷 Include other Taskfiles</h2>

		<Code
			bind:this={code}
			lang="yaml"
			theme="catppuccin-mocha"
			code={`
version: '3'

includes:
  docs: ./documentation # will look for ./documentation/Taskfile.yml
  docker: ./DockerTasks.yml
`}
			options={{ duration: 1000, stagger: 0.3, containerStyle: false }}
		/>
	</Slide>

	<Slide class="m-y-10 h-full place-content-center place-items-center">
		<h2>📦 Task Dependencies</h2>

		<Code
			bind:this={code}
			lang="yaml"
			theme="catppuccin-mocha"
			code={`
version: '3'

tasks:
  build:
    deps: [assets]
    cmds:
      - go build -v -i main.go

  assets:
    cmds:
      - esbuild --bundle --minify css/index.css > public/bundle.css
        sources:
      - src/js/**/*.js
    generates:
      - public/bundle.js

`}
			options={{ duration: 1000, stagger: 0.3, containerStyle: false }}
		/>
	</Slide>

	<Slide class="m-y-10 h-full place-content-center place-items-center">
		<h2>Dangerous Tasks</h2>

		<Code
			bind:this={code}
			lang="yaml"
			theme="catppuccin-mocha"
			code={`
version: '3'

tasks:
  dangerous:
    prompt: This is a dangerous command... Do you want to continue?
    cmds:
      - echo 'dangerous command'
`}
			options={{ duration: 1000, stagger: 0.3, containerStyle: false }}
		/>
		<Action
			do={() => code.update`
❯ task dangerous

task: "This is a dangerous command... Do you want to continue?" [y/N]`}
		/>
	</Slide>

	<Slide class="m-y-10 h-full place-content-center place-items-center">
		<h2>👀 Watch</h2>

		<Code
			bind:this={code}
			lang="yaml"
			theme="catppuccin-mocha"
			code={`
version: '3'

interval: 500ms # Defaults is 5 seconds

tasks:
  build:
    desc: Builds the Go application
    watch: true
    sources:
      - '**/*.go'
    cmds:
      - go build # ...

`}
			options={{ duration: 1000, stagger: 0.3, containerStyle: false }}
		/>
		<Action do={() => code.update`❯ task bulid`} />
		<Action do={() => code.update`❯ task --watch bulid`} />
	</Slide>

	<Slide class="h-full place-content-center place-items-center">
		<div class="flex h-full items-center justify-center gap-[100px]">
			<h4 class="w-[800px] text-[64px] leading-[120%]">Demo</h4>
		</div>
	</Slide>

	<Slide class="h-full place-content-center place-items-center">
		<Transition>
			<img height="900" width="auto" src="makefile.jpg" alt="logo" />
		</Transition>
	</Slide>

	<Slide class="h-full place-content-center place-items-center">
		<Transition>
			<div
				class="flex h-[800px] w-[800px] items-center justify-center overflow-hidden rounded-full border-4 border-white"
			>
				<img src="logo.png" alt="logo" class="h-full w-full object-contain" />
			</div>
		</Transition>

		<Transition>
			<div class="flex h-full items-center justify-center gap-[100px]">
				<h4 class="w-[800px] text-[64px] leading-[120%]">I use Nix btw!</h4>
			</div>
		</Transition>
	</Slide>
</Presentation>
