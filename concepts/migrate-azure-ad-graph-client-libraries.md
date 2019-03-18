---
title: "Migrate Azure AD Graph .NET apps to Microsoft Graph  | Microsoft Graph"
description: "Describes how to migrate Azure Active Directory (Azure AD) API apps to Microsoft Graph API."
author: "lleonard-msft"
localization_priority: Normal
ms.prod: "microsoft-identity-platform"
---

# Migrate .NET client library use to Microsoft Graph

If your app currently uses the Azure AD Graph client library, we recommend switching to the [Microsoft Graph .Net client
library](https://www.nuget.org/packages/Microsoft.Graph) and [SDK](https://github.com/microsoftgraph/msgraph-sdk-dotnet).

A number of resources are available, including:

- An overview to the process.
- Samples showing how to call Microsoft Graph directly using REST or the .NET client SDK.

Here's a general overview of the migration process (using ADAL):

1.  To acquire an ADAL token: **Update resource url** from `https://graph.windows.net` to `https://graph.microsoft.com`>.

2.  In your app, update references to the Graph client library.  

    Change:

    ``` csharp 
    using Microsoft.Azure.ActiveDirectory.GraphClient;
    ```

    To:

    ``` csharp
    using Microsoft.Graph;
    ```

3.  Use your package manager to download and update the [Microsoft.Graph](https://www.nuget.org/packages/Microsoft.Graph/) NuGet package and dependencies.

4.  Update your client constructor to create a `GraphServiceClient`, rather than `ActiveDirectoryClient`.  (This assumes you're using `AcquireTokenAsyncForUser()` to acquire new tokens.)

    Change:

    ``` csharp
    ActiveDirectoryClient client = new ActiveDirectoryClient(serviceRoot,
    async () =\> await AcquireTokenAsyncForUser());
    ```

    To:

    ``` csharp
    graphClient = new client(serviceRoot,
       new DelegateAuthenticationProvider(async (requestMessage) => {
          var token = await AcquireTokenAsyncForUser();
          requestMessage.Headers.Authorization = new
             AuthenticationHeaderValue("bearer", token);
       }));
    ```

    For Microsoft Graph client library, the `serviceRoot` value also includes the
version number, `https://graph.microsoft.com/v1.0` in this case.


    1.  Update requests to use the Microsoft Graph client request builder
    syntax. 

    Change:

    ``` csharp
    signedInUser = (User)await client.Me.ExecuteAsync();
    ```

    ``` csharp
    signedInUser = (User)await client.Me.Request().GetAsync();
    ```

    While the Azure AD Graph client supported LINQ-based query syntax

    **Additionally**, the Azure AD Graph client supported [LINQ-based query
    syntax]; however, the Microsoft Graph library does not.  Consequently, you'll need to convert relevant queries to a more RESTful expression.  

    To do so, change:

    ``` csharp
    var groups = await
    client.Groups.Where(g =\> g.DisplayName.StartsWith("a")).ExecuteAsync();
    ```

    To:

    ``` csharp
    var groups = await
    client.Groups.Request().Filter("startswith(displayName,'a')").GetAsync();
    ```

5.  Build and fix any resource, property, navigation, and service action errors, generally related to name changes.

The Azure AD Graph library supported only the .NET platform.  The Microsoft.Graph library supports additional [platforms and languages](https://developer.microsoft.com/graph/gallery/?filterBy=Samples,SDKs) that you may find more useful for your solutions.

## Next Steps

- Learn about request differences between Azure AD Graph and Microsoft Graph.
- Follow Microsoft Graph [blogs](https://developer.microsoft.com/graph/blogs) for updates and review the [documentation]((https://developer.microsoft.com/graph)).
- Manage Azure AD resources, such as [users](https://docs.microsoft.com/graph/azuread-users-concept-overview), [groups](https://docs.microsoft.com/graph/office365-groups-concept-overview), and [identity access](https://docs.microsoft.com/graph/azuread-identity-access-management-concept-overview).
- Use [quick starts and samples](https://developer.microsoft.com/graph/get-started) to come up to speed quickly.
- Leverage [client libraries and SDKs](https://developer.microsoft.com/graph/get-started) to develop custom applications supporting multiple operating systems and languages.
- Experiment using the [Graph Explorer](https://aka.ms/ge).

