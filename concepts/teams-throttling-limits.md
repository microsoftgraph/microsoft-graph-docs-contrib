---
title: "Throttling limits for Microsoft Teams APIs in Microsoft Graph"
description: "Throttling limits the number of concurrent calls to a service to prevent overuse of resources. Microsoft Graph is designed to handle a high volume of requests. If an overwhelming number of requests occurs, throttling helps maintain optimal performance and reliability of the Microsoft Graph service."
localization_priority: Priority
author: "nkramer"
---

# Throttling limits for Microsoft Teams APIs in Microsoft Graph

Throttling limits the number of concurrent calls to a service to prevent overuse of resources. 
Microsoft Graph is designed to handle a high volume of requests. 
If an overwhelming number of requests occurs, throttling helps maintain optimal performance and reliability of the Microsoft Graph service.

>[!NOTE]
>All limits are subject to change without notice. There may also be undocumented limits – while we have tried to document the most important limits, an exhaustive list of all possible limits is beyond the scope of this document.

## Polling

If your app polls to see whether a resource has changed, you may only do that once per day. 
(except for [teamsAsyncOperation](/api/resources/teamsasyncoperation), that's intended to be polled frequently) 
If you need to hear about changes more frequently than that, you should [create a subscription](/api/subscription-post-subscriptions?view=graph-rest-beta) to that resource and receive change notifications (webhooks). 
If we don't support the type of subscription you need, we apologize for not supporting your scenario, and encourage you to send that feedback in [UserVoice](https://microsoftgraph.uservoice.com/forums/920506-microsoft-graph-feature-requests?category_id=359626). 

When polling for new messages, you must specify a date range where supported, 
see [get channel messages delta](/graph/api/chatmessage-delta?view=graph-rest-beta) for details.

Polling is GETting a resource over and over again to see if it's changed. 
You are allowed to GET the same resource multiple times a day as long as it's not polling. 
For example, it is okay to GET /me/joinedTeams every time the user visits/refreshes your webpage, 
but it is not okay to GET /me/joinedTeams in a loop every 30 seconds to refresh that webpage.

Apps that violate these terms of use may be subject to additional throttling or suspended entirely.

## Throttling limits

See [Microsoft Graph throttling guidance](throttling.md) for guidance on how to handle 429 responses.

### General APIs

| Teams request type                                   | Limit      |
|-------------------------------------------|------------|
| Graph API calls for an app/tenant         | 15000 requests every 10 seconds |
| GET request for resources (except messages) |60 rps per app per tenant, 600 rps per app across all tenants |
| GET /teams/```{team-id}```|  30 rps per app per tenant |
| PATCH/DELETE /teams/```{team-id}```|  15 rps per app per tenant |
| POST /teams/```{team-id}```, PUT /groups/```{team-id}```/team | 6 rps per app per tenant |

A maximum of 4 requests per second per app can be issued on a given team or channel.

### Messaging APIs

| Teams request type                  | Limit   |
|---------------------------|-------------|
| GET messaging for an app/tenant | 5 requests/second |
| POST messaging for an app/tenant | 2 requests/second |
| POST channel messages for a tenant | 5000 messages/day per channel |
| POST channel messages for a user | 3000 messages/day per channel |

The following scenarios are not supported:
- Using Teams as a log file. When your app sends a message, you should expect a person to read it.
- Migrating messages from other messaging products or installations. The [Send message](/api/channel-post-messages?view=graph-rest-beta) API does not have the throughput necessary for a typical migration, and we are unable to adjust limits to assist migrations.

## Microsoft Teams limits

See https://docs.microsoft.com/en-us/microsoftteams/limits-specifications-teams

## Group limits

The following limits apply to Office 365 Groups:

| Maximum                          | Value      |
|----------------------------------|------------|
| Owners per group                 | 100 |
| Groups a user can create         | 250 |
| Groups an admin can create       | Up to default tenant limit of 500K  |
| Number of members                |More than 1,000, though only 1,000 can access the Group conversations concurrently. Users might notice delays when accessing the calendar and conversations in very large groups in Outlook.|
| Number of Groups a user can be a member of             |  1,000   |
| File storage|  1 Terabyte + 10 GB per subscribed user + any additional storage purchased. You can purchase an unlimited amount of additional storage.|
| Group Mailbox size |  50 GB|

Please refer to [Overview of Office 365 Groups for administrators](/office365/admin/create-groups/office-365-groups?view=o365-worldwide) for more information.

## Azure AD service limits and restrictions

A maximum of 50,000 Azure AD resources can be created in a single directory by users of the free edition of Azure Active Directory by default. If you have at least one verified domain, the default directory service quota in Azure AD is extended to 300,000 Azure AD resources.

A non-admin user can create maximum 250 Azure AD resources. Both active resources and deleted resources that are available to restore, count toward this quota. Only deleted Azure AD resources that were deleted fewer than 30 days ago are available to restore. Deleted Azure AD resources that are no longer available to restore count toward this quota at a value of one-quarter for 30 days. If you have developers who are likely to repeatedly exceed this quota in the course of their regular duties, you can [create and assign a custom role](/azure/active-directory/users-groups-roles/roles-quickstart-app-registration-limits) with permission to create a limitless number of app registrations.

Please refer to [Azure AD service limits and restrictions](/azure/active-directory/users-groups-roles/directory-service-limits-restrictions) for more details.

## See also
- [SharePoint online limits](/office365/servicedescriptions/sharepoint-online-service-description/sharepoint-online-limits)
- [Software boundaries and limits for SharePoint Servers 2016 and 2019.](/sharepoint/install/software-boundaries-and-limits-0)
