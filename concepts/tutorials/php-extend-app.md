---
title: Extend PHP apps with more Microsoft Graph APIs
description: Learn how to add more Microsoft Graph APIs to PHP apps
author: jasonjoh
ms.author: jasonjoh
ms.topic: how-to
ms.date: 05/30/2025
ms.localizationpriority: medium
---

# Extend PHP apps with more Microsoft Graph APIs

<!-- cSpell:ignore graphtutorial Laravel -->

In this article, you add your own Microsoft Graph capabilities to the application you created in [Build PHP apps with Microsoft Graph](php.md). For example, you might want to add a code snippet from Microsoft Graph [documentation](/graph/api/overview) or [Graph Explorer](https://developer.microsoft.com/graph/graph-explorer), or code that you created. This section is optional.

## Update the app

1. Add the following code to the `GraphHelper` class.

    :::code language="php" source="includes/php/src/user-auth/graphtutorial/GraphHelper.php" id="MakeGraphCallSnippet":::

1. Replace the empty `makeGraphCall` function in **main.php** with the following.

    :::code language="php" source="includes/php/src/user-auth/graphtutorial/main.php" id="MakeGraphCallSnippet":::

## Choose an API

Find an API in Microsoft Graph you'd like to try. For example, the [Create event](/graph/api/user-post-events) API. You can use one of the examples in the API documentation, or create your own API request.

## Configure permissions

Check the **Permissions** section of the reference documentation for your chosen API to see which authentication methods are supported. Some APIs don't support app-only, or personal Microsoft accounts, for example.

- To call an API with user authentication (if the API supports user (delegated) authentication), add the required permission scope in **.env**.
- To call an API with app-only authentication, see the [app-only authentication](php-app-only.md) tutorial.

## Add your code

Add your code into the `makeGraphCall` function in **GraphHelper.php**.

## Related content

Now that you have a working app that calls Microsoft Graph, you can experiment and add new features.

- Learn how to use [app-only authentication](php-app-only.md) with the Microsoft Graph PHP SDK.
- Visit the [Overview of Microsoft Graph](/graph/overview) to see all of the data you can access with Microsoft Graph.

### PHP Samples

- [Laravel web app](https://github.com/microsoftgraph/msgraph-training-phpapp)
