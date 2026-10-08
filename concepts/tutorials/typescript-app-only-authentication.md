---
title: Add app-only authentication to TypeScript apps for Microsoft Graph
description: Learn how to add app-only authentication to TypeScript apps to call Microsoft Graph
author: jasonjoh
ms.author: jasonjoh
ms.topic: how-to
ms.date: 06/03/2025
ms.localizationpriority: medium
---

# Add app-only authentication to TypeScript apps for Microsoft Graph

<!-- cSpell:ignore graphapponlytutorial -->

In this article, you add app-only authentication to the application you created in [Build TypeScript apps with Microsoft Graph and app-only authentication](typescript-app-only.md).

The [Azure Identity client library for JavaScript](https://www.npmjs.com/package/@azure/identity) provides many `TokenCredential` classes that implement OAuth2 token flows. The [Microsoft Graph JavaScript client library](https://www.npmjs.com/package/@microsoft/microsoft-graph-client) uses those classes to authenticate calls to Microsoft Graph.

## Configure Graph client for app-only authentication

In this section, you use the `ClientSecretCredential` class to request an access token by using the [client credentials flow](/azure/active-directory/develop/v2-oauth2-client-creds-grant-flow).

1. Open **graphHelper.ts** and add the following code.

    :::code language="typescript" source="includes/typescript/src/app-auth/graphapponlytutorial/graphHelper.ts" id="AppOnlyAuthConfigSnippet":::

1. Replace the empty `initializeGraph` function in **index.ts** with the following.

    :::code language="typescript" source="includes/typescript/src/app-auth/graphapponlytutorial/index.ts" id="InitializeGraphSnippet":::

This code declares two private properties, a `ClientSecretCredential` object and a `Client` object. The `InitializeGraphForAppOnlyAuth` function creates a new instance of `ClientSecretCredential`, then uses that instance to create a new instance of `Client`. Every time an API call is made to Microsoft Graph through the `_appClient`, it uses the provided credential to get an access token.

## Test the ClientSecretCredential

Next, add code to get an access token from the `ClientSecretCredential`.

1. Add the following function to **graphHelper.ts**.

    :::code language="typescript" source="includes/typescript/src/app-auth/graphapponlytutorial/graphHelper.ts" id="GetAppOnlyTokenSnippet":::

1. Replace the empty `displayAccessTokenAsync` function in **index.ts** with the following.

    :::code language="typescript" source="includes/typescript/src/app-auth/graphapponlytutorial/index.ts" id="DisplayAccessTokenSnippet":::

1. Run the following command in your CLI in the root of your project.

    ```bash
    npx ts-node index.ts
    ```

1. Enter `1` when prompted for an option. The application displays an access token.

    ```Shell
    TypeScript Graph App-Only Tutorial

    [1] Display access token
    [2] List users
    [3] Make a Graph call
    [0] Exit

    Select an option [1...3 / 0]: 1
    App-only token: eyJ0eXAiOiJKV1QiLCJub25jZSI6IlVDTzRYOWtKYlNLVjVkRzJGenJqd2xvVUcwWS...
    ```

    [!INCLUDE [token-debug-tip](includes/shared/app-token-debug-tip.md)]

## Next step

> [!div class="nextstepaction"]
> [Get users](typescript-app-only-get-users.md)
