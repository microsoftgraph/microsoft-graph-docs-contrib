---
title: Add app-only authentication to Java apps for Microsoft Graph
description: Learn how to add app-only authentication to Java apps to call Microsoft Graph
author: jasonjoh
ms.author: jasonjoh
ms.topic: how-to
ms.date: 06/03/2025
ms.localizationpriority: medium
---

# Add app-only authentication to Java apps for Microsoft Graph

<!-- cSpell:ignore graphapponlytutorial -->

In this article, you add app-only authentication to the application you created in [Build Java apps with Microsoft Graph and app-only authentication](java-app-only.md).

The [Azure Identity client library for Java](https://github.com/Azure/azure-sdk-for-java/tree/master/sdk/identity/azure-identity) provides many `TokenCredential` classes that implement OAuth2 token flows. The [Microsoft Graph SDK for Java](https://github.com/microsoftgraph/msgraph-sdk-java) uses those classes to authenticate calls to Microsoft Graph.

## Configure Graph client for app-only authentication

In this section, you use the `ClientSecretCredential` class to request an access token by using the [client credentials flow](/azure/active-directory/develop/v2-oauth2-client-creds-grant-flow).

1. Create a new file in the **./app/src/main/java/graphapponlytutorial** directory named **Graph.java** and add the following code to that file.

    :::code language="java" source="includes/java/src/app-auth/graphapponlytutorial/app/src/main/java/graphapponlytutorial/Graph.java" id="ImportSnippet":::

1. Add an empty **Graph** class definition.

    ```java
    public class Graph {
    }
    ```

1. Add the following code to the `Graph` class.

    :::code language="java" source="includes/java/src/app-auth/graphapponlytutorial/app/src/main/java/graphapponlytutorial/Graph.java" id="AppOnyAuthConfigSnippet":::

1. Replace the empty `initializeGraph` function in **App.java** with the following.

    :::code language="java" source="includes/java/src/app-auth/graphapponlytutorial/app/src/main/java/graphapponlytutorial/App.java" id="InitializeGraphSnippet":::

This code declares two private properties, a `ClientSecretCredential` object and a `GraphServiceClient` object. The `initializeGraphForAppOnlyAuth` function creates a new instance of `ClientSecretCredential`, then uses that instance to create a new instance of `GraphServiceClient`. Every time an API call is made to Microsoft Graph through the `_appClient`, it uses the provided credential to get an access token.

## Test the ClientSecretCredential

Next, add code to get an access token from the `ClientSecretCredential`.

1. Add the following function to the `Graph` class.

    :::code language="java" source="includes/java/src/app-auth/graphapponlytutorial/app/src/main/java/graphapponlytutorial/Graph.java" id="GetAppOnlyTokenSnippet":::

1. Replace the empty `displayAccessToken` function in **App.java** with the following.

    :::code language="java" source="includes/java/src/app-auth/graphapponlytutorial/app/src/main/java/graphapponlytutorial/App.java" id="DisplayAccessTokenSnippet":::

1. Build and run the app. Enter `1` when prompted for an option. The application displays an access token.

    ```bash
    Java App-Only Graph Tutorial

    Please choose one of the following options:
    0. Exit
    1. Display access token
    2. List users
    3. Make a Graph call
    1
    App-only token: eyJ0eXAiOiJKV1QiLCJub25jZSI6IlVDTzRYOWtKYlNLVjVkRzJGenJqd2xvVUcwWS...
    ```

    [!INCLUDE [token-debug-tip](includes/shared/token-debug-tip.md)]

## Next step

> [!div class="nextstepaction"]
> [Get users](java-app-only-get-users.md)
