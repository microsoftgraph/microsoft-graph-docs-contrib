---

title: "Use Graph Explorer to try Microsoft Graph APIs"
description: "Graph Explorer features documentation"
localization_priority: Normal
author: bengugi

---
## Consenting to permissions in Graph Explorer

The user or administrator must grant Microsoft Graph Explorer the correct permissions via a consent process to access data in Microsoft Graph.  You can consent to permissions in Graph Explorer either via the **Modify permissions** tab or the **Select permissions** option in the settings gear next to your profile when you’re signed in. 
The **Modify permissions** tab lists all permissions you need to run the query in the address bar. 


![modify-permissions](./images/modify-permissions.png)
1.	Select a sample query and run it.
2.	Select the Modify permissions tab.
3.	See the list of permissions required to run the query.
4.	Select the consent button next to the permission you wish to consent to. 


The **Modify  permissions** feature is currently in preview, and some queries might be missing permissions. The **Select permissions** option in the settings gear next to your profile contains the list of all available permissions. You can select the permission(s) you want and consent to them from there.

![select-permissions](./images/select-permissions.png)

1.	Go the Settings Gear and click on the Select permissions option 
2.	See the list of all the permissions in Microsoft Graph API and consent to the ones you wish in bulk.


## Get and copy the Access or Authentication token

Graph Explorer includes an Access token tab that shows your access token when you are signed in. You can copy the token if you need to use it in your favorite REST client application.
![access-token](./images/access-token.png)

1.	Navigate to the Access token tab.
2.	Copy access token.

## Get code snippets that you can use in your application.

For each query that you run in Graph Explorer, the **Code snippets** tab shows you how to implement or call the endpoint in your application in four different programming languages: C#, Java, JavaScript, and Objective C. 
![code-snippets](./images/code-snippets.png)

1.	Select a sample query.
2.	Navigate to the Code snippets tab and see the code snippets.

## Get User Interface components to aid your UI implementation.

Graph Explorer includes several features to help to make your UI implementation process easier. You can reuse these components directly in your applications.

### Microsoft Graph Toolkit integration

