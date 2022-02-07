# OpenAPI definition endpoints to /v2

This repo contains an OpenAPI definition of all /v2 REST endpoints that can be used with a bearer token.

## How was it built?

The documentation page is built using the OpenAPI spec, and [Redoc's OpenAPI parser and builder](https://redoc.ly/docs/). 
To use the docs in their current state, I highly recommend you download Redoc's two CLI tools, `redoc-cli` and `openapi`

You can use anything to edit OpenAPI definitons.
VS code has a good plugin that lets you follow references.

## How can I update this?

Do all edits in the `./openAPI/bundled` directory.
All the schema are in their own mini YAML files.

The doc is glued together using OpenAPI references.
References let us reuse content, and keep files small.
Here's how the directory looks:
```.
├── openAPI  # The top-level is all autogenerated stuff
│   ├── api-doc.html
│   ├── split-spec.sh
│   └── unbundled # Here is where you'll edit files
│       ├── bundle.sh
│       ├── components ## reusable pieces
│       │   ├── parameters ## Reused query and filter params
│       │   ├── responses ## reused responses
│       │   └── schemas ## reused schema
│       ├── openapi.yaml # The top-level description
│       └── paths # The operations, like POST to /goals
```

The easiest way to figure it out is to start at the top-level description, and follow some references.
[Swagger's OpenAPI documentation](https://swagger.io/specification/) is excellent. You won't find anything here that's not described there.

## After you've made your edits, just push to the repo.

An action will build the HTML file at `openAPI/api-doc.html`

If the action is down, you can use a script to build the file. 

1. `cd openAPI/bundled/`
2. `bash split-spec.sh`

This bundles the spec into an HTML file (and a large YAML file).

This doc maps closely to the [the fairly large  Postman collection that I reorganized and tested](https://lively-firefly-8476.postman.co/workspace/Team-Workspace~2ad4c5b8-49bc-4310-80c7-b878[…]9933fde-8ab1-447c-bafd-605c05583668?ctx=documentation).

## Some schema are without descriptions or examples

In these cases, I wasn't exactly sure what the resource was.

To find these, try

```shell
grep -Lr "description:" openAPI/bundled/components/schemas
```

If you know what the schema does, add a description!