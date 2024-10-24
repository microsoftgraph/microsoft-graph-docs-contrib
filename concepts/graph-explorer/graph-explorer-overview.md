---
title: Use Graph Explorer to try Microsoft Graph APIs
description: Try Microsoft Graph APIs on the default sample tenant to explore capabilities, or sign in to your tenant and use it as a prototyping tool to fulfill your app scenarios.
ms.localizationpriority: high
author: wujessica
---

# Use Graph Explorer to try Microsoft Graph APIs

[Graph Explorer](https://developer.microsoft.com/graph/graph-explorer/) is a developer tool for exploring Microsoft Graph APIs. Use it to:

- Test APIs on a sample tenant and explore available resources.
- Sign in to your own tenant for prototyping app scenarios.
- Learn about the permissions required for different APIs.
- Explore Microsoft Graph Toolkit components, adaptive cards, and code snippets for queries.

## Getting started

Here’s a step-by-step tutorial for using Graph Explorer.

### Step 1: Access Graph Explorer

- Go to [Graph Explorer](https://developer.microsoft.com/graph/graph-explorer/).

### Step 2: Explore a sample query

1. On the left sidebar, you see a list of sample queries. These are prebuilt queries that you can run to see how the API works.
1. Select any sample query, such as "Get my profile," to see the request and response.

:::image type="content" source="./images/GE-tutorial-step2-explore-sample-query.png" alt-text="Screenshot of the Graph Explorer user interface, which displays the returned results of the GET my profile query." border="true":::

### Step 3: Sign In for more features

1. You can use Graph Explorer without signing in, but signing in allows you to access your own tenant and perform more advanced operations.
1. To try POST, PUT, PATCH, and DELETE requests, sign in with your Microsoft 365 account.
1. We recommend signing into your [M365 Developer sandbox tenant](https://developer.microsoft.com/en-US/microsoft-365/dev-program) to avoid any operations that may potentially alter your production data.

> [!IMPORTANT]
> If you choose to sign in with your organizational account, running a non-GET request might affect the data in the tenant.

### Step 4: Run your first query

1. Select a sample query or type your own query in the request field.
1. Edit the request body, request headers as needed for the query.
For example, to run a Post request, select POST in the drop-down list for the HTTP verb, and add a request body and request headers as appropriate.
1. Select **Run query**.
1. The response is displayed in the Response preview section. It includes the HTTP status code and the data returned by the API.
1. Next to the Response preview tab, you can also view the Response headers, Code snippets, Toolkit component, and Adaptive cards relevant to the query.  

:::image type="content" source="./images/GE-tutorial-step4-run-query.png" alt-text="Screenshot of the Graph Explorer running the POST create a new application query." border="true":::

### Step 5: Modify permissions

1. Some queries require specific permissions. If a query fails due to insufficient permissions, you see an error message.
1. Select the **Modify permissions** tab to consent to the required permissions.
1. After consenting, run the query again.
1. You can also select on the profile avatar and choose Consent to permissions. From the list of all available permissions, consent to the ones you want.

:::image type="content" source="./images/GE-tutorial-step5-modify-permissions.png" alt-text="Screenshot of the Graph Explorer interface, specifically the Modify permissions tab." border="true":::

## Finding the right API for your application

Use the **Resources** tab and the documentation feature to find the right API for your application.

### Resources

Use the **Resources** tab to explore Microsoft Graph resources in the beta and v1.0 endpoints by browsing the list of resources or use the search bar to search for a specific resource.

You can also select specific queries to add to your collection. When you're finished adding resources, choose **Preview collection**. From the collection view, you can review, remove, and download the resources you selected.

:::image type="content" source="./images/GE-tutorial-resources.png" alt-text="On the left is a screenshot of the Resources tab in Graph Explorer. The right side displays the Preview collection panel. " border="true":::

### Documentation

Select **Documentation** on each query to learn more about the API endpoint. The relevant API Reference provides more information about the request parameters, response structure, and required permissions.

## Integrate Microsoft Graph into your application

Use the following features in Graph Explorer to integrate Microsoft Graph APIs into your application.

### Code snippets

After running a query, select on the Code snippets tab to see how to perform the same operation in your preferred language (C#, JavaScript, Java, Go, PowerShell).

:::image type="content" source="./images/GE-tutorial-code-snippets.png" alt-text="Screenshot of the code snippets tab in Graph Explorer." border="true":::

### Toolkit component

[The Microsoft Graph Toolkit](../toolkit/overview.md) provides reusable, framework-agnostic web components, and helpers that have built-in providers that authenticate with and fetch data from Microsoft Graph.  

The toolkit component in Graph Explorer allows you to visualize Microsoft Graph Toolkit components that correspond to the API queries. A blue dot on the toolkit component tab indicates an available component for the currently specified REST API query. You can conveniently copy the code for the component to your app.

:::image type="content" source="./images/toolkit-screenshot.png" alt-text="Screenshot of the Microsoft Graph Toolkit tab in Graph Explorer." border="false":::

### Adaptive cards

[Adaptive cards](https://adaptivecards.io/) provide platform-agnostic snippets of UI, authored in JSON, that apps and services can openly exchange. A blue dot on the adaptive cards tab indicates that an adaptive card is available for the selected query.

:::image type="content" source="./images/adaptive-cards-screenshot.png" alt-text="Screenshot of the adaptive cards tab in Graph Explorer with the response details highlighted." border="false":::

## Other tools and resources in Graph Explorer

### History

Select **History** to access and export queries run over the past 30 days.

:::image type="content" source="./images/history-tab-screenshot.png" alt-text="Screenshot of history tab.":::

### Settings

You can customize the Graph Explorer interface by using the settings icon at the top right. You can also collapse or expand the sidebar by dragging the sidebar.

### Share  

To share your current query, select **Share** so people can try out the specific query in Graph Explorer.

## Next steps

- Try [Graph Explorer](https://developer.microsoft.com/graph/graph-explorer/).
- Explore the different [Graph Explorer features](./graph-explorer-features.md).
- Contribute or provide feedback on [GitHub](https://github.com/microsoftgraph/microsoft-graph-explorer-v4/issues/new/choose).
