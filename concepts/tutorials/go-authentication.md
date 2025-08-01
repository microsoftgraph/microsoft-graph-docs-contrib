---
title: Add user authentication to Go apps for Microsoft Graph
description: Learn how to add user authentication to Go apps to call Microsoft Graph
author: jasonjoh
ms.author: jasonjoh
ms.topic: how-to
ms.date: 05/30/2025
ms.localizationpriority: medium
---

# Add user authentication to Go apps for Microsoft Graph

<!-- cSpell:ignore graphhelper, goimports, graphtutorial, Userable -->

In this article, you add user authentication to the application you created in [Build Go apps with Microsoft Graph](go.md). You then use the Microsoft Graph user API to get the authenticated user.

## Add user authentication

The [Azure Identity Client Module for Go](https://github.com/Azure/azure-sdk-for-go/tree/main/sdk/azidentity) provides many `TokenCredential` classes that implement OAuth2 token flows. The [Microsoft Graph SDK for Go](https://github.com/microsoftgraph/msgraph-sdk-go) uses those classes to authenticate calls to Microsoft Graph.

### Configure Graph client for user authentication

Start by using the `DeviceCodeCredential` class to request an access token by using the [device code flow](/azure/active-directory/develop/v2-oauth2-device-code).

1. Add the following function to **./graphhelper/graphhelper.go**.

    :::code language="go" source="includes/go/src/user-auth/graphtutorial/graphhelper/graphhelper.go" id="UserAuthConfigSnippet":::

    > [!TIP]
    > If you're using `goimports`, some modules might be removed from your `import` statement in **graphhelper.go** on save. You might need to add the modules again to build.

1. Replace the empty `initializeGraph` function in **graphtutorial.go** with the following.

    :::code language="go" source="includes/go/src/user-auth/graphtutorial/graphtutorial.go" id="InitializeGraphSnippet":::

This code initializes two properties, a `DeviceCodeCredential` object and a `GraphServiceClient` object. The `InitializeGraphForUserAuth` function creates a new instance of `DeviceCodeCredential`, then uses that instance to create a new instance of `GraphServiceClient`. Every time an API call is made to Microsoft Graph through the `userClient`, it uses the provided credential to get an access token.

### Test the DeviceCodeCredential

Next, add code to get an access token from the `DeviceCodeCredential`.

1. Add the following function to **./graphhelper/graphhelper.go**.

    :::code language="go" source="includes/go/src/user-auth/graphtutorial/graphhelper/graphhelper.go" id="GetUserTokenSnippet":::

1. Replace the empty `displayAccessToken` function in **graphtutorial.go** with the following.

    :::code language="go" source="includes/go/src/user-auth/graphtutorial/graphtutorial.go" id="DisplayAccessTokenSnippet":::

1. Build and run the app by running `go run graphtutorial`. Enter `1` when prompted for an option. The application displays a URL and device code.

    ```bash
    Go Graph Tutorial

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

1. Add the following function to **./graphhelper/graphhelper.go**.

    :::code language="go" source="includes/go/src/user-auth/graphtutorial/graphhelper/graphhelper.go" id="GetUserSnippet":::

1. Replace the empty `greetUser` function in **graphtutorial.go** with the following.

    :::code language="go" source="includes/go/src/user-auth/graphtutorial/graphtutorial.go" id="GreetUserSnippet":::

If you run the app now, after you sign in the app welcomes you by name.

```bash
Hello, Megan Bowen!
Email: MeganB@contoso.com
```

### Code explained

Consider the code in the `getUser` function. It's only a few lines, but there are some key details to notice.

#### Accessing 'me'

The function uses the `userClient.Me` request builder, which builds a request to the [Get user](/graph/api/user-get) API. This API is accessible two ways:

```http
GET /me
GET /users/{user-id}
```

In this case, the code calls the `GET /me` API endpoint. This endpoint is a shortcut method to get the authenticated user without knowing their user ID.

> [!NOTE]
> Because the `GET /me` API endpoint gets the authenticated user, it's only available to apps that use user authentication. App-only authentication apps can't access this endpoint.

#### Requesting specific properties

The function uses the `Select` property in the request's query parameters to specify the set of properties it needs. This property adds the [$select query parameter](/graph/query-parameters#select-parameter) to the API call.

#### Strongly typed return type

The function returns a `Userable` object deserialized from the JSON response from the API. Because the code uses `Select`, only the requested properties have values in the returned `Userable` object. All other properties have default values.

## Next step

> [!div class="nextstepaction"]
> [Read and send email](go-email.md)
