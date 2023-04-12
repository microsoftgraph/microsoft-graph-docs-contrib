---
title: "Microsoft Graph service-specific throttling limits"
description: "Identify the throttling limits for each Microsoft Graph service to apply best practices to manage throttling in your application."
author: "FaithOmbongi"
ms.author: ombongifaith
ms.reviewer: jameskitindi
ms.localizationpriority: high
ms.custom: graphiamtop20
---

# Microsoft Graph service-specific throttling limits

Microsoft Graph allows you to access data in [multiple services](overview-major-services.md), such as Outlook or Azure Active Directory. These services impose their own throttling limits that affect applications that use Microsoft Graph to access them.

Any request can be evaluated against multiple limits, depending on the scope of the limit (per app across all tenants, per tenant for all apps, per app per tenant, and so on), the request type (GET, POST, PATCH, and so on), and other factors. The first limit to be reached triggers throttling behavior. In addition to the service specific-limits described in the section, the following global limits apply:

| Request type | Per app across all tenants  |
| ------------ | ------------------------ |
| Any          | 2000 requests per second |

> [!NOTE]
> The specific limits described here are subject to change.
>
> In this section, the term *tenant* refers to the Microsoft 365 organization where the application is installed. This tenant can be the same as the one where the application was created in the case of a single-tenant application, or it can be different in the case of a [multi-tenant application](/azure/active-directory/develop/setup-multi-tenant-app).

## Assignment service limits

The following limits apply to requests on the assignment service API:

| Request Type                 | Limit per app per tenant     | Limit per tenant for all apps |
|---------------------------|------------------------------|----------------------------|
| Any         | 500 requests per 10 seconds   | 1000 requests per 10 seconds
|Any          | 15000 requests per 3600 seconds|30000 requests per 3600 seconds|
| GET me/Assignment  | 50 requests per 10 seconds | 150 requests per 10 seconds |

The preceding limits apply to the following resources:

- [educationAssignment](/graph/api/resources/educationassignment)
- [educationSubmission](/graph/api/resources/educationsubmission)
- [trending](/graph/api/resources/insights-trending)
- [educationResource](/graph/api/resources/educationresource)

## Cloud communication service limits

| Resource      | Limits per app    |
| -------------- | ------------ |
| [Calls](/graph/api/resources/call) | 10,000 calls/month and 100 concurrent calls   |
| [Meeting information](/graph/api/resources/meetinginfo)   | 2000 meetings/user each month |
| [Presence](/graph/api/resources/presence)   | 1500 requests in a 30 second period, per application per tenant |

### Call records limits

The limits listed in the following table apply to the following resource:

- [callRecord](/graph/api/resources/callrecords-callrecord)

| Limit type      | Limit    |
| -------------- | ------------ |
| Per tenant | 10,000 requests per 20 seconds |
| Per application per tenant  | 1,500 requests per 20 seconds |
| Per call record | 10 requests per 20 seconds (first page) <br/> 50 requests per 5 minutes (subsequent pages) |

## Excel service limits

