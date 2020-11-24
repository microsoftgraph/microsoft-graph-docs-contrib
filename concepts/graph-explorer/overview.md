---

title: "Use Graph Explorer to try Microsoft Graph APIs"
description: "Graph Explorer overview"
localization_priority: Normal
author: bengugi

---

# Use Graph Explorer to try Microsoft Graph APIs

[Graph Explorer](https://developer.microsoft.com/en-us/graph/graph-explorer/) is a developer tool that you can use make requests using Microsoft Graph APIs and view the responses. You can use Graph Explorer to try new APIs in a sample tenant or your own developer sandbox to explore the capabilities that you can build into your apps. This tool includes helpful features such as code snippets in C#, Java, JavaScript, and Objective C, Microsoft Graph Toolkit, and adaptive card integration, and more.

You can access the Graph Explorer web application with or without signing in. Use Graph Explorer to:

- Make requests (GET, POST, PUT, PATCH and DELETE) against Microsoft Graph APIs and see responses and response headers.
- Consent to permissions.
- Add a request body and request header to your query.
- See and copy the access token.
- See sample queries for different services in Microsoft Graph.
- See, download, or delete the queries you ran in the last 30 days.
- See and copy code snippets of each query you run on the tool in C#, Java, JavaScript, and Objective C.
- Access Microsoft Graph Toolkit components and Adaptive cards for some sample queries.
- Share queries, including the request body and request headers.

Graph Explorer handles the authentication process for you. You can also customize the experience by collapsing the sidebar and changing the theme.

## Getting started

Graph Explorer is a web application hosted on this link: [https://developer.microsoft.com/en-us/graph/graph-explorer](https://developer.microsoft.com/en-us/graph/graph-explorer). It&#39;s an open source project whose code lives in this GitHub repo: [https://github.com/microsoftgraph/microsoft-graph-explorer-v4](https://github.com/microsoftgraph/microsoft-graph-explorer-v4) and we welcome your contributions and feedback.

![getting-started](./images/getting-started.png)

1. HTTP verb dropdown list
2. API version dropdown list
3. Request query address bar
4. Sample query
5. Documentation link for the sample query

### Making a GET request on Graph Explorer.

>**NOTE :** <br>
> To run a GET request on Graph Explorer you don’t have to be logged in, just click on a sample query and you’ll get sample data in the response preview. 

![making-a-get-request](./images/making-a-get-request.png)

1. Select a sample query and run it.
2. Get the HTTP response code.
3. See the response from Graph API with sample data.

When you sign in to Graph Explorer and click the same query, the response will be returned with real data from the tenant you signed in to.

### Running non-GET requests on Graph Explorer

To try POST, PUT, PATCH and DELETE requests, you need to sign in to Graph Explorer using your Microsoft 365 account. You can use a demo account or your organizational account. To get a free sample Microsoft 365 E5 developer tenant, along with tools and other resources to help you build solutions for the Microsoft 365 platform, join the [Microsoft 365 Developer Program](https://developer.microsoft.com/en-US/microsoft-365/dev-program). The link to this program is one of the options under the Settings Gear listed as **Get a sandbox with sample data**.


>[ !IMPORTANT ] Note that if you choose to sign in using your organizational account, running the query will affect the data in your tenant.

To run a POST request for instance, change the request option to POST, and then add the request body and request headers if necessary.

![making-a-non-get-request](./images/making-a-non-get-request.png)

1. Select a POST sample query.
2. Update the Request body e.g. in this case giving the application a name then run the query.
3. See the response from Microsoft Graph API.

To view the response in a format other than the default JSON, choose the **Request headers** tab in the request pane, define the key/value pair, and click **Add**.

![request-header](./images/request-header.png)

1. Request headers tab to add key value pairs.






## Next steps

Go to [Graph Explorer](https://developer.microsoft.com/en-us/graph/graph-explorer/)

Explore [Graph Explorer features](./graph-explorer-features.md)

File an issue on [Graph Explorer's GitHub repo](https://github.com/microsoftgraph/microsoft-graph-explorer-v4/issues/new/choose)