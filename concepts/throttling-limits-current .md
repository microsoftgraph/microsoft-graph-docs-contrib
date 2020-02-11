---
title: "Microsoft Graph throttling limits and boundaries"
description: "Throttling limits the number of concurrent calls to a service to prevent overuse of resources. Microsoft Graph is designed to handle a high volume of requests. If an overwhelming number of requests occurs, throttling helps maintain optimal performance and reliability of the Microsoft Graph service."
author: "v-romad"
localization_priority: Priority
---

# Microsoft Teams Graph API limits and boundaries
Microsoft Graph is designed to handle a high volume of requests to a service. To prevent an overwhelming requests, Microsoft Graph has restricted the client request submission from throttling to within specified range and limits.

Following are the current throttling limits:
 
> [!Note]
> The specific limits described here are subject to change.

##### Generic limits:
| Teams request type                                   | Value      |
|-------------------------------------------|------------|
| Graph API calls for an app/tenant         | 15000 requests/10 seconds |
| GET request for resources (except messages) |60 rps/app/tenant, 600 rps/app/all tenants |
| GET /teams/```{team-id}```|  30 rps |
| POST/PUT/PATCH/DELETE /teams/```{team-id}```|  15 rps |
| POST /teams/```{team-id}``` | 6 rps |

##### Messaging limits:

| Teams request type                  | Value   |
|---------------------------|-------------|
| GET messaging for an app/tenant | 5 requests/second |
| POST messaging for an app/tenant | 2 requests/second |
| Post channel messages for a tenant | 5000 messages/day per channel |
| Post channel messages for a user | 3000 messages/day per channel |


> !Note There may be additional limits we have not documented, think of this as the maximum your app might be able to do rather than a guarantee of what your app can do. 

##### Group limits:

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

Please refer to [Overview of Office 365 Groups for administrators](https://docs.microsoft.com/en-us/office365/admin/create-groups/office-365-groups?view=o365-worldwide)

 
<!--If you exceed your limit you'll get an error code 429. Please do exponential back off, because if you've exceeded your limit for the day, it'll be more than a few seconds before you can do it again.-->
When throttling occurs, Microsoft Graph returns HTTP status code 429 (Too many requests) including the `Retry-After` response header, and the requests fail. To recover from throttling, back off the request using the `Retry-After` delay because Microsoft Graph continues to log resource usage while a client is being throttled.
 
#### Scenarios that are explicitly not supported:
- Using Teams as a log file. When you send a message, you should expect a person to read it.
- Migrating messages from other messaging products or installations. We will not extend your limits.


#### Azure AD service limits and restrictions

A maximum of 50,000 Azure AD resources can be created in a single directory by users of the free edition of Azure Active Directory by default. If you have at least one verified domain, the default directory service quota in Azure AD is extended to 300,000 Azure AD resources.

A non-admin user can create maximum 250 Azure AD resources. Both active resources and deleted resources that are available to restore, count toward this quota. Only deleted Azure AD resources that were deleted fewer than 30 days ago are available to restore. Deleted Azure AD resources that are no longer available to restore count toward this quota at a value of one-quarter for 30 days. If you have developers who are likely to repeatedly exceed this quota in the course of their regular duties, you can [create and assign a custom role](/azure/active-directory/users-groups-roles/roles-quickstart-app-registration-limits) with permission to create a limitless number of app registrations.

Please refer to [Azure AD service limits and restrictions](/azure/active-directory/users-groups-roles/directory-service-limits-restrictions)

See also [SharePoint online limits](/office365/servicedescriptions/sharepoint-online-service-description/sharepoint-online-limits)
and [Software boundaries and limits for SharePoint Servers 2016 and 2019](/sharepoint/install/software-boundaries-and-limits-0)


For internal usage, please refer: [Teams Graph throttling Limits](https://microsoft.sharepoint.com/teams/ExtensibilityandFundamentals/_layouts/15/Doc.aspx?sourcedoc=%7BC4AC7B5C-0435-437E-BFD3-190E9BC71227%7D&file=TeamsGraphThrottlingLimits.xlsx&action=default&mobileredirect=true)