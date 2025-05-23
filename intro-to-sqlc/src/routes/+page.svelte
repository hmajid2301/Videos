<script lang="ts">
	import { Presentation, Slide, Code, Transition, Action } from '@animotion/core'

	let install: Code
	let sqlcYaml: Code
	let dockerCompose: Code
	let sqlcCLI: Code
	let sqlGenerated: Code
	let text: HTMLParagraphElement
	let sqlQuery: Code
	let sqlMigration: Code
	let goose: Code
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
			<img width="400" src="sqlc.png" alt="logo" />
		</Transition>

		<Transition class="mt-16">
			<div class="flex h-full items-center justify-center gap-[100px]">
				<div class="mt-10 flex items-center justify-center">
					<p class="w-2/3 rounded-lg bg-[#1e1e2e] p-5">Tool to generate code from SQL.</p>
				</div>
			</div>
		</Transition>
	</Slide>

	<Slide class="h-full place-content-center place-items-center">
		<h1>⛲ Features</h1>

		<Transition class="mt-16">
			<div class="flex h-full items-center justify-center gap-[100px]">
				<div class="mt-10 flex items-center justify-center rounded-lg bg-[#1e1e2e] p-5">
					<ul class="list-none space-y-4">
						<li class="mb-6">Fewer Dependencies</li>
						<li class="mb-6">Type Safe</li>
						<li class="mb-6">Schema Synchronization</li>
					</ul>
				</div>
			</div>
		</Transition>
	</Slide>

	<Slide class="h-full place-content-center place-items-center">
		<h1>🪜 Steps</h1>

		<Transition class="mt-16">
			<div class="flex h-full items-center justify-center gap-[100px]">
				<div class="mt-10 flex items-center justify-center rounded-lg bg-[#1e1e2e] p-5">
					<ul class="list-none space-y-4">
						<li class="mb-4">Write SQL queries</li>
						<li class="mb-4">Run `sqlc` CLI tool</li>
						<li class="mb-4">Write your application code</li>
					</ul>
				</div>
			</div>
		</Transition>
	</Slide>

	<Slide class="h-full place-content-center place-items-center">
		<Transition>
			<img height="900" width="auto" src="install.svg" alt="logo" />
		</Transition>
	</Slide>

	<Slide class="h-full place-content-center place-items-center">
		<Transition>
			<Code
				bind:this={install}
				lang="shellscript"
				theme="catppuccin-mocha"
				code={`go install github.com/sqlc-dev/sqlc/cmd/sqlc@latest`}
				options={{ duration: 1000, stagger: 0.3, containerStyle: false }}
			/>
			<Action do={() => install.update`nix-shell -p sqlc`} />
			<Action do={() => install.update`nvim sqlc.yaml`} />
		</Transition>
	</Slide>

	<Slide class="h-full place-content-center place-items-center">
		<p>sqlc.yaml</p>
		<Code
			bind:this={sqlcYaml}
			lang="yaml"
			theme="catppuccin-mocha"
			code={`
	version: "2"
	sql:
	  - engine: "postgresql"
	    queries: "internal/store/db/sqlc/query.sql"
	    schema: "internal/store/db/sqlc/migrations"
	    gen:
	      go:
	        package: "db"
	        out: "internal/store/db"
	        sql_package: "pgx/v5"
	        emit_interface: true`}
			options={{ duration: 1000, stagger: 0.3, containerStyle: false }}
		/>
		<Action do={() => sqlcYaml.selectLines`3-5`} />
		<Action do={() => sqlcYaml.selectLines`7-11`} />
	</Slide>

	<Slide class="h-full place-content-center place-items-center">
		<p>docker-compose.yml</p>
		<Code
			bind:this={dockerCompose}
			lang="yaml"
			theme="catppuccin-mocha"
			code={`
	services:
	  postgres:
	    image: postgres:17.4
	    ports:
	      - "5432:5432"
	    environment:
	      POSTGRES_USER: postgres
	      POSTGRES_PASSWORD: postgres
	    volumes:
	      - postgres-data:/var/lib/postgresql/data`}
			options={{ duration: 1000, stagger: 0.3, containerStyle: false }}
		/>
	</Slide>

	<Slide class="h-full place-content-center place-items-center">
		<p>query.sql</p>
		<Code
			bind:this={sqlQuery}
			lang="sql"
			theme="catppuccin-mocha"
			code={`
-- name: AddUser :one
insert into users (email) values ($1) returning *;`}
			options={{ duration: 1000, stagger: 0.3, containerStyle: false }}
		/>
	</Slide>

	<Slide class="h-full place-content-center place-items-center">
		<Transition>
			<Code
				bind:this={sqlcCLI}
				lang="shellscript"
				theme="catppuccin-mocha"
				code={`sqlc generate`}
				options={{ duration: 1000, stagger: 0.3, containerStyle: false }}
			/>
		</Transition>
	</Slide>

	<Slide class="h-full place-content-center place-items-center">
		<!-- <p bind:this={text}>query.sql.go</p> -->
		<Code
			bind:this={sqlGenerated}
			lang="go"
			theme="catppuccin-mocha"
			code={`
const addUser = \`-- name: AddUser :one
insert into users (email) values ($1) returning id, created_at, updated_at, email
\`

func (q *Queries) AddUser(ctx context.Context, email string) (User, error) {
	row := q.db.QueryRow(ctx, addUser, email)
	var i User
	err := row.Scan(
		&i.ID,
		&i.CreatedAt,
		&i.UpdatedAt,
		&i.Email,
	)
	return i, err
}`}
			options={{ duration: 1000, stagger: 0.3, containerStyle: false }}
		/>

		<!-- <Transition do={() => text.innerText`model.go`} /> -->
		<Action
			do={() => sqlGenerated.update`
type User struct {
	ID        uuid.UUID
	CreatedAt pgtype.Timestamp
	UpdatedAt pgtype.Timestamp
	Email     string
}`}
		/>

		<Action
			do={() => sqlGenerated.update`
// Code generated by sqlc. DO NOT EDIT.
// versions:
//   sqlc v1.29.0

package db

import (
	"context"

	"github.com/google/uuid"
)

type Querier interface {
	AddUser(ctx context.Context, email string) (User, error)
}

var _ Querier = (*Queries)(nil)`}
		/>
	</Slide>

	<Slide class="h-full place-content-center place-items-center">
		<p>query.sql</p>
		<Code
			bind:this={sqlQuery}
			lang="sql"
			theme="catppuccin-mocha"
			code={`
select
    *
from table
where f.field = any(sqlc.arg(fields))`}
			options={{ duration: 1000, stagger: 0.3, containerStyle: false }}
		/>
	</Slide>

	<Slide class="h-full place-content-center place-items-center">
		<Transition>
			<Code
				bind:this={goose}
				lang="shellscript"
				theme="catppuccin-mocha"
				code={`go install github.com/pressly/goose/v3/cmd/goose@latest`}
				options={{ duration: 1000, stagger: 0.3, containerStyle: false }}
			/>
			<Action do={() => goose.update`goose create add_users sql`} />
		</Transition>
	</Slide>

	<Slide class="h-full place-content-center place-items-center">
		<p>migrations/20250308152403_add_users.sql</p>
		<Code
			bind:this={sqlMigration}
			lang="sql"
			theme="catppuccin-mocha"
			code={`
-- +goose Up
-- +goose StatementBegin
create table if not exists users (
    id uuid primary key,
    created_at timestamp default current_timestamp,
    updated_at timestamp default current_timestamp,
    email text not null,
);
-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
drop table if exists users;
-- +goose StatementEnd`}
			options={{ duration: 1000, stagger: 0.3, containerStyle: false }}
		/>
	</Slide>

	<Slide class="h-full place-content-center place-items-center">
		<Transition>
			<div class="flex h-full items-center justify-center gap-[100px]">
				<h4 class="w-[800px] text-[64px] leading-[120%]">Demo!</h4>
			</div>
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
