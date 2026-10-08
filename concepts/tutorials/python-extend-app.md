---
title: Extend Python apps with more Microsoft Graph APIs
description: Learn how to add more Microsoft Graph APIs to Python apps
author: jasonjoh
ms.author: jasonjoh
ms.topic: how-to
ms.date: 05/30/2025
ms.localizationpriority: medium
---

# Extend Python apps with more Microsoft Graph APIs

<!-- cSpell:ignore graphtutorial -->

In this article, you add your own Microsoft Graph capabilities to the application you created in [Build Python apps with Microsoft Graph](python.md). For example, you might want to add a code snippet from Microsoft Graph [documentation](/graph/api/overview) or [Graph Explorer](https://developer.microsoft.com/graph/graph-explorer), or code that you created. This section is optional.

## Update the app

1. Add the following function to **graph.py**.

    :::code language="python" source="includes/python/src/user-auth/graphtutorial/graph.py" id="MakeGraphCallSnippet":::

1. Replace the empty `make_graph_call` function in **main.py** with the following.

    :::code language="python" source="includes/python/src/user-auth/graphtutorial/main.py" id="MakeGraphCallSnippet":::

## Choose an API

Find an API in Microsoft Graph you'd like to try. For example, the [Create event](/graph/api/user-post-events) API. You can use one of the examples in the API documentation, or create your own API request.

## Configure permissions

Check the **Permissions** section of the reference documentation for your chosen API to see which authentication methods are supported. Some APIs don't support app-only, or personal Microsoft accounts, for example.

- To call an API with user authentication (if the API supports user (delegated) authentication), add the required permission scope in **config.cfg**.
- To call an API with app-only authentication, see the [app-only authentication](python-app-only.md) tutorial.

## Add your code

Copy your code into the `make_graph_call` function in **graph.py**. If you're copying a snippet from documentation or Graph Explorer, be sure to rename the `GraphServiceClient` to `self.user_client`.

## Related content

Now that you have a working app that calls Microsoft Graph, you can experiment and add new features.

- Learn how to use [app-only authentication](python-app-only.md) with the Microsoft Graph SDK for Python.
- Visit the [Overview of Microsoft Graph](/graph/overview) to see all of the data you can access with Microsoft Graph.

### Python samples

- [Django web app](https://github.com/microsoftgraph/msgraph-training-pythondjangoapp)
- [Security API sample](https://github.com/microsoftgraph/python-security-rest-sample)