For explanations and best practices related to Excel service throttling, see [Reduce throttling errors](workbook-best-practice.md#reduce-throttling-errors). In addition, following are some throttling limits.
  
[!INCLUDE [Excel throttling documentation](../includes/throttling-excel.md)]


## Education service limits

[!INCLUDE [Education rostering APIS throttling documentation](../includes/throttling-education-rostering-apis.md)]


## Files and lists service limits

For service limits for OneDrive, OneDrive for Business, and SharePoint Online, see [Avoid getting throttled or blocked in SharePoint Online](/sharepoint/dev/general-development/how-to-avoid-getting-throttled-or-blocked-in-sharepoint-online).

The preceding information applies to the following resources:

[!INCLUDE [Files and lists throttling documentation](../includes/throttling-files-and-lists.md)]

## Identity and access reports service limits

| Request type |  Limit per app per tenant |
| ------------ | ------------------------ |
| Any | 5 requests per 10 seconds |

The preceding limits apply to the following resources:

[!INCLUDE [Azure AD identity and access reports throttling documentation](../includes/throttling-aad-reports.md)]

### Identity and access reports best practices
Azure AD reporting APIs are throttled when Azure AD receives too many calls during a given timeframe from a tenant or app. Calls may also be throttled if the service takes too long to respond. If your requests still fail with a `429 Too Many Requests` error code despite applying the [best practices to handle throttling](throttling.md#best-practices-to-handle-throttling), try reducing the amount of data returned. Try these approaches first:
- Use filters to target your query to just the data you need. If you only need a certain type of event or a subset of users, for example, filter out other events using the `$filter` and `$select` query parameters to reduce the size of your response object and the risk of throttling.
- If you need a broad set of Azure AD reporting data, use `$filter` on the **createdDateTime** to limit the amount of sign-in events you query in a single call. Then, iterate through the next timespan until you have all the records you need. For example, if you are being throttled, you can begin with a call that requests 3 days of data and iterate with shorter timespans until your requests are no longer throttled.


## Identity and access service limits

### Pattern

Throttling is based on a token bucket algorithm, which works by adding individual costs of requests. The sum of request costs is then compared against pre-determined limits. Only the requests exceeding the limits will be throttled. If any of the limits are exceeded, the response will be `429 Too Many Requests`. It is possible to receive `429 Too Many Requests` responses even when the following limits are not reached, in situations when the services are under an important load or based on data volume for a specific tenant. The following table lists existing limits.

| Limit type | Resource unit quota | Write quota |
| ---------- | ----------- | -------------- |
| application+tenant pair | S: 3,500 requests per 10 seconds <br/> M: 5,000 requests per 10 seconds <br/> L: 8,000 requests per 10 seconds | 3,000 requests per 2 minutes and 30 seconds |
| application | 150,000 requests per 20 seconds  | 70,000 requests per 5 minutes|
| tenant | Not Applicable | 18,000 requests per 5 minutes |

> [!NOTE]
> The application + tenant pair limit varies based on the number of users in the tenant requests are run against. The tenant sizes are defined as follows: S - under 50 users, M - between 50 and 500 users, and L - above 500 users.

[!INCLUDE [Identity and access throttling documentation](../includes/throttling-identity-and-access.md)]

The following table lists base request costs. Any requests not listed have a base cost of 1.

| Operation | Request Path | Base Resource Unit Cost | Write Cost |
| --------- | ------------ | ----------------- | ------------------ |
| GET | `applications` | 2 | 0 |
| GET | `applications/{id}/extensionProperties` | 2 | 0 |
| GET | `contracts` | 3 | 0 |
| POST | `directoryObjects/getByIds` |  3 | 0 |
| GET | `domains/{id}/domainNameReferences` | 4 | 0 |
| POST | `getObjectsById` | 3 | 0 |
| GET | `groups/{id}/members` | 3 | 0 |
| GET | `groups/{id}/transitiveMembers` | 5 | 0 |
| POST | `isMemberOf` | 4 | 0 |
| POST | `me/checkMemberGroups` | 4 | 0 |
| POST | `me/checkMemberObjects` | 4 | 0 |
| POST | `me/getMemberGroups` | 2 | 0 |
| POST | `me/getMemberObjects` | 2 | 0 |
| GET | `me/licenseDetails` | 2 | 0 |
| GET | `me/memberOf` | 2 | 0 |
| GET | `me/ownedObjects` | 2 | 0 |
| GET | `me/transitiveMemberOf` | 2 | 0 |
| GET | `oauth2PermissionGrants` | 2 | 0 |
| GET | `oauth2PermissionGrants/{id}` | 2 | 0 |
| GET | `servicePrincipals/{id}/appRoleAssignments` | 2 | 0 |
| GET | `subscribedSkus` | 3 | 0 |
| GET | `users` | 2 | 0 |
| GET | Any identity path not listed in the table | 1 | 0 |
| POST | Any identity path not listed in the table | 1 | 1 |
| PATCH | Any identity path not listed in the table | 1 | 1 |
| PUT | Any identity path not listed in the table | 1 | 1 |
| DELETE | Any identity path not listed in the table | 1 | 1 |

> [!IMPORTANT]
> 
> The cost of POST, PATCH, and DELETE operations on the `applications` request path depends on the **signInAudience** type. For apps where the **signInAudience** is `AzureADMyOrg` or `AzureADMultipleOrgs`, the cost is 70,000 requests per 5 minutes; while for apps where the **signInAudience** is `AzureADandPersonalMicrosoftAccount` or `PersonalMicrosoftAccount`, the cost is 60 requests per minute.

Other factors that affect a request cost:

- Using `$select` decreases cost by 1
- Using `$expand` increases cost by 1
- Using `$top` with a value of less than 20 decreases cost by 1
- Creating a user in an Azure AD B2C tenant increases cost by 4

> [!NOTE]
> A request cost can never be lower than 1. Any request cost that applies to a request path starting with `me/` also applies to equivalent requests starting with `users/{id | userPrincipalName}/`.

### Additional headers

#### Request headers

- **x-ms-throttle-priority** - If the header doesn't exist or is set to any other value, it indicates a normal request. We recommend setting priority to `high` only for the requests initiated by the user. The values of this header can be the following:
  - Low - Indicates the request is low priority. Throttling this request doesn't cause user-visible failures.
  - Normal - Default if no value is provided. Indicates that the request is default priority.
  - High - Indicates that the request is high priority. Throttling this request causes user-visible failures.

> [!NOTE]
> Should requests be throttled, low priority requests will be throttled first, normal priority requests second, and high priority requests last. Using the priority request header does not change the limits.

#### Regular responses requests

- **x-ms-resource-unit** - Indicates the resource unit used for this request. Values are positive integers.
- **x-ms-throttle-limit-percentage** - Returned only when the application consumed more than 0.8 of its limit. The value ranges from 0.8 to 1.8 and is a percentage of the use of the limit. The value can be used by the callers to set up an alert and take action.

#### Throttled responses requests

- **x-ms-throttle-scope** - eg. `Tenant_Application/ReadWrite/9a3d526c-b3c1-4479-ba74-197b5c5751ae/0785ef7c-2d7a-4542-b048-95bcab406e0b`. Indicates the scope of throttling with the following format `<Scope>/<Limit>/<ApplicationId>/<TenantId|UserId|ResourceId>`:
  - Scope: (string, required)
    - Tenant_Application - All requests for a particular tenant for the current application.
    - Tenant - All requests for the current tenant, regardless of the application.
    - Application - All requests for the current application.
  - Limit: (string, requied)
    - Read: Read requests for the scope (GET)
    - Write: Write requests for the scope (POST, PATCH, PUT, DELETE...)
    - ReadWrite: All Requests for the scope (any)
  - ApplicationId (Guid, required)
  - TenantId|UserId|ResourceId: (Guid, required)
- **x-ms-throttle-information** - Indicates the reason for throttling and can have any value (string). The value is provided for diagnostics and troubleshooting purposes, some examples include:
  - CPULimitExceeded - Throttling is because the limit for cpu allocation is exceeded.
  - WriteLimitExceeded - Throttling is because the write limit is exceeded.
  - ResourceUnitLimitExceeded - Throttling is because the limit for the allocated resource unit is exceeded.


## Identity and access data policy operation service limits

| Request type | Limit per tenant |
| ------------ | ---------------- |
| POST on `exportPersonalData` | 1000 requests per day for any subject and 100 per subject per day |
| Any other request | 10000 requests per hour |

The preceding limits apply to the following resources:

- [dataPolicyOperation](/graph/api/resources/datapolicyoperation)

> [!NOTE]
> The resources listed earlier do not return a `Retry-After` header on `429 Too Many Requests` responses.

## Identity protection and conditional access service limits

| Request type | Limit per tenant for all apps |
| ------------ | ------- |
| Any | 1 request per second |

[!INCLUDE [Information protection throttling documentation](../includes/throttling-identityprotection-ca.md)]

> [!NOTE]
> The resources listed earlier do not return a `Retry-After` header on `429 Too Many Requests` responses.

## Identity providers service limits

[!INCLUDE [CPIM throttling documentation](../includes/throttling-cpim.md)]

## Information protection service limits

The following limits apply to any request on `/informationProtection`.

For email, the resource is a unique network message ID/recipient pair. For example, submitting an email with the same message ID sent to the same person multiple times in a 15 minute period will trigger the limit per resource limits lited in the following table. However, you can submit up to 150 unique emails every 15 minutes (tenant limit).

| Operation                 | Limit per tenant                                            | Limit per resource (email, URL, file)                |
|---------------------------|-------------------------------------------------------------|------------------------------------------------------|
| POST                      | 150 requests per 15 minutes and 10000 requests per 24 hours | 1 request per 15 minutes and 3 requests per 24 hours |

[!INCLUDE [Information protection throttling documentation](../includes/throttling-information-protection.md)]




## Insights service limits

The following limits apply to any request on `me/insights` or `users/{id}/insights`.

| Limit                                                      | Applies to      |
|------------------------------------------------------------|-----------------|
| 10,000 API requests in a 10 minute period                  | v1.0 and beta endpoints |
| 4 concurrent requests                                      | v1.0 and beta endpoints   |

The preceding limits apply to the following resources:

- [people](/graph/api/resources/insightssettings)
- [sharedInsight](/graph/api/resources/insights-shared)
- [trending](/graph/api/resources/insights-trending)
- [usedInsight](/graph/api/resources/insights-used)

## Intune service limits

[!INCLUDE [Intune  tunnel throttling documentation](../includes/throttling-intune-throttling-tunnel.md)]
[!INCLUDE [Intune android for work throttling documentation](../includes/throttling-intune-android-for-work.md)]
[!INCLUDE [Intune applications throttling documentation](../includes/throttling-intune-applications.md)]
[!INCLUDE [Intune auditing throttling documentation](../includes/throttling-intune-auditing.md)]
[!INCLUDE [Intune books throttling documentation](../includes/throttling-intune-books.md)]
[!INCLUDE [Intune bundles throttling documentation](../includes/throttling-intune-bundles.md)]
[!INCLUDE [Intune chromebook sync throttling documentation](../includes/throttling-intune-chromebook-sync.md)]
[!INCLUDE [Intune company terms throttling documentation](../includes/throttling-intune-company-terms.md)]
[!INCLUDE [Intune device config v2 throttling documentation](../includes/throttling-intune-device-config-v2.md)]
[!INCLUDE [Intune device configuration throttling documentation](../includes/throttling-intune-device-configuration.md)]
[!INCLUDE [Intune device enrollment throttling documentation](../includes/throttling-intune-device-enrollment.md)]
[!INCLUDE [Intune device intent throttling documentation](../includes/throttling-intune-device-intent.md)]
[!INCLUDE [Intune devices throttling documentation](../includes/throttling-intune-devices.md)]
[!INCLUDE [Intune endpoint protection throttling documentation](../includes/throttling-intune-endpoint-protection.md)]
[!INCLUDE [Intune enrollment throttling documentation](../includes/throttling-intune-enrollment.md)]
[!INCLUDE [Intune fencing throttling documentation](../includes/throttling-intune-fencing.md)]
[!INCLUDE [Intune GPAnalytics throttling documentation](../includes/throttling-intune-gpanalytics.md)]
[!INCLUDE [Intune managed applications throttling documentation](../includes/throttling-intune-managed-applications.md)]
[!INCLUDE [Intune notifications throttling documentation](../includes/throttling-intune-notifications.md)]
[!INCLUDE [Intune ODJ throttling documentation](../includes/throttling-intune-odj.md)]
[!INCLUDE [Intune partner integration throttling documentation](../includes/throttling-intune-partner-integration.md)]
[!INCLUDE [Intune rbac throttling documentation](../includes/throttling-intune-rbac.md)]
[!INCLUDE [Intune remote assistance throttling documentation](../includes/throttling-intune-remote-assistance.md)]
[!INCLUDE [Intune telephony throttling documentation](../includes/throttling-intune-telephony.md)]
[!INCLUDE [Intune TEM throttling documentation](../includes/throttling-intune-tem.md)]
[!INCLUDE [Intune troubleshooting throttling documentation](../includes/throttling-intune-troubleshooting.md)]
[!INCLUDE [Intune unlock throttling documentation](../includes/throttling-intune-unlock.md)]
[!INCLUDE [Intune updates throttling documentation](../includes/throttling-intune-updates.md)]
[!INCLUDE [Intune wip throttling documentation](../includes/throttling-intune-wip.md)]

## Invitation manager service limits

The following limits apply to any request on `/invitations`.

| Operation                 | Limit per tenant for all apps |
|---------------------------|------------------------------|
| Any operation             | 150 requests per 5 seconds   |


## Microsoft 365 reports service limits

The following limits apply to any request on `/reports`.

| Operation                 | Limit per app per tenant     | Limit per tenant for all apps |
|---------------------------|------------------------------|----------------------------|
| Any request (CSV)         | 14 requests per 10 minutes   | 40 requests per 10 minutes |
| Any request (JSON, beta)  | 100 requests per 10 minutes  | n/a                        |

The preceding limits apply individually to each report API. For example, a request to the Microsoft Teams user activity report API and a request to the Outlook user activity report API within 10 minutes will count as 1 request out of 14 for each API, not 2 requests out of 14 for both.

The preceding limits apply to all [usage reports](/graph/api/resources/report) resources.

## Microsoft Teams service limits

Limits are expressed as requests per second (rps).

| Teams request type                                   | Limit per app per tenant        | Limit per app across all tenants      |
|------------------------------------------------------|---------------------------------|------------|
| GET team, channel, tab, installedApps, appCatalogs   | 30 rps                          | 600 rps |
| POST/PUT channel, tab, installedApps, appCatalogs    |  30 rps                         | 300 rps  |
| PATCH team, channel, tab, installedApps, appCatalogs |  30 rps                         | 300 rps  |
| DELETE channel, tab, installedApps, appCatalogs      |  15 rps                         | 150 rps  |
| GET /teams/```{team-id}```, joinedTeams              |  30 rps                         | 300 rps  |
| POST /teams | 10 rps | 100 rps  |
| PUT /groups/```{team-id}```/team, clone | 6 rps | 150 rps  |
| GET channel message  | 20 rps | 200 rps |
| GET 1:1/group chat message  | 20 rps | 200 rps |
| POST channel message | 50 rps | 500 rps |
| POST 1:1/group chat message | 20 rps | 200 rps |
| GET /teams/```{team-id}```/schedule and all APIs under this path | 30 rps | 600 rps |
| POST, PATCH, PUT /teams/```{team-id}```/schedule and all APIs under this path | 30 rps | 300 rps |
| DELETE /teams/```{team-id}```/schedule and all APIs under this path | 15 rps | 150 rps |
| POST /teams/```{team-id}```/sendActivityNotification | 5 rps | 50 rps |
| POST /chats/```{chat-id}```/sendActivityNotification | 5 rps | 50 rps |
| POST /users/```{user-id}```/teamwork/sendActivityNotification | 5 rps | 50 rps |
|POST /teamwork/sendActivityNotificationToRecipients|2 rps|20 rps|
| GET /teams/```{team-id}```/members | 60 rps | 1200 rps |
| GET /teams/```{team-id}```/channels | 60 rps | 1200 rps |
| GET /teams/```{team-id}```/channels/```{channel-id}```/members | 60 rps | 1200 rps |
| Get all channel messages for a team<br/>GET teams/```{team-id}```/channels/getAllMessages<br/>GET teams/```{team-id}```/channels/allMessages | 200rps | 1000rps |
| Get all chat messages for a user<br/>GET users/```{user-id}```/chats/getAllMessages<br/>GET users/```{user-id}```/chats/allMessages | 200rps | 1000rps |
| Other GET API calls for Microsoft Teams              | 30 rps | 1500 rps |
| Other API calls for Microsoft Teams              | 30 rps | 300 rps |

A maximum of 4 requests per second per app can be issued on a given team or channel.
A maximum of 3000 messages per app per day can be sent to a given channel 
(except when using [migration mode](/microsoftteams/platform/graph-api/import-messages/import-external-messages-to-teams)).

See also [Microsoft Teams limits](/graph/api/resources/teams-api-overview#microsoft-teams-limits)
and [polling requirements](/graph/api/resources/teams-api-overview#polling-requirements).

[!INCLUDE [Teams throttling documentation](../includes/throttling-teams.md)]


## Multi-tenant management service limits

[!INCLUDE [Multi tenant platform throttling documentation](../includes/throttling-multi-tenant-platform.md)]

## OneNote service limits

| Limit type | Limit per app per user (delegated context) | Limit per app (app-only context) |
| ------------ | ------- | ------- |
| Requests rate | 120 requests per 1 minute and 400 per 1 hour | 240 requests per 1 minute and 800 per 1 hour |
| Concurrent requests | 5 concurrent requests | 20 concurrent requests |

The preceding limits apply to the following resources:

[!INCLUDE [Onenote throttling documentation](../includes/throttling-onenote.md)]

You can find additional information about best practices in [OneNote API throttling and how to avoid it](https://developer.microsoft.com/en-us/office/blogs/onenote-api-throttling-and-how-to-avoid-it/).

> [!NOTE]
> The resources listed earlier do not return a `Retry-After` header on `429 Too Many Requests` responses.

## Open and schema extensions service limits

| Request type | Limit per app per tenant |
| ------------ | ------------------------ |
| Any          | 455 requests per 10 seconds |

The preceding limits apply to the following resources:
[!INCLUDE [Open and schema extensions throttling documentation](../includes/throttling-extensions.md)]


## Outlook service limits

Outlook service limits are evaluated for each app ID and mailbox combination. In other words, the limits described apply to a specific app accessing a specific mailbox (user or group). If an application exceeds the limit in one mailbox, it does not affect the ability to access another mailbox. The following limits apply to the public cloud as well as [national cloud deployments](./deployments.md).

| Limit                                                      | Applies to      |
|------------------------------------------------------------|-----------------|
| 10,000 API requests in a 10 minute period                  | v1.0 and beta endpoints |
| 4 concurrent requests                                      | v1.0 and beta endpoints   |
| 15 megabytes (MB) upload (PATCH, POST, PUT) in a 30 second period | v1.0 and beta endpoints   |

### Outlook service resources

| API                                                      | Resources      |
|------------------------------------------------------------|-----------------|
| Search API (preview)                  | <li>[External item (Microsoft Search)](/graph/api/resources/externalitem) |
| Profile API                                      | <li>[Photo](/graph/api/resources/profilephoto)   |
| Calendar API | <li>[event](/graph/api/resources/event) <li> [eventMessage](/graph/api/resources/eventmessage) <li> [calendar](/graph/api/resources/calendar) <li>  [calendarGroup](/graph/api/resources/calendargroup) <li> [outlookCategory](/graph/api/resources/outlookcategory) <li> [attachment](/graph/api/resources/attachment) <li> [place (preview)](/graph/api/resources/place)   |
| Mail API                                      | <li>  [message](/graph/api/resources/message) <li> [mailFolder](/graph/api/resources/mailfolder) <li> [mailSearchFolder](/graph/api/resources/mailsearchfolder) <li> [messageRule](/graph/api/resources/messagerule) <li> [outlookCategory](/graph/api/resources/outlookcategory) <li> [attachment](/graph/api/resources/attachment)|
| Personal contacts API | <li>[contact](/graph/api/resources/contact) <li> [contactFolder](/graph/api/resources/contactfolder) <li> [outlookCategory](/graph/api/resources/outlookcategory)|
| Social and workplace intelligence | <li>[person](/graph/api/resources/person) |
| To-do tasks API (preview) | <li>[outlookTask](/graph/api/resources/outlooktask) <li> [outlookTaskFolder](/graph/api/resources/outlooktaskfolder) <li>[outlookTaskGroup](/graph/api/resources/outlooktaskgroup) <li> [outlookCategory](/graph/api/resources/outlookcategory) <li> [attachment](/graph/api/resources/attachment)|


## Project Rome service limits

| Request type | Limit per user for all apps |
| ------------ | --------------------------- |
| GET          | 400 requests per 5 minutes and 12000 requests per 1 day |
| POST, PUT, PATCH, DELETE | 100 requests per 5 minutes and 8000 requests per 1 day |

The preceding limits apply to the following resources:

- [activityHistoryItem](/graph/api/resources/projectrome-historyitem)
- [userActivity](/graph/api/resources/projectrome-activity)

## Security detections and incidents service limits

The following limits apply to any request on `/security`.

| Operation                  | Limit per app per tenant     |
|----------------------------|------------------------------|
| Any operation on `alert`, `securityActions`,  `secureScore` | 150 requests per minute      |
| Any operation on `tiIndicator` | 1000 requests per minute |
| Any operation on `secureScore` or `secureScorecontrolProfile` | 10,000 API requests in a 10 minute period |
| Any operation on `secureScore` or `secureScorecontrolProfile` | 4 concurrent requests |

## Security eDiscovery service limits

The following limits apply to any request on `/security/eDiscoveryCases`.

| Operation                  | Limit per app per tenant     |
|----------------------------|------------------------------|
| Any | 5 requests per minute |

## Service Communications service limits
The following limits apply to any type of requests for service communications under `/admin/serviceAnnouncement/`.

| Request type |  Limit per app per tenant |
| ------------ | ------------------------ |
| Any | 240 requests per 60 seconds |
|Any | 800 requests per hour |


## Skype service limits

[!INCLUDE [Skype calling throttling documentation](../includes/throttling-skype-calling.md)]

## Subscription service limits

[!INCLUDE [Subscription services throttling documentation](../includes/throttling-subscription-services.md)]

## Tasks and plans service limits

Service limits for Planner are not available.

The preceding information applies to the following resources:
[!INCLUDE [Tasks and plans throttling documentation](../includes/throttling-tasks-and-plans.md)]
