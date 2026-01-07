---
title: Add user authentication to .NET apps for Microsoft Graph
description: Learn how to add user authentication to .NET apps to call Microsoft Graph
author: jasonjoh
ms.author: jasonjoh
ms.topic: how-to
ms.date: 05/30/2025
ms.localizationpriority: medium
---

# Add user authentication to .NET apps for Microsoft Graph

In this article, you add user authentication to the application you created in [Build .NET apps with Microsoft Graph](dotnet.md). You then use the Microsoft Graph user API to get the authenticated user.

## Add user authentication

The [Azure Identity client library for .NET](https://www.nuget.org/packages/Azure.Identity) provides many `TokenCredential` classes that implement OAuth2 token flows. The [Microsoft Graph .NET client library](https://github.com/microsoftgraph/msgraph-sdk-dotnet) uses those classes to authenticate calls to Microsoft Graph.

### Configure Graph client for user authentication

Start by using the `DeviceCodeCredential` class to request an access token by using the [device code flow](/azure/active-directory/develop/v2-oauth2-device-code).

1. Create a new file in the **GraphTutorial** directory named **GraphHelper.cs** and add the following code to that file.

    ```csharp
    using Azure.Core;
    using Azure.Identity;
    using Microsoft.Graph;
    using Microsoft.Graph.Models;
    using Microsoft.Graph.Me.SendMail;

    class GraphHelper
    {
    }
    ```

1. Add the following code to the `GraphHelper` class.

    :::code language="csharp" source="includes/dotnet/src/user-auth/GraphTutorial/GraphHelper.cs" id="UserAuthConfigSnippet":::

1. Replace the empty `InitializeGraph` function in **Program.cs** with the following.

    :::code language="csharp" source="includes/dotnet/src/user-auth/GraphTutorial/Program.cs" id="InitializeGraphSnippet":::

This code declares two private properties, a `DeviceCodeCredential` object and a `GraphServiceClient` object. The `InitializeGraphForUserAuth` function creates a new instance of `DeviceCodeCredential`, then uses that instance to create a new instance of `GraphServiceClient`. Every time an API call is made to Microsoft Graph through the `_userClient`, it uses the provided credential to get an access token.

### Test the DeviceCodeCredential

Next, add code to get an access token from the `DeviceCodeCredential`.

1. Add the following function to the `GraphHelper` class.

    :::code language="csharp" source="includes/dotnet/src/user-auth/GraphTutorial/GraphHelper.cs" id="GetUserTokenSnippet":::

1. Replace the empty `DisplayAccessTokenAsync` function in **Program.cs** with the following.

    :::code language="csharp" source="includes/dotnet/src/user-auth/GraphTutorial/Program.cs" id="DisplayAccessTokenSnippet":::

1. Build and run the app. Enter `1` when prompted for an option. The application displays a URL and device code.

    ```Shell
    .NET Graph Tutorial

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

1. Open **./GraphHelper.cs** and add the following function to the **GraphHelper** class.

    :::code language="csharp" source="includes/dotnet/src/user-auth/GraphTutorial/GraphHelper.cs" id="GetUserSnippet":::

1. Replace the empty `GreetUserAsync` function in **Program.cs** with the following.

    :::code language="csharp" source="includes/dotnet/src/user-auth/GraphTutorial/Program.cs" id="GreetUserSnippet":::

If you run the app now, after you sign in the app welcomes you by name.

```Shell
Hello, Megan Bowen!
Email: MeganB@contoso.com
```

### Code explained

Consider the code in the `GetUserAsync` function. It's only a few lines, but there are some key details to notice.

#### Accessing 'me'

The function uses the `_userClient.Me` request builder, which builds a request to the [Get user](/graph/api/user-get) API. This API is accessible two ways:

```http
GET /me
GET /users/{user-id}
```

In this case, the code calls the `GET /me` API endpoint. This endpoint is a shortcut method to get the authenticated user without knowing their user ID.

> [!NOTE]
> Because the `GET /me` API endpoint gets the authenticated user, it's only available to apps that use user authentication. App-only authentication apps can't access this endpoint.

#### Requesting specific properties

The function uses the `Select` method on the request to specify the set of properties it needs. This method adds the [$select query parameter](/graph/query-parameters#select-parameter) to the API call.

#### Strongly typed return type

The function returns a `Microsoft.Graph.User` object deserialized from the JSON response from the API. Because the code uses `Select`, only the requested properties have values in the returned `User` object. All other properties have default values.

## Next step

> [!div class="nextstepaction"]
> [Read and send email](dotnet-email.md)