The [Microsoft Graph Toolkit](https://docs.microsoft.com/en-us/graph/toolkit/overview) is a collection of reusable, framework-agnostic web components and helpers for accessing and working with Microsoft Graph. The components are fully functional, with built in providers that authenticate with and fetch data from Microsoft Graph.

Graph Explorer includes queries that support Microsoft Graph Toolkit components supported. When you run those queries, you will see a blue dot on the **Toolkit component** tab, and you can get the code for that component. The following table lists the sample queries that currently support Toolkit components.

| **Graph Explorer Sample** | **Toolkit Sample iFrame URL** |
| --- | --- |
| GET my profile | [https://mgt.dev/iframe.html?id=components-mgt-person-card—person-card-hover](https://nam06.safelinks.protection.outlook.com/?url=https%3A%2F%2Fmgt.dev%2Fiframe.html%3Fid%3Dcomponents-mgt-person-card--person-card-hover&amp;data=04%7C01%7CElise.Yang%40microsoft.com%7Ca81f0f07873240d8571b08d7dac329d4%7C72f988bf86f141af91ab2d7cd011db47%7C1%7C0%7C637218404083362882%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C-1&amp;sdata=9FvGlMZNc78EE66JiY7hrusYVuGUm2NeflYlVgwTVwo%3D&amp;reserved=0) |
| GET people I work with | [https://mgt.dev/iframe.html?id=components-mgt-people—people](https://nam06.safelinks.protection.outlook.com/?url=https%3A%2F%2Fmgt.dev%2Fiframe.html%3Fid%3Dcomponents-mgt-people--people&amp;data=04%7C01%7CElise.Yang%40microsoft.com%7Ca81f0f07873240d8571b08d7dac329d4%7C72f988bf86f141af91ab2d7cd011db47%7C1%7C0%7C637218404083372878%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C-1&amp;sdata=yMF3X0M%2FmvWTUfhMdNYkG5I7fDMXpPHS6Fwea%2B3ycPs%3D&amp;reserved=0) |
| GET all my planner tasks | [https://mgt.dev/iframe.html?id=components-mgt-tasks—tasks](https://nam06.safelinks.protection.outlook.com/?url=https%3A%2F%2Fmgt.dev%2Fiframe.html%3Fid%3Dcomponents-mgt-tasks--tasks&amp;data=04%7C01%7CElise.Yang%40microsoft.com%7Ca81f0f07873240d8571b08d7dac329d4%7C72f988bf86f141af91ab2d7cd011db47%7C1%7C0%7C637218404083382869%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C-1&amp;sdata=Vk5IhPb%2FNbni7c6bteEveIdQNn%2BPm6AchwewCJ%2Fkmzk%3D&amp;reserved=0) |
| GET my events for the next week | [https://mgt.dev/iframe.html?id=components-mgt-agenda—get-events-for-next-week](https://nam06.safelinks.protection.outlook.com/?url=https%3A%2F%2Fmgt.dev%2Fiframe.html%3Fid%3Dcomponents-mgt-agenda--get-events-for-next-week&amp;data=04%7C01%7CElise.Yang%40microsoft.com%7Ca81f0f07873240d8571b08d7dac329d4%7C72f988bf86f141af91ab2d7cd011db47%7C1%7C0%7C637218404083382869%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C-1&amp;sdata=VVFcx3gXMmg%2B%2BdQCZXjAmkCk5zKcrntK6fI35jbdN94%3D&amp;reserved=0) |
| GET my photo | [https://mgt.dev/iframe.html?id=components-mgt-person—person-photo-only](https://nam06.safelinks.protection.outlook.com/?url=https%3A%2F%2Fmgt.dev%2Fiframe.html%3Fid%3Dcomponents-mgt-person--person-photo-only&amp;data=04%7C01%7CElise.Yang%40microsoft.com%7Ca81f0f07873240d8571b08d7dac329d4%7C72f988bf86f141af91ab2d7cd011db47%7C1%7C0%7C637218404083392872%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C-1&amp;sdata=aI%2BUqciLPOxEqlIpbjT8wtWBgcaJWM6sqooRlLVspZ0%3D&amp;reserved=0) |

This list will be expanded to include more queries with time as the Microsoft Graph Toolkit team adds more capabilities to the tool. 

![graph-toolkit](./images/graph-toolkit.png)

1.	Microsoft Graph toolkit UI component.
2.	Code used to generate the toolkit component.


### Adaptive card integration

[Adaptive Cards](https://adaptivecards.io/) are platform-agnostic snippets of UI, authored in JSON, that apps and services can openly exchange. When you run a query and an adaptive card is available, you will see a blue dot on the **Adaptive cards** tab.

![adaptive-cards](./images/adaptive-cards.png)

1.	Select a sample query and run it.
2.	Navigate to the Adaptive cards tab.
3.	See the Adaptive card with the response details.

### Changing themes

You can choose the theme for Graph Explorer by selecting the **Change theme** option under the settings gear. Theme options are Light, Dark, and High contrast.

![change-theme](./images/change-theme.png)

1.	Navigate to the Settings Gear, then select the Change theme option.
2.	See the list of available themes and choose your preferred theme.  


## Storing and sharing queries

When you run queries in Graph Explorer, the queries are stored for 30 days. You can access your queries on the **History** tab in the left pane. You can run, view, delete or export the history items.

![history-items](./images/storing-and-sharing-queries.png)

1.	Export all history items in .har format.
2.	Delete all history items.
3.	View this history item.
4.	Run this query.
5.	Export this history item in .har format.
6.	Delete this history item.


To share queries that you run, click the share query button in the response pane and click **copy**. This copies a link that you can share that will allow others to see your query and the results.

![share-query](./images/share-query.png)

1.	Select Share query icon.
2.	Select the Copy button to copy the query to clipboard.


## Graph Explorer UI features

You can collapse and expand the sidebar component in Graph Explorer when you want to widen the request and response area. To collapse the sidebar component, select the hamburger icon on the top left of the sidebar.

![collapse-sidebar](./images/expand-collapse-sidebar-component.png)

1.	Expand the side bar component.
2.	Collapse the sidebar component.


You can also expand and collapse the response preview by selecting the expand arrow in the response preview window.

![collapse-response-preview](./images/expand-collapse-response-preview.png)

1.	Expand the response preview.
2.	Exit the expanded response state.

You can conveniently access the Microsoft 365 Developer Program site from the Graph Explorer UI to get a free sandbox with sample data that you can use to experiment with. Under the setting gear, select **Get a sandbox with sample data**.

![m365-program-link](./images/link-to-m365-dev-program.png)

1.	Link to Microsoft 365 Developer Program

## Next steps

Go to [Graph Explorer](https://developer.microsoft.com/en-us/graph/graph-explorer/)

Explore [Microsoft Graph Toolkit documentation](https://docs.microsoft.com/en-us/graph/toolkit/overview)

File an issue on [Graph Explorer's GitHub repo](https://github.com/microsoftgraph/microsoft-graph-explorer-v4/issues/new/choose)