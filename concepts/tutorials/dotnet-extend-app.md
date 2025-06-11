---
title: Extend .NET apps with more Microsoft Graph APIs
description: Learn how to add more Microsoft Graph APIs to .NET apps
author: jasonjoh
ms.author: jasonjoh
ms.topic: how-to
ms.date: 05/30/2025
ms.localizationpriority: medium
---

# Extend .NET apps with more Microsoft Graph APIs

In this article, you add your own Microsoft Graph capabilities to the application you created in [Build .NET apps with Microsoft Graph](dotnet.md). For example, you might want to add a code snippet from Microsoft Graph [documentation](/graph/api/overview) or [Graph Explorer](https://developer.microsoft.com/graph/graph-explorer), or code that you created.

## Update the app

1. Open **./GraphHelper.cs** and add the following function to the **GraphHelper** class.

    :::code language="csharp" source="includes/dotnet/src/user-auth/GraphTutorial/GraphHelper.cs" id="MakeGraphCallSnippet":::

1. Replace the empty `MakeGraphCallAsync` function in **Program.cs** with the following.

    :::code language="csharp" source="includes/dotnet/src/user-auth/GraphTutorial/Program.cs" id="MakeGraphCallSnippet":::

## Choose an API

Find an API in Microsoft Graph you'd like to try. For example, the [Create event](/graph/api/user-post-events) API. You can use one of the examples in the API documentation, or you can customize an API request in Graph Explorer and use the generated snippet.

## Configure permissions

Check the **Permissions** section of the reference documentation for your chosen API to see which authentication methods are supported. Some APIs don't support app-only, or personal Microsoft accounts, for example.

- To call an API with user authentication (if the API supports user (delegated) authentication), add the required permission scope in **appsettings.json**.
- To call an API with app-only authentication, see the [app-only authentication](dotnet-app-only.md) tutorial.

## Add your code

Copy your code into the `MakeGraphCallAsync` function in **GraphHelper.cs**. If you're copying a snippet from documentation or Graph Explorer, be sure to rename the `GraphServiceClient` to `_userClient`.

## Related content

Now that you have a working app that calls Microsoft Graph, you can experiment and add new features.

- Learn how to use [app-only authentication](dotnet-app-only.md) with the Microsoft Graph .NET SDK.
- Visit the [Overview of Microsoft Graph](/graph/overview) to see all of the data you can access with Microsoft Graph.

### .NET samples

- [ASP.NET Core MVC app](https://github.com/microsoftgraph/msgraph-training-aspnet-core)
- [Universal Windows Platform (UWP) app](https://github.com/microsoftgraph/msgraph-training-uwp)
- [Xamarin app](https://github.com/microsoftgraph/msgraph-training-xamarin)
- [Blazor WebAssembly app](https://github.com/microsoftgraph/msgraph-training-blazor-clientside)
- [Azure Functions](https://github.com/microsoftgraph/msgraph-training-azurefunction-csharp)
- [Bot Framework](https://github.com/microsoftgraph/msgraph-training-botframework)
- [Teams app](https://github.com/microsoftgraph/msgraph-training-teamsapp-dotnet)
- [Change notifications](https://github.com/microsoftgraph/aspnetcore-webhooks-sample)
- [ASP.NET Core snippets](https://github.com/microsoftgraph/aspnet-snippets-sample)
