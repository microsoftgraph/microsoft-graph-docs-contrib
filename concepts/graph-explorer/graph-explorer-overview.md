---
title: Use Graph Explorer to try Microsoft Graph APIs
description: Try Microsoft Graph APIs on the default sample tenant to explore capabilities, or sign in to your tenant and use it as a prototyping tool to fulfill your app scenarios.
ms.localizationpriority: high
author: RabebOthmani
---

# Use Graph Explorer to try Microsoft Graph APIs

[Graph Explorer](https://developer.microsoft.com/graph/graph-explorer/) is a developer tool that lets you learn about Microsoft Graph APIs. Use Graph Explorer to try the APIs on the default sample tenant to explore capabilities, or sign in to your own tenant and use it as a prototyping tool to fulfill your app scenarios. This tool includes helpful features such as code snippets (C#, Java, JavaScript, Go and PowerShell), Microsoft Graph Toolkit and adaptive cards integration, and more.

:::image type="content" source="./images/graph-explorer-screen.png" alt-text="Screenshot of the Graph Explorer user interface." border="true":::

Use Graph Explorer to:

- Try out Microsoft Graph APIs.
- Learn about the permissions required for the different APIs.
- Explore all the resources available on Microsoft Graph.
- Explore Microsoft Graph Toolkit components, adaptive cards and code snippets for your queries.

Graph Explorer handles the authentication process for you. Customize the experience by collapsing the sidebar or changing the theme.

## Get started

Graph Explorer is a web application hosted on the [Microsoft Graph developer center](https://developer.microsoft.com/graph). It's an open-source project, and we welcome your contributions and feedback on [GitHub](https://github.com/microsoftgraph/microsoft-graph-explorer-v4).

### Make requests

With Graph Explorer, you can make requests to the Microsoft Graph APIs to retrieve, add, delete and update data. Your requests can send parameters, authorization details, and any body data you require.

:::image type="content" source="./images/request-headers.png" alt-text="Screenshot of request headers in Graph Explorer." border="true":::

## Retrieve data in Graph Explorer

To run a GET request in Graph Explorer, you don't have to sign in. You can retrieve sample data from the default sample tenant.

:::image type="content" source="./images/get-request.png" alt-text="Screenshot of a sample request in Graph Explorer." border="true":::

To create the request, you can either select a sample query from the menu at the left, which fills in the query field, or you can choose to manually type your request in the field.
Once you run the request, you will get the HTTP response code and the response will be displayed in the response preview area.

When you sign in to Graph Explorer and run the same query, the response is returned with real data from the tenant that you signed in to.

## Modify data in Graph Explorer

To try POST, PUT, PATCH, and DELETE requests, sign in to Graph Explorer by using a Microsoft 365 account. This can be an organizational account for testing or demonstration purposes. To get a free instant sandbox preconfigured with sample data packs to test with, join the [Microsoft 365 Developer Program](https://developer.microsoft.com/microsoft-365/dev-program).

> [!IMPORTANT]
> If you choose to sign in by using your organizational account, running a non-GET request might affect the data in the tenant.

For example, to run a POST request, select POST in the drop-down list for the HTTP verb, and add a request body and request headers as appropriate.

:::image type="content" source="./images/post-request.png" alt-text="Screenshot of a POST request in Graph Explorer." border="true":::

## Next steps

- Try [Graph Explorer](https://developer.microsoft.com/graph/graph-explorer/).
- Explore the different [Graph Explorer features](./graph-explorer-features.md).
- Contribute or provide feedback on [GitHub](https://github.com/microsoftgraph/microsoft-graph-explorer-v4/issues/new/choose).
