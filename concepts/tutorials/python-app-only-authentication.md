---
title: Add app-only authentication to Python apps for Microsoft Graph
description: Learn how to add app-only authentication to Python apps to call Microsoft Graph
author: jasonjoh
ms.author: jasonjoh
ms.topic: how-to
ms.date: 06/03/2025
ms.localizationpriority: medium
---

# Add app-only authentication to Python apps for Microsoft Graph

<!-- cSpell:ignore graphapponlytutorial -->

In this article, you add app-only authentication to the application you created in [Build Python apps with Microsoft Graph and app-only authentication](python-app-only.md).

The [Azure Identity client library for Python](https://github.com/Azure/azure-sdk-for-python/tree/main/sdk/identity/azure-identity) provides many `TokenCredential` classes that implement OAuth2 token flows. The [Microsoft Graph SDK for Python (preview)](https://github.com/microsoftgraph/msgraph-sdk-python) uses those classes to authenticate calls to Microsoft Graph.

## Configure Graph client for app-only authentication

In this section, you use the `ClientSecretCredential` class to request an access token by using the [client credentials flow](/azure/active-directory/develop/v2-oauth2-client-creds-grant-flow).

1. Open **graph.py** and replace its entire contents with the following code.

    :::code language="python" source="includes/python/src/app-auth/graphapponlytutorial/graph.py" id="AppAuthConfigSnippet":::

    This code declares two private properties, an `ClientSecretCredential` object and a `GraphServiceClient` object. The `__init__` function creates a new instance of `ClientSecretCredential`, then uses that instance to create a new instance of `GraphServiceClient`. Every time an API call is made to Microsoft Graph through the `app_client`, it uses the provided credential to get an access token.

1. Add the following function to **graph.py**.

    :::code language="python" source="includes/python/src/app-auth/graphapponlytutorial/graph.py" id="GetAppOnlyTokenSnippet":::

1. Replace the empty `display_access_token` function in **main.py** with the following.

    :::code language="python" source="includes/python/src/app-auth/graphapponlytutorial/main.py" id="DisplayAccessTokenSnippet":::

1. Build and run the app. Enter `1` when prompted for an option. The application displays an access token.

    ```bash
    Python Graph App-Only Tutorial

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
> [Get users](python-app-only-get-users.md)
