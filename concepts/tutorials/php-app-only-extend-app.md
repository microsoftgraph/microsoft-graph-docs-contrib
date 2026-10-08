---
title: Extend PHP apps that use app-only authentication with more Microsoft Graph APIs
description: Learn how to add more Microsoft Graph APIs to PHP apps
author: jasonjoh
ms.author: jasonjoh
ms.topic: how-to
ms.date: 06/03/2025
ms.localizationpriority: medium
---

# Extend PHP apps that use app-only authentication with more Microsoft Graph APIs

<!-- cSpell:ignore graphapponlytutorial Laravel -->

In this article, you add your own Microsoft Graph capabilities to the application you created in [Build PHP apps with Microsoft Graph and app-only authentication](php-app-only.md). For example, you might want to add a code snippet from Microsoft Graph [documentation](/graph/api/overview) or [Graph Explorer](https://developer.microsoft.com/graph/graph-explorer), or code that you created.

## Update the app

1. Add the following code to the `GraphHelper` class.

    :::code language="php" source="includes/php/src/app-auth/graphapponlytutorial/GraphHelper.php" id="MakeGraphCallSnippet":::

1. Replace the empty `makeGraphCall` function in **main.php** with the following.

    :::code language="php" source="includes/php/src/app-auth/graphapponlytutorial/main.php" id="MakeGraphCallSnippet":::

## Choose an API

Find an API in Microsoft Graph you'd like to try. For example, the [Create event](/graph/api/user-post-events) API. You can use one of the examples in the API documentation, or create your own API request.

## Configure permissions

Check the **Permissions** section of the reference documentation for your chosen API to see which authentication methods are supported. Some APIs don't support app-only, or personal Microsoft accounts, for example.

- To call an API with user authentication (if the API supports user (delegated) authentication), see the [user (delegated) authentication](dotnet.md) tutorial.
- To call an API with app-only authentication (if the API supports it), add the required permission scope in the Microsoft Entra admin center.

## Add your code

Add your code into the `makeGraphCall` function in **GraphHelper.php**.

## Related content

Now that you have a working app that calls Microsoft Graph, you can experiment and add new features.

- Learn how to use [user (delegated) authentication](php.md) with the Microsoft Graph PHP SDK.
- Visit the [Overview of Microsoft Graph](/graph/overview) to see all of the data you can access with Microsoft Graph.

### PHP Samples

- [Laravel web app](https://github.com/microsoftgraph/msgraph-training-phpapp)
