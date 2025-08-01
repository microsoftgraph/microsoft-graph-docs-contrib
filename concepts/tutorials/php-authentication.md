---
title: Add user authentication to PHP apps for Microsoft Graph
description: Learn how to add user authentication to PHP apps to call Microsoft Graph
author: jasonjoh
ms.author: jasonjoh
ms.topic: how-to
ms.date: 05/30/2025
ms.localizationpriority: medium
---

# Add user authentication to PHP apps for Microsoft Graph

<!-- cSpell:ignore graphtutorial -->

In this article, you add user authentication to the application you created in [Build PHP apps with Microsoft Graph](php.md). You then use the Microsoft Graph user API to get the authenticated user.

## Add user authentication

The Microsoft Graph SDK includes authentication providers based on the [PHP League OAuth2 client](https://github.com/thephpleague/oauth2-client). However for this tutorial, you use the [device code flow](/azure/active-directory/develop/v2-oauth2-device-code) to obtain access tokens. The included authentication providers don't implement this flow, so you implement a custom access token provider.

### Create access token provider

Create a new file in the root directory of your project named **DeviceCodeTokenProvider.php**. Add the following code.

:::code language="php" source="includes/php/src/user-auth/graphtutorial/DeviceCodeTokenProvider.php":::

### Configure Graph client for user authentication

Now use the `DeviceCodeTokenProvider` class to request an access token by using the [device code flow](/azure/active-directory/develop/v2-oauth2-device-code).

1. Create a new file in the root directory of your project named **GraphHelper.php**. Add the following code.

    ```php
    <?php
    class GraphHelper {
    }
    ?>
    ```

1. Add the following `using` statements inside the PHP tags.

    :::code language="php" source="includes/php/src/user-auth/graphtutorial/GraphHelper.php" id="UseSnippet":::

1. Add the following code to the `GraphHelper` class.

    :::code language="php" source="includes/php/src/user-auth/graphtutorial/GraphHelper.php" id="UserAuthConfigSnippet":::

1. Replace the empty `initializeGraph` function in **main.php** with the following.

    :::code language="php" source="includes/php/src/user-auth/graphtutorial/main.php" id="InitializeGraphSnippet":::

This code loads information from the .env file, and initializes two properties, a `DeviceCodeTokenProvider` object and a `GraphServiceClient` object. The `DeviceCodeTokenProvider` object is used to request an access token, and the `GraphServiceClient` object is used to make calls to Microsoft Graph.

### Test the device code flow

Next, add code to get an access token from the `GraphHelper`.

1. Add the following function to the `GraphHelper` class.

    :::code language="php" source="includes/php/src/user-auth/graphtutorial/GraphHelper.php" id="GetUserTokenSnippet":::

1. Replace the empty `displayAccessToken` function in **main.php** with the following.

    :::code language="php" source="includes/php/src/user-auth/graphtutorial/main.php" id="DisplayAccessTokenSnippet":::

1. Build and run the app. Enter `1` when prompted for an option. The application displays a URL and device code.

    ```bash
    $ php main.php

    PHP Graph Tutorial

    Please choose one of the following options:
    0. Exit
    1. Display access token
    2. List my inbox
    3. Send mail
    4. Make a Graph call
    1
    To sign in, use a web browser to open the page https://microsoft.com/devicelogin and
    enter the code RB2RUD56D to authenticate.
    ```

1. Open a browser and browse to the URL displayed. Enter the provided code and sign in.

    [!INCLUDE [browser-auth-note](includes/shared/browser-auth-note.md)]

1. Once completed, return to the application to see the access token.

    [!INCLUDE [token-debug-tip](includes/shared/token-debug-tip.md)]

## Get user

Now that authentication is configured, you can make your first Microsoft Graph API call. Add code to get the authenticated user's name and email address.

1. Add the following code to the `GraphHelper` class.

    :::code language="php" source="includes/php/src/user-auth/graphtutorial/GraphHelper.php" id="GetUserSnippet":::

1. Replace the empty `greetUser` function in **main.php** with the following.

    :::code language="php" source="includes/php/src/user-auth/graphtutorial/main.php" id="GreetUserSnippet":::

If you run the app now, after you sign in the app welcomes you by name.

```bash
Hello, Megan Bowen!
Email: MeganB@contoso.com
```

### Code explained

Consider the code in the `getUser` function. It's only a few lines, but there are some key details to notice.

#### Accessing 'me'

The function builds a request to the [Get user](/graph/api/user-get) API. This API is accessible two ways:

```http
GET /me
GET /users/{user-id}
```

In this case, the code calls the `GET /me` API endpoint. This endpoint is a shortcut method to get the authenticated user without knowing their user ID.

> [!NOTE]
> Because the `GET /me` API endpoint gets the authenticated user, it's only available to apps that use user authentication. App-only authentication apps can't access this endpoint.

#### Requesting specific properties

The function uses the [$select query parameter](/graph/query-parameters#select-parameter) to specify the set of properties it needs.

#### Strongly typed return type

The function returns a `User` object deserialized from the JSON response from the API. Because the code uses `$select`, only the requested properties have values in the returned `User` object. All other properties have default values.

## Next step

> [!div class="nextstepaction"]
> [Read and send email](php-email.md)
