---
title: Extend Python apps that use app-only authentication with additional Microsoft Graph APIs
description: Learn how to add additional Microsoft Graph APis to Python apps
author: jasonjoh
ms.author: jasonjoh
ms.topic: how-to
ms.date: 06/03/2025
ms.localizationpriority: medium
---

# Extend Python apps that use app-only authentication with additional Microsoft Graph APIs

In this article you will add your own Microsoft Graph capabilities to the application you created in [Build Python apps with Microsoft Graph and app-only authentication](python-app-only.md). This could be a code snippet from Microsoft Graph [documentation](/graph/api/overview) or [Graph Explorer](https://developer.microsoft.com/graph/graph-explorer), or code that you created.

## Update the app

1. Add the following function to **graph.py**.

    :::code language="python" source="includes/python/src/app-auth/graphapponlytutorial/graph.py" id="MakeGraphCallSnippet":::

1. Replace the empty `list_inbox` function in **main.py** with the following.

    :::code language="python" source="includes/python/src/app-auth/graphapponlytutorial/main.py" id="MakeGraphCallSnippet":::

## Choose an API

Find an API in Microsoft Graph you'd like to try. For example, the [Create event](/graph/api/user-post-events) API. You can use one of the examples in the API documentation, or create your own API request.

## Configure permissions

Check the **Permissions** section of the reference documentation for your chosen API to see which authentication methods are supported. Some APIs don't support app-only, or personal Microsoft accounts, for example.

- To call an API with user authentication (if the API supports user (delegated) authentication), see the [user (delegated) authentication](/graph/tutorials/dotnet) tutorial.
- To call an API with app-only authentication (if the API supports it), add the required permission scope in the Azure AD admin center.

## Add your code

Copy your code into the `make_graph_call` function in **graph.py**.

## Related content

You've completed the Python Microsoft Graph tutorial. Now that you have a working app that calls Microsoft Graph, you can experiment and add new features.

- Learn how to use [user (delegated) authentication](/graph/tutorials/python) with the Microsoft Graph Python SDK.
- Visit the [Overview of Microsoft Graph](/graph/overview) to see all of the data you can access with Microsoft Graph.

### Python samples

- [Django web app](https://github.com/microsoftgraph/msgraph-training-pythondjangoapp)
- [Security API sample](https://github.com/microsoftgraph/python-security-rest-sample)
