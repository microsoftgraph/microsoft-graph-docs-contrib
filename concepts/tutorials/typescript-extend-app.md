---
title: Extend TypeScript apps with more Microsoft Graph APIs
description: Learn how to add more Microsoft Graph APIs to TypeScript apps
author: jasonjoh
ms.author: jasonjoh
ms.topic: how-to
ms.date: 05/30/2025
ms.localizationpriority: medium
---

# Extend TypeScript apps with more Microsoft Graph APIs

<!-- cSpell:ignore graphtutorial -->

In this article, you add your own Microsoft Graph capabilities to the application you created in [Build TypeScript apps with Microsoft Graph](typescript.md). For example, you might want to add a code snippet from Microsoft Graph [documentation](/graph/api/overview) or [Graph Explorer](https://developer.microsoft.com/graph/graph-explorer), or code that you created. This section is optional.

## Update the app

1. Open **graphHelper.ts** and add the following function.

    :::code language="typescript" source="includes/typescript/src/user-auth/graphtutorial/graphHelper.ts" id="MakeGraphCallSnippet":::

1. Replace the empty `makeGraphCallAsync` function in **index.ts** with the following.

    :::code language="typescript" source="includes/typescript/src/user-auth/graphtutorial/index.ts" id="MakeGraphCallSnippet":::

## Choose an API

Find an API in Microsoft Graph you'd like to try. For example, the [Create event](/graph/api/user-post-events) API. You can use one of the examples in the API documentation, or you can customize an API request in Graph Explorer and use the generated snippet.

## Configure permissions

Check the **Permissions** section of the reference documentation for your chosen API to see which authentication methods are supported. Some APIs don't support app-only, or personal Microsoft accounts, for example.

- To call an API with user authentication (if the API supports user (delegated) authentication), add the required permission scope in **appSettings.ts**.
- To call an API with app-only authentication, see the [app-only authentication](typescript-app-only.md) tutorial.

## Add your code

Copy your code into the `makeGraphCallAsync` function in **graphHelper.ts**. If you're copying a snippet from documentation or Graph Explorer, be sure to rename the `client` to `_userClient`.

## Related content

Now that you have a working app that calls Microsoft Graph, you can experiment and add new features.

- Learn how to use [app-only authentication](typescript-app-only.md) with the Microsoft Graph JavaScript SDK.
- Visit the [Overview of Microsoft Graph](/graph/overview) to see all of the data you can access with Microsoft Graph.

### Microsoft Graph Toolkit

If you're building TypeScript apps with UI, the [Microsoft Graph Toolkit](/graph/toolkit/overview) offers a collection of components that can simplify development.

### TypeScript/JavaScript samples

- [Angular single-page app](https://github.com/microsoftgraph/msgraph-training-angularspa)
- [React single-page app](https://github.com/microsoftgraph/msgraph-training-reactspa)
- [React Native mobile app](https://github.com/microsoftgraph/msgraph-training-react-native)
- [JavaScript single-page app](https://github.com/microsoftgraph/msgraph-training-javascriptspa)
- [Node.js Express web app](https://github.com/microsoftgraph/msgraph-training-nodeexpressapp)
- [Office add-in](https://github.com/microsoftgraph/msgraph-training-office-addin)
- [SharePoint Framework app](https://github.com/microsoftgraph/msgraph-training-spfx)
- [Change notifications](https://github.com/microsoftgraph/nodejs-webhooks-sample)
