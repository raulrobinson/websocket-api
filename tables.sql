-- public."Person" definition

-- Drop table

-- DROP TABLE public."Person";

CREATE TABLE public."Person" (
	"Id" uuid NOT NULL,
	"name" varchar(100) NOT NULL,
	email text NOT NULL,
	"CreatedAt" timestamptz NULL,
	"UpdatedAt" timestamptz NULL,
	CONSTRAINT "PK_Person" PRIMARY KEY ("Id")
);

-- public."Credential" definition

-- Drop table

-- DROP TABLE public."Credential";

CREATE TABLE public."Credential" (
	"Id" uuid NOT NULL,
	password_salt text NULL,
	password_hash text NOT NULL,
	person_id uuid NOT NULL,
	"CreatedAt" timestamptz NULL,
	"UpdatedAt" timestamptz NULL,
	CONSTRAINT "PK_Credential" PRIMARY KEY ("Id"),
	CONSTRAINT "FK_Credential_Person_person_id" FOREIGN KEY (person_id) REFERENCES public."Person"("Id") ON DELETE CASCADE
);
CREATE UNIQUE INDEX "IX_Credential_person_id" ON public."Credential" USING btree (person_id);

-- Indice único en la columna "person_id" de la tabla "Credential"
CREATE UNIQUE INDEX "IX_Credential_person_id" ON public."Credential" ("person_id");