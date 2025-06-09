---
title: Extend Go apps that use app-only authentication with additional Microsoft Graph APIs
description: Learn how to add additional Microsoft Graph APis to Go apps
author: jasonjoh
ms.author: jasonjoh
ms.topic: how-to
ms.date: 06/03/2025
ms.localizationpriority: medium
---

# Extend Go apps that use app-only authentication with additional Microsoft Graph APIs

In this article you will add your own Microsoft Graph capabilities to the application you created in [Build Go apps with Microsoft Graph and app-only authentication](go-app-only.md). This could be a code snippet from Microsoft Graph [documentation](/graph/api/overview) or [Graph Explorer](https://developer.microsoft.com/graph/graph-explorer), or code that you created.

## Update the app

1. Add the following function to **./graphhelper/graphhelper.go**.

    :::code language="go" source="includes/go/src/app-auth/graphapponlytutorial/graphhelper/graphhelper.go" id="MakeGraphCallSnippet":::

1. Replace the empty `makeGraphCall` function in **graphapponlytutorial.go** with the following.

    :::code language="go" source="includes/go/src/app-auth/graphapponlytutorial/graphapponlytutorial.go" id="MakeGraphCallSnippet":::

## Choose an API

Find an API in Microsoft Graph you'd like to try. For example, the [Create event](/graph/api/user-post-events) API. You can use one of the examples in the API documentation, or you can customize an API request in Graph Explorer and use the generated snippet.

## Configure permissions

Check the **Permissions** section of the reference documentation for your chosen API to see which authentication methods are supported. Some APIs don't support app-only, or personal Microsoft accounts, for example.

- To call an API with user authentication (if the API supports user (delegated) authentication), see the [user (delegated) authentication](/graph/tutorials/dotnet) tutorial.
- To call an API with app-only authentication (if the API supports it), add the required permission scope in the Azure AD admin center.

## Add your code

Copy your code into the `MakeGraphCall` function in **graphhelper.go**. If you're copying a snippet from documentation or Graph Explorer, be sure to rename the `GraphServiceClient` to `appClient`.

## Related content

You've completed the Go Microsoft Graph tutorial. Now that you have a working app that calls Microsoft Graph, you can experiment and add new features.

- Learn how to use [user (delegated) authentication](/graph/tutorials/go) with the Microsoft Graph Go SDK.
- Visit the [Overview of Microsoft Graph](/graph/overview) to see all of the data you can access with Microsoft Graph.
