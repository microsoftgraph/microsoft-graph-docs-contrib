---
title: Add app-only authentication to Go apps for Microsoft Graph
description: Learn how to add app-only authentication to Go apps to call Microsoft Graph
author: jasonjoh
ms.author: jasonjoh
ms.topic: how-to
ms.date: 06/03/2025
ms.localizationpriority: medium
---

# Add app-only authentication to Go apps for Microsoft Graph

<!-- cSpell:ignore graphhelper, goimports, graphapponlytutorial -->

In this article, you add app-only authentication to the application you created in [Build Go apps with Microsoft Graph and app-only authentication](go-app-only.md).

The [Azure Identity Client Module for Go](https://github.com/Azure/azure-sdk-for-go/tree/main/sdk/azidentity) provides many `TokenCredential` classes that implement OAuth2 token flows. The [Microsoft Graph SDK for Go](https://github.com/microsoftgraph/msgraph-sdk-go) uses those classes to authenticate calls to Microsoft Graph.

## Configure Graph client for app-only authentication

In this section, you use the `ClientSecretCredential` class to request an access token by using the [client credentials flow](/azure/active-directory/develop/v2-oauth2-client-creds-grant-flow).

1. Add the following function to **./graphhelper/graphhelper.go**.

    :::code language="go" source="includes/go/src/app-auth/graphapponlytutorial/graphhelper/graphhelper.go" id="AppAuthConfigSnippet":::

    > [!TIP]
    > If you're using `goimports`, some modules might be removed from your `import` statement in **graphhelper.go** on save. You might need to add the modules again to build.

1. Replace the empty `initializeGraph` function in **graphapponlytutorial.go** with the following.

    :::code language="go" source="includes/go/src/app-auth/graphapponlytutorial/graphapponlytutorial.go" id="InitializeGraphSnippet":::

This code initializes two properties, a `DeviceCodeCredential` object and a `GraphServiceClient` object. The `InitializeGraphForUserAuth` function creates a new instance of `DeviceCodeCredential`, then uses that instance to create a new instance of `GraphServiceClient`. Every time an API call is made to Microsoft Graph through the `userClient`, it uses the provided credential to get an access token.

## Test the ClientSecretCredential

Next, add code to get an access token from the `ClientSecretCredential`.

1. Add the following function to **./graphhelper/graphhelper.go**.

    :::code language="go" source="includes/go/src/app-auth/graphapponlytutorial/graphhelper/graphhelper.go" id="GetAppTokenSnippet":::

1. Replace the empty `displayAccessToken` function in **graphapponlytutorial.go** with the following.

    :::code language="go" source="includes/go/src/app-auth/graphapponlytutorial/graphapponlytutorial.go" id="DisplayAccessTokenSnippet":::

1. Build and run the app by running `go run graphapponlytutorial`. Enter `1` when prompted for an option. The application displays an access token.

    ```bash
    Go Graph App-Only Tutorial

    Please choose one of the following options:
    0. Exit
    1. Display access token
    2. List users
    3. Make a Graph call
    1
    App-only token: eyJ0eXAiOiJKV1QiLCJub25jZSI6IlVDTzRYOWtKYlNLVjVkRzJGenJqd2xvVUcwWS...
    ```

    [!INCLUDE [token-debug-tip](includes/shared/app-token-debug-tip.md)]

## Next step

> [!div class="nextstepaction"]
> [Get users](go-app-only-get-users.md)
