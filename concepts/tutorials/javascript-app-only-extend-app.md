---
title: Extend JavaScript apps that use app-only authentication with more Microsoft Graph APIs
description: Learn how to add more Microsoft Graph APIs to JavaScript apps
author: jasonjoh
ms.author: jasonjoh
ms.topic: how-to
ms.date: 06/03/2025
ms.localizationpriority: medium
---

# Extend JavaScript apps that use app-only authentication with more Microsoft Graph APIs

<!-- cSpell:ignore graphapponlytutorial -->

In this article, you add your own Microsoft Graph capabilities to the application you created in [Build JavaScript apps with Microsoft Graph and app-only authentication](javascript-app-only.md). For example, you might want to add a code snippet from Microsoft Graph [documentation](/graph/api/overview) or [Graph Explorer](https://developer.microsoft.com/graph/graph-explorer), or code that you created.

## Update the app

1. Open **graphHelper.js** and add the following function.

    :::code language="javascript" source="includes/javascript/src/app-auth/graphapponlytutorial/graphHelper.js" id="MakeGraphCallSnippet":::

1. Replace the empty `makeGraphCallAsync` function in **index.js** with the following.

    :::code language="javascript" source="includes/javascript/src/app-auth/graphapponlytutorial/index.js" id="MakeGraphCallSnippet":::

## Choose an API

Find an API in Microsoft Graph you'd like to try. For example, the [Create event](/graph/api/user-post-events) API. You can use one of the examples in the API documentation, or you can customize an API request in Graph Explorer and use the generated snippet.

## Configure permissions

Check the **Permissions** section of the reference documentation for your chosen API to see which authentication methods are supported. Some APIs don't support app-only, or personal Microsoft accounts, for example.

- To call an API with user authentication (if the API supports user (delegated) authentication), see the [user (delegated) authentication](javascript.md) tutorial.
- To call an API with app-only authentication (if the API supports it), add the required permission scope in the Microsoft Entra admin center.

## Add your code

Copy your code into the `makeGraphCallAsync` function in **graphHelper.js**. If you're copying a snippet from documentation or Graph Explorer, be sure to rename the `client` to `_appClient`.

## Related content

Now that you have a working app that calls Microsoft Graph, you can experiment and add new features.

- Learn how to use [user (delegated) authentication](javascript.md) with the Microsoft Graph JavaScript SDK.
- Visit the [Overview of Microsoft Graph](/graph/overview) to see all of the data you can access with Microsoft Graph.

### Microsoft Graph Toolkit

If you're building JavaScript apps with UI, the [Microsoft Graph Toolkit](/graph/toolkit/overview) offers a collection of components that can simplify development.

### TypeScript/JavaScript samples

- [Angular single-page app](https://github.com/microsoftgraph/msgraph-training-angularspa)
- [React single-page app](https://github.com/microsoftgraph/msgraph-training-reactspa)
- [React Native mobile app](https://github.com/microsoftgraph/msgraph-training-react-native)
- [JavaScript single-page app](https://github.com/microsoftgraph/msgraph-training-javascriptspa)
- [Node.js Express web app](https://github.com/microsoftgraph/msgraph-training-nodeexpressapp)
- [Office add-in](https://github.com/microsoftgraph/msgraph-training-office-addin)
- [SharePoint Framework app](https://github.com/microsoftgraph/msgraph-training-spfx)
- [Change notifications](https://github.com/microsoftgraph/nodejs-webhooks-sample)
