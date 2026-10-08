---
title: Add user authentication to JavaScript apps for Microsoft Graph
description: Learn how to add user authentication to JavaScript apps to call Microsoft Graph
author: jasonjoh
ms.author: jasonjoh
ms.topic: how-to
ms.date: 05/30/2025
ms.localizationpriority: medium
---

# Add user authentication to JavaScript apps for Microsoft Graph

<!-- cSpell:ignore graphtutorial -->

In this article, you add user authentication to the application you created in [Build JavaScript apps with Microsoft Graph](javascript.md). You then use the Microsoft Graph user API to get the authenticated user.

## Add user authentication

The [Azure Identity client library for JavaScript](https://www.npmjs.com/package/@azure/identity) provides many `TokenCredential` classes that implement OAuth2 token flows. The [Microsoft Graph JavaScript client library](https://www.npmjs.com/package/@microsoft/microsoft-graph-client) uses those classes to authenticate calls to Microsoft Graph.

### Configure Graph client for user authentication

Start by using the `DeviceCodeCredential` class to request an access token by using the [device code flow](/azure/active-directory/develop/v2-oauth2-device-code).

1. Open **graphHelper.js** and replace its contents with the following.

    :::code language="javascript" source="includes/javascript/src/user-auth/graphtutorial/graphHelper.js" id="UserAuthConfigSnippet":::

1. Replace the empty `initializeGraph` function in **index.js** with the following.

    :::code language="javascript" source="includes/javascript/src/user-auth/graphtutorial/index.js" id="InitializeGraphSnippet":::

This code declares two private properties, a `DeviceCodeCredential` object and a `Client` object. The `initializeGraphForUserAuth` function creates a new instance of `DeviceCodeCredential`, then uses that instance to create a new instance of `Client`. Every time an API call is made to Microsoft Graph through the `_userClient`, it uses the provided credential to get an access token.

### Test the DeviceCodeCredential

Next, add code to get an access token from the `DeviceCodeCredential`.

1. Add the following function to **graphHelper.js**.

    :::code language="javascript" source="includes/javascript/src/user-auth/graphtutorial/graphHelper.js" id="GetUserTokenSnippet":::

1. Replace the empty `displayAccessTokenAsync` function in **index.js** with the following.

    :::code language="javascript" source="includes/javascript/src/user-auth/graphtutorial/index.js" id="DisplayAccessTokenSnippet":::

1. Run the following command in your CLI in the root of your project.

    ```bash
    node index.js
    ```

1. Enter `1` when prompted for an option. The application displays a URL and device code.

    ```Shell
    JavaScript Graph Tutorial

    [1] Display access token
    [2] List my inbox
    [3] Send mail
    [4] Make a Graph call
    [0] Exit

    Select an option [1...4 / 0]: 1
    To sign in, use a web browser to open the page https://microsoft.com/devicelogin and
    enter the code RK987NX32 to authenticate.
    ```

1. Open a browser and browse to the URL displayed. Enter the provided code and sign in.

    [!INCLUDE [browser-auth-note](includes/shared/browser-auth-note.md)]

1. Once completed, return to the application to see the access token.

    [!INCLUDE [token-debug-tip](includes/shared/token-debug-tip.md)]

## Get user

Now that authentication is configured, you can make your first Microsoft Graph API call. Add code to get the authenticated user's name and email address.

1. Open **graphHelper.js** and add the following function.

    :::code language="javascript" source="includes/javascript/src/user-auth/graphtutorial/graphHelper.js" id="GetUserSnippet":::

1. Replace the empty `greetUserAsync` function in **index.js** with the following.

    :::code language="javascript" source="includes/javascript/src/user-auth/graphtutorial/index.js" id="GreetUserSnippet":::

If you run the app now, after you sign in the app welcomes you by name.

```bash
Hello, Megan Bowen!
Email: MeganB@contoso.com
```

### Code explained

Consider the code in the `getUserAsync` function. It's only a few lines, but there are some key details to notice.

#### Accessing 'me'

The function passes `/me` to the `_userClient.api` request builder, which builds a request to the [Get user](/graph/api/user-get) API. This API is accessible two ways:

```http
GET /me
GET /users/{user-id}
```

In this case, the code calls the `GET /me` API endpoint. This endpoint is a shortcut method to get the authenticated user without knowing their user ID.

> [!NOTE]
> Because the `GET /me` API endpoint gets the authenticated user, it's only available to apps that use user authentication. App-only authentication apps can't access this endpoint.

#### Requesting specific properties

The function uses the `select` method on the request to specify the set of properties it needs. This method adds the [$select query parameter](/graph/query-parameters#select-parameter) to the API call.

#### Strongly typed return type

The function returns a `User` object deserialized from the JSON response from the API. Because the code uses `select`, only the requested properties have values in the returned `User` object. All other properties have default values.

## Next step

> [!div class="nextstepaction"]
> [Read and send email](javascript-email.md)
