---
title: Build TypeScript apps with Microsoft Graph and app-only authentication
description: In this tutorial, you build a TypeScript app that uses the Microsoft Graph API to access data using app-only authentication.
author: jasonjoh
ms.author: jasonjoh
ms.topic: how-to
ms.date: 06/03/2025
ms.localizationpriority: medium
---

# Build TypeScript apps with Microsoft Graph and app-only authentication

<!-- cSpell:ignore graphapponlytutorial -->

This tutorial teaches you how to build a TypeScript console app that uses the Microsoft Graph API to access data using app-only authentication. App-only authentication is a good choice for background services or applications that need to access data for all users in an organization.

> [!NOTE]
> To learn how to use Microsoft Graph to access data on behalf of a user, see this [user (delegated) authentication tutorial](typescript.md).

In this tutorial, you will:

- [List users](/graph/api/user-list)

> [!TIP]
> As an alternative to following this tutorial, you can download or clone the [GitHub repository](https://github.com/microsoftgraph/msgraph-training-typescript/tree/main/app-auth) and follow the instructions in the README to register an application and configure the project.

## Prerequisites

Before you start this tutorial, you should have [Node.js](https://nodejs.org) installed on your development machine.

[!INCLUDE [account-requirements-app-only](includes/shared/account-requirements-app-only.md)]

> [!NOTE]
> This tutorial was written with Node.js version 16.14.2. The steps in this guide might work with other versions, but that hasn't been tested.

[!INCLUDE [app-auth-app-reg-steps](includes/shared/app-auth-app-reg-steps.md)]

## Create a TypeScript console app

Begin by creating a new Node.js project and configuring TypeScript.

1. Open your command-line interface (CLI) in a directory where you want to create the project. Run the following command.

    ```bash
    npm init
    ```

    Answer the prompts by either supplying your own values or accepting the defaults.

1. To install TypeScript, run the following command.

    ```bash
    npm install -D typescript ts-node
    ```

1. To intialize TypeScript, run the following command.

    ```bash
    npx tsc --init
    ```

## Install dependencies

Before moving on, add dependencies that you use later.

- [Azure Identity client library for JavaScript](https://www.npmjs.com/package/@azure/identity)  to authenticate the user and acquire access tokens.
- [Microsoft Graph JavaScript client library](https://www.npmjs.com/package/@microsoft/microsoft-graph-client) to make calls to the Microsoft Graph.
- [isomorphic-fetch](https://www.npmjs.com/package/isomorphic-fetch) to add `fetch` API to Node.js. This is a dependency for the Microsoft Graph JavaScript client library.
- [readline-sync](https://www.npmjs.com/package/readline-sync) for prompting the user for input.

To install the dependencies, run the following commands in your CLI.

```bash
npm install @azure/identity @microsoft/microsoft-graph-client isomorphic-fetch readline-sync
npm install -D @microsoft/microsoft-graph-types @types/node @types/readline-sync @types/isomorphic-fetch
```

## Load application settings

Add the details of your app registration to the project.

1. Create a file in the root of your project named **appSettings.ts** and add the following code.

    :::code language="typescript" source="includes/typescript/src/app-auth/graphapponlytutorial/appSettings.example.ts" id="SettingsSnippet":::

1. Update the values in `settings` according to the following table.

    | Setting | Value |
    |---------|-------|
    | `clientId` | The client ID of your app registration |
    | `tenantId` | The tenant ID of your organization. |
    | `clientSecret` | The client secret generated in the previous step |

## Design the app

Create a console-based menu.

1. Create a file in the root of your project named **graphHelper.ts** and add the following placeholder code. You add more code this file in later steps.

    ```typescript
    export {};
    ```

1. Create a file in the root of your project named **index.ts** and add the following code.

    :::code language="typescript" source="includes/typescript/src/app-auth/graphapponlytutorial/index.ts" id="ProgramSnippet":::

1. Add the following placeholder methods at the end of the file. You implement them in later steps.

    ```typescript
    function initializeGraph(settings: AppSettings) {
      // TODO
    }

    async function displayAccessTokenAsync() {
      // TODO
    }

    async function listUsersAsync() {
      // TODO
    }

    async function makeGraphCallAsync() {
      // TODO
    }
    ```

This implements a basic menu and reads the user's choice from the command line.

## Next step

> [!div class="nextstepaction"]
> [Add app-only authentication](typescript-app-only-authentication.md)
