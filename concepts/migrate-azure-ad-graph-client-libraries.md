---
title: "Migrate Azure AD Graph .NET apps to Microsoft Graph"
description: "Describes how to migrate apps from Azure Active Directory (Azure AD) Graph APIs to Microsoft Graph APIs."
author: FaithOmbongi
ms.author: ombongifaith
ms.reviewer: krbash
ms.topic: how-to
ms.localizationpriority: medium
ms.subservice: entra-applications
ms.date: 02/14/2025
#Customer intent: As a developer of an app currently using the Azure AD Graph .NET client library, I want to migrate my app to use the Microsoft Graph .NET client library, as I migrate from Azure AD Graph to Microsoft Graph.
---

# Migrate .NET client library use to Microsoft Graph

> This article is part of *Step 3: review app details* in the [Azure AD Graph app migration planning checklist](migrate-azure-ad-graph-planning-checklist.md) series.

If your app currently uses the Azure Active Directory (Azure AD) Graph client library, switch to the [Microsoft Graph .NET client library](https://github.com/microsoftgraph/msgraph-sdk-dotnet).

In this article, you learn the following general steps to migrate over to the Microsoft Graph .NET client library:
> [!div class="checklist"]
> * How to create a Microsoft Graph client, given an access token (that you can acquire using either Azure Active Directory Authentication Library (ADAL) or Microsoft Authentication Library (MSAL))
> * How to formulate requests
> * How to use query builders
> * How to handle collections and paging

## Overview of the migration steps

The following steps assume your app uses ADAL to acquire access tokens to call Azure AD Graph. Switching to MSAL can be done as a separate step described in [migrating to MSAL](./migrate-azure-ad-graph-authentication-library.md#migrating-to-msal).

### Update the resource URL

To acquire an access token to Microsoft Graph, update **resourceUrl**

From:

`https://graph.windows.net`

To:

`https://graph.microsoft.com`

### Update references

In your app, update references to the Microsoft Graph client library by changing:

From:

``` csharp
using Microsoft.Azure.ActiveDirectory.GraphClient;
```

To:

``` csharp
using Microsoft.Graph;
```

### Update packages and dependencies

Use your package manager to download and update the [Microsoft Graph NuGet package](https://www.nuget.org/packages/Microsoft.Graph/) and update dependencies.

### Update client constructor

Update your client constructor to create a `GraphServiceClient` instead of `ActiveDirectoryClient`. The following code snippets assume your app is using the `AcquireTokenAsyncForUser()` method to acquire new tokens. You can find a definition for this method as part of the [active-directory-dotnet-graphapi-console sample](https://github.com/Azure-Samples/active-directory-dotnet-graphapi-console/blob/archive/GraphConsoleAppV3/AuthenticationHelper.cs).

From:

``` csharp
ActiveDirectoryClient client = new ActiveDirectoryClient(serviceRoot,
async () => await AcquireTokenAsyncForUser());
```

To:

``` csharp
GraphServiceClient graphClient = new GraphServiceClient(serviceRoot,
    new DelegateAuthenticationProvider(async (requestMessage) => {
        var token = await AcquireTokenAsyncForUser();
        requestMessage.Headers.Authorization = new
            AuthenticationHeaderValue("bearer", token);
    }));
```

For Microsoft Graph client library, the `serviceRoot` value also includes the version number. Currently, that value is `https://graph.microsoft.com/v1.0`.

### Update request syntaxes

Update requests to use the Microsoft Graph client request builder syntax, by changing:

From: 

``` csharp
signedInUser = (User)await client.Me.ExecuteAsync();
```

To:

``` csharp
signedInUser = (User)await client.Me.Request().GetAsync();
```

The Azure AD Graph client library supported LINQ-based query syntax. However, the Microsoft Graph client library does not. Consequently, you need to convert the relevant queries to a more RESTful expression. To do so, change:

From:

``` csharp
var groups = await
client.Groups.Where(g => g.DisplayName.StartsWith("a")).ExecuteAsync();
```

To:

``` csharp
var groups = await
client.Groups.Request().Filter("startswith(displayName,'a')").GetAsync();
```

### Handle collections and paging

If your code pages through collections, adjustments are required. The following example compares and contrasts fetching a group and paging through its members, 5 at a time. While the code for Azure AD Graph requires a fetcher construct in order to fetch a group's members, Microsoft Graph has no such requirement. The code is trucated and shows only user members, try/catch and error conditions aren't shown, and the code snippets are for a single-threaded console app.

As an example, change the following code using the Azure AD Graph .NET client library:

```csharp
Group retrievedGroup = client.Groups.
    Where(g => g.ObjectId.Equals(id)).ExecuteAsync().Result;
IGroupFetcher retrievedGroupFetcher = (IGroupFetcher) retrievedGroup;

var membersPage = retrievedGroupFetcher.Members.Take(5).ExecuteAsync().Result;
Console.WriteLine(" Members:");
do
{
    List<IDirectoryObject> members = membersPage.CurrentPage.ToList();
    foreach (IDirectoryObject member in members)
    {
        if (member is User)
        {
            User memberUser = (User)member;
            Console.WriteLine("        User: {0} ", memberUser.DisplayName);
        }
    }
    membersPage = membersPage.GetNextPageAsync().Result;
} while (membersPage != null);
```

To the following code using the Microsoft Graph .NET client library:

```csharp
var membersPage = client.Groups[id].Members.Request().Top(5).GetAsync().Result;
Console.WriteLine(" Members:");
do
{
    List<DirectoryObject> members = membersPage.CurrentPage.ToList();
    foreach (DirectoryObject member in members)
    {
        if (member is User)
        {
            User memberUser = (User)member;
            Console.WriteLine("        User: {0} ", memberUser.DisplayName);
        }
    }
    if (membersPage.NextPageRequest != null)
        membersPage = membersPage.NextPageRequest.GetAsync().Result;
    else membersPage = null;
} while (membersPage != null);
```

### Test, validate, resolve
Build and fix any resource, property, navigation, and service action errors that are related to name changes.

## Resources

- The [C# console snippets app](https://github.com/microsoftgraph/console-csharp-snippets-sample) highlights more of the differences between Microsoft Graph client library and Azure AD Graph client library.
- The Azure AD Graph client library supports only the .NET platform. However, Microsoft Graph client library supports additional [platforms and languages](/graph/sdks/sdks-overview).

## Next step

> [!div class="nextstepaction"]
> [Review the migration checklist again](migrate-azure-ad-graph-planning-checklist.md)
