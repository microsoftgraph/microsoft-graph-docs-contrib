---
title: "Migrate Azure AD Graph .NET apps to Microsoft Graph  | Microsoft Graph"
description: "Describes how to migrate Azure Active Directory (Azure AD) API apps to Microsoft Graph API."
author: "dkershaw10"
localization_priority: Normal
ms.prod: "microsoft-identity-platform"
---

# Migrate .NET client library use to Microsoft Graph

If your app currently uses the Azure AD Graph client library, we recommend switching to the [Microsoft Graph .Net client
library](https://www.nuget.org/packages/Microsoft.Graph) and [SDK](https://github.com/microsoftgraph/msgraph-sdk-dotnet).

>NOTE: Currently the Microsoft Graph .Net client library is only supported for .NET Framework 4.5 and .NET Standard 1.1.  However please consult Microsoft Graph .Net client library for the latest support information.

Here, we'll look at some general steps to migrate over to the Microsoft Graph .NET client library:

- how to create a graph client, given an access token (that you can acquire using ADAL or MSAL),
- how to formulate requests,
- use query builders,
- handle collections and paging.  

## Overview of the migration steps (using ADAL)

The following steps assume your app is already using ADAL to acquire access tokens to call Azure AD Graph, and that for now you will continue to use ADAL. Switching to MSAL can be done as a separate step described in [migrating to MSAL](graph/migrate-azure-ad-graph-authentication-library#migrate-to-msal).

1. To acquire an access token to Microsoft Graph: **Update resource url** from `https://graph.windows.net` to `https://graph.microsoft.com`.

2. In your app, update references to the Microsoft Graph client library.  

    change:

    ``` csharp 
    using Microsoft.Azure.ActiveDirectory.GraphClient;
    ```

    to:

    ``` csharp
    using Microsoft.Graph;
    ```

3. Use your package manager to download and update the [Microsoft.Graph](https://www.nuget.org/packages/Microsoft.Graph/) NuGet package and dependencies.

4. Update your client constructor to create a `GraphServiceClient`, rather than `ActiveDirectoryClient`.  The following code snippet assumes your app is using the `AcquireTokenAsyncForUser()` method to acquire new tokens.

    change:

    ``` csharp
    ActiveDirectoryClient client = new ActiveDirectoryClient(serviceRoot,
    async () =\> await AcquireTokenAsyncForUser());
    ```

    to:

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

1. Update requests to use the Microsoft Graph client request builder
    syntax.

    change:

    ``` csharp
    signedInUser = (User)await client.Me.ExecuteAsync();
    ```

    to:

    ``` csharp
    signedInUser = (User)await client.Me.Request().GetAsync();
    ```

    **NOTE**: the Azure AD Graph client library supported LINQ-based query
    syntax. However, the Microsoft Graph client library does not.  Consequently, you'll need to convert the relevant queries to a more RESTful expression.  

    To do so, change:

    ``` csharp
    var groups = await
    client.Groups.Where(g =\> g.DisplayName.StartsWith("a")).ExecuteAsync();
    ```

    to:

    ``` csharp
    var groups = await
    client.Groups.Request().Filter("startswith(displayName,'a')").GetAsync();
    ```

2. Build and fix any resource, property, navigation, and service action errors, generally related to name changes.
3. For any collections and paging, your app code will need to switch from using _fetcher_ syntax
    
    from:

    ```csharp
    IUserFetcher signedInUserFetcher = user;
    IPagedCollection<IDirectoryObject> pagedCollection = await signedInUserFetcher.MemberOf.ExecuteAsync();
    do
    {
        List<IDirectoryObject> directoryObjects = pagedCollection.CurrentPage.ToList();
        foreach (IDirectoryObject directoryObject in directoryObjects)
        {
            if (directoryObject is Group)
            {
                Group group = directoryObject as Group;
                Console.WriteLine(" Group: {0}  Description: {1}", group.DisplayName, group.Description);
            }
            if (directoryObject is DirectoryRole)
            {
                DirectoryRole role = directoryObject as DirectoryRole;
                Console.WriteLine(" Role: {0}  Description: {1}", role.DisplayName, role.Description);
            }
        }
        pagedCollection = await pagedCollection.GetNextPageAsync();
    } while (pagedCollection != null);
    ```

    to:

    ```csharp
    //TODO add example.  We don't have this ANYWHERE in any sample
    // See https://github.com/microsoftgraph/msgraph-sdk-dotnet/blob/dev/docs/collections.md
    ```

## Additional resources

The Azure AD Graph library supported only the .NET platform.  The Microsoft.Graph library supports additional [platforms and languages](https://developer.microsoft.com/graph/gallery/?filterBy=Samples,SDKs) that you may find more useful for your solutions.

## Next Steps

- Learn how to [deploy, test, and extend](/graph/migrate-azure-ad-graph-deploy-test-extend) apps you've migrated to Microsoft Graph.
- Explore [Microsoft Graph](/graph/overview) concepts and practices.
- Use [Graph Explorer](https://aka.ms/ge) to experiment with Microsoft Graph.

