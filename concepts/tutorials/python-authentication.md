---
title: Add user authentication to Python apps for Microsoft Graph
description: Learn how to add user authentication to Python apps to call Microsoft Graph
author: jasonjoh
ms.author: jasonjoh
ms.topic: how-to
ms.date: 05/30/2025
ms.localizationpriority: medium
---

# Add user authentication to Python apps for Microsoft Graph

<!-- cSpell:ignore graphtutorial -->

In this article, you add user authentication to the application you created in [Build Python apps with Microsoft Graph](python.md). You then use the Microsoft Graph user API to get the authenticated user.

## Add user authentication

The [Azure Identity client library for Python](https://github.com/Azure/azure-sdk-for-python/tree/main/sdk/identity/azure-identity) provides many `TokenCredential` classes that implement OAuth2 token flows. The [Microsoft Graph SDK for Python (preview)](https://github.com/microsoftgraph/msgraph-sdk-python) uses those classes to authenticate calls to Microsoft Graph.

### Configure Graph client for user authentication

Start by using the `DeviceCodeCredential` class to request an access token by using the [device code flow](/azure/active-directory/develop/v2-oauth2-device-code).

1. Open **graph.py** and replace its entire contents with the following code.

    :::code language="python" source="includes/python/src/user-auth/graphtutorial/graph.py" id="UserAuthConfigSnippet":::

    This code declares two private properties, a `DeviceCodeCredential` object and a `GraphServiceClient` object. The `__init__` function creates a new instance of `DeviceCodeCredential`, then uses that instance to create a new instance of `GraphServiceClient`. Every time an API call is made to Microsoft Graph through the `user_client`, it uses the provided credential to get an access token.

1. Add the following function to **graph.py**.

    :::code language="python" source="includes/python/src/user-auth/graphtutorial/graph.py" id="GetUserTokenSnippet":::

1. Replace the empty `display_access_token` function in **main.py** with the following.

    :::code language="python" source="includes/python/src/user-auth/graphtutorial/main.py" id="DisplayAccessTokenSnippet":::

1. Build and run the app. Enter `1` when prompted for an option. The application displays a URL and device code.

    ```bash
    Python Graph Tutorial

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

1. Add the following function to **graph.py**.

    :::code language="python" source="includes/python/src/user-auth/graphtutorial/graph.py" id="GetUserSnippet":::

1. Replace the empty `greet_user` function in **main.py** with the following.

    :::code language="python" source="includes/python/src/user-auth/graphtutorial/main.py" id="GreetUserSnippet":::

If you run the app now, after you sign in the app welcomes you by name.

```bash
Hello, Megan Bowen!
Email: MeganB@contoso.com
```

### Code explained

Consider the code in the `get_user` function. It's only a few lines, but there are some key details to notice.

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

The function uses the [$select query parameter](/graph/query-parameters#select-parameter) to specify the set of properties it needs. Microsoft Graph returns only the requested properties in the response. In `get_user`, adding `$select` is accomplished with the `select` parameter in the `MeRequestBuilderGetQueryParameters` object.

## Next step

> [!div class="nextstepaction"]
> [Read and send email](python-email.md)
