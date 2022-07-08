---

title: "Work with Graph Explorer"
description: "Use Graph Explorer to make Microsoft Graph REST API requests and view corresponding responses. Learn how to use some of the important features in Graph Explorer."
ms.localizationpriority: high
author: RabebOthmani

---

# Work with Graph Explorer

[Graph Explorer](https://developer.microsoft.com/graph/graph-explorer/) is a developer tool that lets you learn about Microsoft Graph APIs. It has a variety of features to help you on your journey. This article describes Graph Explorer's main interface areas and how to use some of the important features.

For an overview, see [Use Graph Explorer to try Microsoft Graph APIs](/graph/graph-explorer/graph-explorer-overview).

## Header 

The header allows you to sign in, view the tenant you are using and access your settings, helpful links and the survey to provide feedback for the tool. 

![Screenshot of Graph Explorer header](./images/header-screenshot.png)

* <b>The avatar</b> : sign in, view your profile, consent to permissions, switch accounts or sign out of your account. For more on consenting to permissions, see [Consent to permissions](#consent-to-permissions)
* <b>Feedback</b> : If you wish to provide feedback, you can fill in the survey form. 
* <b>Help</b> : Access useful links such as the documentation or the GitHub repo for Graph Explorer
* <b>Settings</b> : Access Graph Explorer settings to change the interface theme or to get a free instant sandbox preconfigured with sample data packs
* <b>Tenant</b> : View the tenant you are currently using. 

### Consent to permissions

The user or administrator must grant Graph Explorer the correct permissions by using a consent process to access data in Microsoft Graph. You can consent to permissions in Graph Explorer by choosing either the **Modify permissions** tab or the **Consent to permissions** option under the profile avatar when you’re signed in. The **Modify permissions** tab lists all the permissions that you need to run the query in the address bar. 

To consent to permissions:

1. Select a sample query and run it.
2. Select the **Modify permissions** tab.
3. See the list of permissions required to run the query.
4. Select the **Consent** button next to the permission that you want to consent to.

![Screenshot of Graph Explorer with the steps to consent to permissions highlighted](./images/modify-permissions-screenshot.png)

The **Modify  permissions** feature is currently in preview, and some queries might be missing permissions. If permissions are missing for a query, the **Consent to permissions** option in the avatar gear contains the list of all available permissions:

1. Go the avatar gear and choose the **Consent to permissions** option. This option contains the list of all available permissions.
2. From the list of all the permissions, consent to the ones you want.

![Screenshot of Graph Explorer with the Select permissions option highlighted](./images/consent-permissions.png)

## Sidebar
The sidebar allows you to access the main features of Graph Explorer: 
* [Sample queries](#get-started-with-microsoft-graph-apis)
* [Resources](#explore-all-of-the-microsoft-graph-resources)
* [History](#store-and-share-queries)

### Get started with Microsoft Graph APIs 

To get started with Microsoft Graph and get yourself familiar with using Graph Explorer, the **Sample queries** feature provides a set of queries categorized by service that you can select and run. 

![Screenshot of the sample queries tab](./images/sample-queries-screenshot.png)

The query box will be populated by the selected query. You can then make the request by clicking the Run query button. 

### Explore all of the Microsoft Graph resources

The Resources feature allows you to explore the resources on Microsoft Graph in their entirety, on both v1.0 and beta versions . Navigate the tree to view a specific resource or alternatively, you can search for it. 

![Screenshot of the resources tab](./images/resources-tab-screenshot.png)

With Resources Explorer, you can export a collection of resources you are interested in, into a Postman collection:
1. From the kebab menu next to the resource, select **Add to collection**
2. Once you complete adding resources, click on the **Preview collection** button
3. From the collection view, you can review the resources, remove any if you chose to.
4. Click on the **Download Postman collection** to download your collection.

![Screenshot of the preview collection screen](./images/download-collection-screenshot.png)

### Store and share queries

Queries that are run in Graph Explorer are saved for 30 days on the **History** tab. On the **History** tab, you can:

1. Export all history items in `.har` format.
2. Delete all history items.
3. View a history item.
4. Run a query.
5. Export a history item in `.har` format.
6. Delete a history item.

![Screenshot of the History tab](./images/history-tab-screenshot.png)

To share queries that you run, select the **Share** button situated next to the Run query button, and then select **Copy**. This copies a link to share that allows others to see your query and the results.

![Screenshot of Graph Explorer with the Share and Copy options highlighted](./images/share-query-screenshot.png)

## Main work area 

This area is where you will be spending most of your time on Graph Explorer. 
This area has everything you need to run a request:
* **Query box**: you can manually build your query.
* **HTTP verbs**: a dropdown list of the HTTP methods.
* **API version**: a dropdown list of the API versions available publicly. 
* **Modify permissions**: you need to consent to the right permissions to be able to run a query. Read more about [consenting to permissions](#consent-to-permissions).
* **Access token**: this tab shows your access token when you're signed in. You can copy the token if you need to use it in your favorite REST client application.
 
 ![Screenshot of Graph Explorer highlighting the main work area](./images/run-query-tabs-screenshot.png)


This is also where you see: 
* **Response preview**: You can see the response body here. 
* **Response headers**: You can see the response headers here. 

On top of query related features, the main work area also contains:
* [Microsoft Graph Toolkit Adaptive cards integration](#microsoft-graph-toolkit-integration)
* [Adaptive cards integration](#adaptive-cards-integration)
* [Code snippets](#leverage-the-power-of-the-client-libraries)

### Microsoft Graph Toolkit integration

The [Microsoft Graph Toolkit](../toolkit/overview.md) is a collection of reusable, framework-agnostic web components and helpers for accessing and working with Microsoft Graph. The components are fully functional, with built-in providers that authenticate with and fetch data from Microsoft Graph.

Graph Explorer allows you to see Microsoft Graph Toolkit components that correspond to the API queries. A blue dot on the **Toolkit component** tab indicates that the Toolkit provides a component for the currently specified REST API query in Graph Explorer. You can conveniently copy the code for the component to your app.


![Screenshot showing the Toolkit components tab](./images/toolkit-screenshot.png)

### Adaptive cards integration

[Adaptive cards](https://adaptivecards.io/) are platform-agnostic snippets of UI, authored in JSON, that apps and services can openly exchange. When you run a query and an adaptive card is available, a blue dot appears on the **Adaptive cards** tab.

![Screenshot of the adaptive cards tab in Graph Explorer with the response details highlighted](./images/adaptive-cards-screenshot.png)

### Leverage the power of the client libraries

For each REST API query that you select or enter in Graph Explorer, you can find how to make that call in each of the supported languages: C#, Java, JavaScript, Go and PowerShell.

![Screenshot of Graph Explorer with the code snippets tab highlighted](./images/code-snippets-screenshot.png)


## Next steps

- Visit [Graph Explorer](https://developer.microsoft.com/graph/graph-explorer/) and start learning about Microsoft Graph.
- Explore the [Microsoft Graph Toolkit documentation](../toolkit/overview.md).
- Contribute or provide feedback in the [Graph Explorer GitHub repo](https://github.com/microsoftgraph/microsoft-graph-explorer-v4/issues/new/choose).
