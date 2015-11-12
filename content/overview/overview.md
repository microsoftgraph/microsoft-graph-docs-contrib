

# Microsoft Graph API overview 

>  Your feedback is important to us. Connect with us on [Stack Overflow](http://stackoverflow.com/questions/tagged/office365). Tag your questions with [MicrosoftGraph] and [office365].

<!--**In this article**
  
-	[Overview of Microsoft Graph API](#msg_what_is_unified_api) 
-	[Common Queries](#msg_queries) 
-	[All Office 365 data under one roof](#msg_eoof) 
-	[Learn more about  Microsoft Graph API development](#msg_how_learn_unified_api) 

<a name="msg_what_is_unified_api"> </a>-->

## Overview of Microsoft Graph API

Microsoft Graph (previously called Office 365 unified API) exposes multiple APIs from Microsoft cloud services through a single REST API endpoint (**https://graph.microsoft.com**). Using the Microsoft Graph API, you can turn your formerly difficult or complex queries into simple navigations. 
 
The API gives you:

- A unified developer experience to access services across Office 365 and Microsoft data
- Seamless navigation between entities and and the relationships among them 
- Aggregated data from multiple services in a single response
- One token to access all resources

You can use the API to access fixed entities like users, groups, mail, messages, calendars, tasks, notes coming from services like Outlook, OneDrive, Azure Active Directory, Planner, OneNote and others. You can also obtain calculated relationships powered by the Office Graph (only for commercial users) like the list of users you are working with or the documents trending around you.

<!--<a name="msg_queries"> </a>-->

##Common Queries

The following are some exqmples of common queries using Microsoft Graph API.

| **Operation**	| **Service endpoint** |
|:--------------------------|:----------------------------------------|
|   GET my profile |	`https://graph.microsoft.com/v1.0/me` |
|   GET my files|	`https://graph.microsoft.com/v1.0/me/drive/root/children` |
|   GET my photo	 | `https://graph.microsoft.com/v1.0/me/userPhoto/$value` |
|   GET my mail |	`https://graph.microsoft.com/v1.0/me/messages` |
|   GET my manager	| `https://graph.microsoft.com/v1.0/me/manager` |
|   GET last user to modify file x |	`https://graph.microsoft.com/v1.0/me/drive/root/items/<fileX-id>/lastModifiedByUsere` |
|   GET unified groups I’m member of|	`https://graph.microsoft.com/v1.0/me/joinedGroups` |
|   GET users in my organization	 | `https://graph.microsoft.com/v1.0/users` |
|   GET group Y conversations |	`https://graph.microsoft.com/v1.0/groups/<groupY-id>/conversations` |
|   GET my tasks	| `https://graph.microsoft.com/beta/me/tasks` |
|   GET my notes |	`https://graph.microsoft.com/beta/me/notes` |
|   GET files trending around me|	`https://graph.microsoft.com/beta/me/trendingAround` |
|   GET people I am working with	 | `https://graph.microsoft.com/beta/me/workingWith` |


<!-- <a name="msg_roof"> </a> -->

## All Office 365 data under one roof

<!-- 
It takes information that is stored or inferred across multiple cloud services: 
-	exposing them through one REST URL namespace. The unifying URL namespace is _https://_**graph.microsoft.com**
-	using one authentication and authorization system
-	using a consistent and unified metadata, payload format, error handling, library, and more

through one REST URL namespace (https://graph.microsoft.com), using one authentication and authorization system, and using a consistent and unified metadata, payload format, error handling, library, and more.  -->

<!-- 

## Calling Office 365 APIs vs Microsoft Graph API

Let's say you want to programmatically retrieve a user's files, profile picture, and find the manager of the person who last edited that file in your organization. Because the information is stored in  multiple services-Azure Active Directory, SharePoint, and Exchange-the task involves multiple steps using Office 365 APIs: 

1. Use the Discovery Service to find the various service endpoints 
2. Determine the URL of the services your Office 365 apps want to connect to
3. Then acquire and manage the access token for each service and make the request to the service directly

Now, you can use the use Microsoft Graph API to perform the same complex operation via a single REST API endpoint. You don't have to discover and navigate a different endpoint for each service, acquire and manage separate access token for each service, deal with siloed services and varying data model. -->

<!--discover and navigate a different endpoint for each service
-	acquire and manage separate access token for each service
-	deal with siloed services and varying data model.  Currently each service defines entities independent of each other -->

The following diagram shows the Microsoft Graph API developer stack and how it works.

![Microsoft Graph API developer stack.](./images/MicrosoftGraph_DevStack.png)


<!--<a name="msg_how_learn_unified_api"> </a> 
## Learn more about Microsoft Graph API development

The following resources can help you get started:

**Develop an app using Microsoft Graph API**

-  [Get started with the Microsoft Graph API](\microsoft-graph-api-FAQs.md) 
-  [Microsoft Graph API FAQs](\microsoft-graph-api-FAQs.md) 
-  [Authorization Code Grant Flow](https://msdn.microsoft.com/en-us/library/azure/dn645542.aspx)

<!--
-  [Get started with the Office 365 unified API (preview)](..\howto\get-started-with-office-365-unified-api.md) 
-  [Office 365 unified API in depth (preview)](..\howto\office-365-unified-api-in-depth.md) 
-  [Examples of Office 365 unified API calls (preview)](..\howto\examples-of-office-365-unified-api-calls.md) 
-  [Develop with the Office graph](https://msdn.microsoft.com/office/office365/howto/develop-office-graph)
-  [Cross-origin resource sharing (CORS) support](..\howto\create-web-apps-using-CORS-to-access-files-in-Office-365.md) 

 
**Tools to ty out and explore the Microsoft Graph API**

-  [Microsoft Graph API Explorer](https://graphexplorer2.azurewebsites.net/) 
-  [API Sandbox](http://apisandbox.msdn.com)

**Hands on lab**

-  [Deep dive into the Microsoft Graph API](http://dev.office.com/hands-on-labs/4585)

**Code samples**

-  [Code samples page]



**Release notes and known issues for Microsoft Graph API**

-  [Microsoft Graph API release notes for November 2015](\microsoft-graph-api-release-notes-known-issues.md)

**Reference**

- [Microsoft Graph API v1.0 reference]
- [Microsoft Graph API beta reference]

**Client libraries** 

-  [Android](https://github.com/OfficeDev/Office-365-SDK-for-Android)
-  [iOS](https://github.com/OfficeDev/Office-365-SDK-for-iOS)
-  [.NET library](https://www.nuget.org/packages/Microsoft.Graph) -->
  




