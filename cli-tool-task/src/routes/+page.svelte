<script lang="ts">
	import { Presentation, Slide, Code, Transition, Action } from '@animotion/core'
	import { tween } from '@animotion/motion'

	let taskUnit: Code
	let gotestsum: Code
	let install: Code
	let taskfile: Code
	let lint: Code
	let homeTaskfile: Code
	let otherTaskfile: Code
	let taskDep: Code
	let dangerousTask: Code
	let watchTask: Code
	let watchTaskCLI: Code
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
		<img height="900" width="auto" src="crying.jpeg" alt="logo" />
	</Slide>

	<Slide class="h-full place-content-center place-items-center">
		<Code
			bind:this={taskUnit}
			lang="shellscript"
			theme="catppuccin-mocha"
			code={`task tests:unit`}
			options={{ duration: 1000, stagger: 0.3, containerStyle: false }}
		/>

		<Action do={() => taskUnit.update`gotestsum --hide-summary=skipped -- -short ./internal/...`} />
	</Slide>

	<Slide class="h-full place-content-center place-items-center">
		<Code
			bind:this={gotestsum}
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
			bind:this={install}
			lang="shellscript"
			theme="catppuccin-mocha"
			code={`sh -c "$(curl --location https://taskfile.dev/install.sh)" -- -d`}
			options={{ duration: 1000, stagger: 0.3, containerStyle: false }}
		/>

		<Action do={() => install.update`nix-shell -p go-task`} />
		<Action do={() => install.update`nvim Taskfile.yml`} />
	</Slide>

	<Slide class="h-full place-content-center place-items-center">
		<Code
			bind:this={taskfile}
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
      - golangci-lint run {{.CLI_ARGS}} ./...`}
			options={{ duration: 1000, stagger: 0.3, containerStyle: false }}
		/>
		<Action do={() => taskfile.selectLines`4-10`} />
		<Action do={() => taskfile.selectLines`11-15`} />
	</Slide>

	<Slide class="h-full place-content-center place-items-center">
		<Code
			bind:this={lint}
			lang="shellscript"
			theme="catppuccin-mocha"
			code={`task lint -- --fix`}
			options={{ duration: 1000, stagger: 0.3, containerStyle: false }}
		/>
	</Slide>

	<Slide class="h-full place-content-center place-items-center">
		<img height="900" width="auto" src="yaml-file-engineer.jpg" alt="logo" />
	</Slide>

	<Slide class="h-full place-content-center place-items-center">
		<img height="900" width="auto" src="terminal.png" alt="logo" />
	</Slide>

	<Slide class="h-full place-content-center place-items-center">
		<img height="900" width="auto" src="friendship_ended_with.jpg" alt="logo" />
	</Slide>

	<Slide class="h-full place-content-center place-items-center">
		<h1>⛲Features</h1>
	</Slide>

	<Slide class="h-full place-content-center place-items-center">
		<Code
			bind:this={homeTaskfile}
			lang="shellscript"
			theme="catppuccin-mocha"
			code={`nvim $HOME/Taskfile.yml`}
			options={{ duration: 1000, stagger: 0.3, containerStyle: false }}
		/>
		<Action do={() => homeTaskfile.update`task -g lint`} />
	</Slide>

	<Slide class="m-y-10 h-full place-content-center place-items-center">
		<h2>👷 Include other Taskfiles</h2>

		<Code
			bind:this={otherTaskfile}
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
			bind:this={taskDep}
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
      - esbuild --bundle --minify js/index.js > public/bundle.js
    sources:
      - src/js/**/*.js
    generates:
      - public/bundle.js

`}
			options={{ duration: 1000, stagger: 0.3, containerStyle: false }}
		/>
		<Action do={() => taskDep.selectLines`6`} />
		<Action do={() => taskDep.selectLines`10-16`} />
	</Slide>

	<Slide class="m-y-10 h-full place-content-center place-items-center">
		<h2>⚠️ Dangerous Tasks</h2>

		<Code
			bind:this={dangerousTask}
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
			do={() => dangerousTask.update`
❯ task dangerous

"This is a dangerous command... Do you want to continue?" [y/N]`}
		/>
	</Slide>

	<Slide class="m-y-10 h-full place-content-center place-items-center">
		<h2>👀 Watch</h2>

		<Code
			bind:this={watchTask}
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
	</Slide>

	<Slide class="m-y-10 h-full place-content-center place-items-center">
		<Code
			bind:this={watchTaskCLI}
			lang="shellscript"
			theme="catppuccin-mocha"
			code={`❯ task build`}
			options={{ duration: 1000, stagger: 0.3, containerStyle: false }}
		/>
		<Action do={() => watchTaskCLI.update`❯ task --watch build`} />
	</Slide>

	<Slide class="h-full place-content-center place-items-center">
		<div class="flex h-full items-center justify-center gap-[100px]">
			<h4 class="w-[800px] text-[64px] leading-[120%]">Demo</h4>
		</div>
	</Slide>

	<Slide class="h-full place-content-center place-items-center">
		<img height="900" width="auto" src="makefile.jpg" alt="logo" />
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
