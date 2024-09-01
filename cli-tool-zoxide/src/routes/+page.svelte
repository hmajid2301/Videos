<script lang="ts">
	import { Presentation, Slide, Code, Transition, Action } from '@animotion/core'
	import { tween } from '@animotion/motion'

	let text: HTMLParagraphElement
	let code: Code
	let circle = tween({ x: 0, y: 80, r: 80, fill: '#00ffff' })
	let items = $state([1, 2, 3, 4])
	let layout = $state('flex gap-4')
</script>

<Presentation options={{ history: true, transition: 'slide', controls: true, progress: true }}>
	<Slide class="h-full place-content-center place-items-center">
		<Transition>
			<img width="400" src="arrows.svg" alt="logo" />
		</Transition>

		<Transition class="mt-16">
			<div class="flex h-full items-center justify-center gap-[100px]">
                <div class="mt-10 items-center justify-center flex">
                    <p class="w-2/3 p-5 rounded-lg bg-[#1e1e2e]">
                        Zoxide is a tool which we can use to replace `cd`.
                    </p>
                </div>
            </div>
		</Transition>
	</Slide>

	<Slide class="h-full place-content-center place-items-center">
		<Transition>
			<img src="spongebob.jpg" alt="logo" />
		</Transition>
	</Slide>

	<Slide class="h-full place-content-center place-items-center">
		<Transition>
			CD Demo
		</Transition>
	</Slide>

	<Slide class="h-full place-content-center place-items-center">
		<Transition>
			<img src="lawyer.gif" alt="logo" />
		</Transition>
	</Slide>

	<Slide class="h-full place-content-center place-items-center">
		<Transition>
			Z Demo
		</Transition>
	</Slide>

	<Slide class="h-full place-content-center place-items-center">
		<Transition>
			<img src="nod.gif" alt="logo" />
		</Transition>
	</Slide>

	<Slide class="h-full place-content-center place-items-center">
		<Transition>
			Z Advanced
		</Transition>
	</Slide>

	<Slide class="h-full place-content-center place-items-center">
		<Transition>
			Z Advanced
		</Transition>
	</Slide>

	<Slide class="h-full place-content-center place-items-center">
		<Transition>
			<img src="nix.jpg" alt="logo" />
		</Transition>
	</Slide>

	<Slide class="h-full place-content-center place-items-center">
		<Transition>
			Nix (and fish alias)
		</Transition>
	</Slide>

    <Slide class="h-full place-content-center place-items-center">
        <Transition>
            <div
                class="w-[800px] h-[800px] rounded-full overflow-hidden flex items-center justify-center border-4 border-white"
            >
                <img src="logo.png" alt="logo" class="object-contain h-full w-full" />
            </div>
        </Transition>

        <Transition>
            <div
                class="flex h-full items-center justify-center gap-[100px]"
            >
                <h4 class="w-[800px] text-[64px] leading-[120%]">I use Nix btw!</h4>
            </div>
        </Transition>
    </Slide>

</Presentation>
