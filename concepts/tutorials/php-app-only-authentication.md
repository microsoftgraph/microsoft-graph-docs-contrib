---
title: Add app-only authentication to PHP apps for Microsoft Graph
description: Learn how to add app-only authentication to PHP apps to call Microsoft Graph
author: jasonjoh
ms.author: jasonjoh
ms.topic: how-to
ms.date: 06/03/2025
ms.localizationpriority: medium
---

# Add app-only authentication to PHP apps for Microsoft Graph

<!-- cSpell:ignore graphapponlytutorial -->

In this article, you add app-only authentication to the application you created in [Build PHP apps with Microsoft Graph and app-only authentication](php-app-only.md).

## Configure Graph client for app-only authentication

In this section, you use the `PhpLeagueAuthenticationProvider` class to request an access token by using the [client credentials flow](/azure/active-directory/develop/v2-oauth2-client-creds-grant-flow).

1. Create a new file in the root directory of your project named **GraphHelper.php**. Add the following code.

    ```php
    <?php
    class GraphHelper {
    }
    ?>
    ```

1. Add the following `using` statements inside the PHP tags.

    :::code language="php" source="includes/php/src/app-auth/graphapponlytutorial/GraphHelper.php" id="UseSnippet":::

1. Add the following code to the `GraphHelper` class.

    :::code language="php" source="includes/php/src/app-auth/graphapponlytutorial/GraphHelper.php" id="AppOnlyAuthConfigSnippet":::

1. Replace the empty `initializeGraph` function in **main.php** with the following.

    :::code language="php" source="includes/php/src/app-auth/graphapponlytutorial/main.php" id="InitializeGraphSnippet":::

This code loads information from the .env file, and initializes two properties, a `ClientCredentialContext` object and a `GraphServiceClient` object. The `ClientCredentialContext` object is used to authenticate requests, and the `GraphServiceClient` object is used to make calls to Microsoft Graph.

## Test the client credentials flow

Next, add code to get an access token from the `GraphHelper`.

1. Add the following function to the `GraphHelper` class.

    :::code language="php" source="includes/php/src/app-auth/graphapponlytutorial/GraphHelper.php" id="GetAppOnlyTokenSnippet":::

1. Replace the empty `displayAccessToken` function in **main.php** with the following.

    :::code language="php" source="includes/php/src/app-auth/graphapponlytutorial/main.php" id="DisplayAccessTokenSnippet":::

1. Build and run the app. Enter `1` when prompted for an option. The application displays the access token it fetched using the authentication information configured previously in the environment variables.

    ```bash
    $ php main.php

    PHP Graph Tutorial

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
> [Get users](php-app-only-get-users.md)
