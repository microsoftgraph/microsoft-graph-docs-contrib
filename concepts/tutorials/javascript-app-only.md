---
title: Build JavaScript apps with Microsoft Graph and app-only authentication
description: In this tutorial, you build a JavaScript app that uses the Microsoft Graph API to access data using app-only authentication.
author: jasonjoh
ms.author: jasonjoh
ms.topic: how-to
ms.date: 06/03/2025
ms.localizationpriority: medium
---

# Build JavaScript apps with Microsoft Graph and app-only authentication

<!-- cSpell:ignore graphapponlytutorial -->

This tutorial teaches you how to build a JavaScript console app that uses the Microsoft Graph API to access data using app-only authentication. App-only authentication is a good choice for background services or applications that need to access data for all users in an organization.

> [!NOTE]
> To learn how to use Microsoft Graph to access data on behalf of a user, see this [user (delegated) authentication tutorial](javascript.md).

In this tutorial, you will:

- [List users](/graph/api/user-list)

> [!TIP]
> As an alternative to following this tutorial, you can download or clone the [GitHub repository](https://github.com/microsoftgraph/msgraph-training-javascript/tree/main/app-auth) and follow the instructions in the README to register an application and configure the project.

## Prerequisites

Before you start this tutorial, you should have [Node.js](https://nodejs.org) installed on your development machine.

[!INCLUDE [account-requirements-app-only](includes/shared/account-requirements-app-only.md)]

> [!NOTE]
> This tutorial was written with Node.js version 16.14.2. The steps in this guide might work with other versions, but that hasn't been tested.

[!INCLUDE [app-auth-app-reg-steps](includes/shared/app-auth-app-reg-steps.md)]

## Create a JavaScript console app

Begin by creating a new Node.js project. Open your command-line interface (CLI) in a directory where you want to create the project. Run the following command.

```bash
npm init
```

Answer the prompts by either supplying your own values or accepting the defaults.

## Install dependencies

Before moving on, add dependencies that you use later.

- [Azure Identity client library for JavaScript](https://www.npmjs.com/package/@azure/identity)  to authenticate the user and acquire access tokens.
- [Microsoft Graph JavaScript client library](https://www.npmjs.com/package/@microsoft/microsoft-graph-client) to make calls to the Microsoft Graph.
- [isomorphic-fetch](https://www.npmjs.com/package/isomorphic-fetch) to add `fetch` API to Node.js. This is a dependency for the Microsoft Graph JavaScript client library.
- [readline-sync](https://www.npmjs.com/package/readline-sync) for prompting the user for input.

To install the dependencies, run the following commands in your CLI.

```bash
npm install @azure/identity @microsoft/microsoft-graph-client isomorphic-fetch readline-sync
```

## Load application settings

Add the details of your app registration to the project.

1. Create a file in the root of your project named **appSettings.js** and add the following code.

    :::code language="javascript" source="includes/javascript/src/app-auth/graphapponlytutorial/appSettings.example.js" id="SettingsSnippet":::

1. Update the values in `settings` according to the following table.

    | Setting | Value |
    |---------|-------|
    | `clientId` | The client ID of your app registration |
    | `tenantId` | The tenant ID of your organization. |
    | `clientSecret` | The client secret generated in the previous step |

## Design the app

Create a console-based menu.

1. Create a file in the root of your project named **graphHelper.js** and add the following placeholder code. You add more code this file in later steps.

    ```javascript
    module.exports = {};
    ```

1. Create a file in the root of your project named **index.js** and add the following code.

    :::code language="javascript" source="includes/javascript/src/app-auth/graphapponlytutorial/index.js" id="ProgramSnippet":::

1. Add the following placeholder methods at the end of the file. You implement them in later steps.

    ```javascript
    function initializeGraph(settings) {
      // TODO
    }

    async function displayAccessTokenAsync() {
      // TODO
    }

    async function listUsersAsync() {
      // TODO
    }

    async function doGraphCallAsync() {
      // TODO
    }
    ```

This implements a basic menu and reads the user's choice from the command line.

## Next step

> [!div class="nextstepaction"]
> [Add app-only authentication](javascript-app-only-authentication.md)
