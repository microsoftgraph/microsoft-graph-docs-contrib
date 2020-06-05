---
title: "Microsoft Graph throttling guidance"
description: "Throttling limits the number of concurrent calls to a service to prevent overuse of resources. Microsoft Graph is designed to handle a high volume of requests. If an overwhelming number of requests occurs, throttling helps maintain optimal performance and reliability of the Microsoft Graph service."
author: "baywet"
localization_priority: Priority
ms.custom: graphiamtop20
---

# Microsoft Graph throttling guidance

Throttling limits the number of concurrent calls to a service to prevent overuse of resources. Microsoft Graph is designed to handle a high volume of requests. If an overwhelming number of requests occurs, throttling helps maintain optimal performance and reliability of the Microsoft Graph service.

Throttling limits vary based on the scenario. For example, if you are performing a large volume of writes, the possibility for throttling is higher than if you are only performing reads.

<!-- markdownlint-disable MD034 -->
> [!VIDEO https://www.youtube-nocookie.com/embed/J4CFxVuzNMA]
<!-- markdownlint-enable MD034 -->

<!-- markdownlint-disable MD026 -->
## What happens when throttling occurs?
<!-- markdownlint-enable MD026 -->

When a throttling threshold is exceeded, Microsoft Graph limits any further requests from that client for a period of time. When throttling occurs, Microsoft Graph returns HTTP status code 429 (Too many requests), and the requests fail. A suggested wait time is returned in the response header of the failed request. Throttling behavior can depend on the type and number of requests. For example, if you have a high volume of requests, all requests types are throttled. Threshold limits vary based on the request type. Therefore, you could encounter a scenario where writes are throttled but reads are still permitted.

## Common throttling scenarios

The most common causes of throttling of clients include:

- A large number of requests across all applications in a tenant.
- A large number of requests from a particular application across all tenants.

## Best practices to handle throttling

The following are best practices for handling throttling:

- Reduce the number of operations per request.
- Reduce the frequency of calls.
- Avoid immediate retries, because all requests accrue against your usage limits.

When you implement error handling, use the HTTP error code 429 to detect throttling. The failed response includes the `Retry-After` response header. Backing off requests using the `Retry-After` delay is the fastest way to recover from throttling because Microsoft Graph continues to log resource usage while a client is being throttled.

1. Wait the number of seconds specified in the `Retry-After` header.
2. Retry the request.
3. If the request fails again with a 429 error code, you are still being throttled. Continue to use the recommended `Retry-After` delay and retry the request until it succeeds.

The following resources currently provide a `Retry-After` header:

- [User](/graph/api/resources/user)
- [Photo](/graph/api/resources/profilephoto)
- [Mail](/graph/api/resources/message)
- [Calendar (users and groups)](/graph/api/resources/event)
- [Contact](/graph/api/resources/contact)
- [Attachment](/graph/api/resources/attachment)
- [Group conversations](/graph/api/resources/conversation)
- [People and social](/graph/api/resources/social-overview?view=graph-rest-beta)
- [Drive (OneDrive)](/graph/api/resources/drive)
- [External item (Microsoft Search)](/graph/api/resources/externalitem?view=graph-rest-beta)
- [Directory](/graph/api/resources/directory)
- [Directory object](/graph/api/resources/directoryobject)
- [Extension property](/graph/api/resources/extensionproperty)
- [Administrative unit](/graph/api/resources/administrativeunit)
- [Application](/graph/api/resources/application)
- [Application role assignment](/graph/api/resources/approleassignment)
- [Certificate based auth configuration](/graph/api/resources/certificatebasedauthconfiguration)
- [Organizational contact](/graph/api/resources/orgcontact)
- [Device](/graph/api/resources/device)
- [Directory object partner reference](/graph/api/resources/directoryobjectpartnerreference)
- [Directory role](/graph/api/resources/directoryrole)
- [Directory role template](/graph/api/resources/directoryroletemplate)
- [Domain](/graph/api/resources/domain)
- [Domain dns record](/graph/api/resources/domaindnsrecord)
- [Domain dns cname record](/graph/api/resources/domaindnscnamerecord)
- [Domain dns mx record](/graph/api/resources/domaindnsmxrecord)
- [Domain dns srv record](/graph/api/resources/domaindnssrvrecord)
- [Domain dns txt record](/graph/api/resources/domaindnstxtrecord)
- [Domain dns unavailable record](/graph/api/resources/domaindnsunavailablerecord)
- [Endpoint](/graph/api/resources/endpoint)
- [Extension property](/graph/api/resources/extensionproperty)
- [License details](/graph/api/resources/licensedetails)
- [Group](/graph/api/resources/group)
- [Activity based timeout policy](/graph/api/resources/activitybasedtimeoutpolicy)
- [Claims mapping policy](/graph/api/resources/claimsmappingpolicy)
- [Home realm discovery policy](/graph/api/resources/homerealmdiscoverypolicy)
- [Token issuance policy](/graph/api/resources/tokenissuancepolicy)
- [Token lifetime policy](/graph/api/resources/tokenlifetimepolicy)
- [Policy base](/graph/api/resources/policybase)
- [Sts policy](/graph/api/resources/stspolicy)
- [Contract](/graph/api/resources/contract)
- [Service principal](/graph/api/resources/serviceprincipal)
- [Subscribed sku](/graph/api/resources/subscribedsku)
- [OAuth2 permission grant](/graph/api/resources/oauth2permissiongrant)
- [Organization](/graph/api/resources/organization)
- [Group setting](/graph/api/resources/groupsetting)
- [Group setting template](/graph/api/resources/groupsettingtemplate)

For a broader discussion of throttling on the Microsoft Cloud, see [Throttling Pattern](https://docs.microsoft.com/azure/architecture/patterns/throttling).

> [!NOTE]
> If no `Retry-After` header is provided by the response, we recommend implementing an exponential backoff retry policy. You can also implement [more advanced patterns](https://docs.microsoft.com/azure/architecture/patterns/category/resiliency) when building large-scale applications.
>
> Microsoft Graph SDKs already implement handlers that rely on the `Retry-After` header or default to an exponential backoff retry policy.

## Best practices to avoid throttling

Programming patterns like continuously polling a resource to check for updates and regularly scanning resource collections to check for new or deleted resources are more likely to lead to applications being throttled and degrade overall performances. You should instead leverage [change tracking](delta-query-overview.md) and [change notifications](webhooks.md) when available.

>[!NOTE]
>[Best practices for discovering files and detecting changes at scale](https://docs.microsoft.com/onedrive/developer/rest-api/concepts/scan-guidance?view=odsp-graph-online) describes best practices in details.

## Service-specific limits

Microsoft Graph allows you to access data in [multiple services](overview-major-services.md), such as Outlook or Azure Active Directory. These services impose their own throttling limits that affect applications that use Microsoft Graph to access them.

> [!NOTE]
> The specific limits described here are subject to change.

### Outlook service limits

Outlook service limits are evaluated for each app ID and mailbox combination. In other words, the limits described apply to a specific app accessing a specific mailbox (user or group). If an application exceeds the limit in one mailbox, it does not affect the ability to access another mailbox.

| Limit                                                      | Applies to      |
|------------------------------------------------------------|-----------------|
| 10,000 API requests in a 10 minute period                  | v1.0 and beta endpoints |
| 4 concurrent requests                                      | Beta endpoint   |
| 15 megabit upload (PATCH, POST, PUT) in a 30 second period | Beta endpoint   |

#### Outlook service resources

The following resources are provided by the Outlook service.

##### Calendar API resources

- [event](/graph/api/resources/event)
- [eventMessage](/graph/api/resources/eventmessage)
- [calendar](/graph/api/resources/calendar)
- [calendarGroup](/graph/api/resources/calendargroup)
- [outlookCategory](/graph/api/resources/outlookcategory)
- [attachment](/graph/api/resources/attachment)
- [place (preview)](/graph/api/resources/place)

##### Mail API resources

- [message](/graph/api/resources/message)
- [mailFolder](/graph/api/resources/mailfolder)
- [mailSearchFolder](/graph/api/resources/mailsearchfolder)
- [messageRule](/graph/api/resources/messagerule)
- [outlookCategory](/graph/api/resources/outlookcategory)
- [attachment](/graph/api/resources/attachment)

##### Personal contacts API resources

- [contact](/graph/api/resources/contact)
- [contactFolder](/graph/api/resources/contactfolder)
- [outlookCategory](/graph/api/resources/outlookcategory)

##### Social and workplace intelligence resources

- [person](/graph/api/resources/person)

##### To-do tasks API (preview) resources

- [outlookTask](/graph/api/resources/outlooktask)
- [outlookTaskFolder](/graph/api/resources/outlooktaskfolder)
- [outlookTaskGroup](/graph/api/resources/outlooktaskgroup)
- [outlookCategory](/graph/api/resources/outlookcategory)
- [attachment](/graph/api/resources/attachment)

### Microsoft Teams service limits

Limits are expressed as requests per second (rps).

| Teams request type                                   | Limit per app per tenant        | Limit per app across all tenants      |
|------------------------------------------------------|---------------------------------|------------|
| Any Graph API calls for Microsoft Teams              | 15000 requests every 10 seconds | n/a |
| GET team, channel, tab, installedApps, appCatalogs   | 60 rps                          | 600 rps |
| POST/PUT channel, tab, installedApps, appCatalogs    |  30 rps                         | 300 rps  |
| PATCH team, channel, tab, installedApps, appCatalogs |  30 rps                         | 300 rps  |
| DELETE channel, tab, installedApps, appCatalogs      |  15 rps                         | 150 rps  |
| GET /teams/```{team-id}```, joinedTeams              |  30 rps                         | 300 rps  |
| POST /teams/```{team-id}```, PUT /groups/```{team-id}```/team, clone | 6 rps | 150 rps  | 
| GET channel message  | 5 rps | 100 rps |
| GET 1:1/group chat message  | 3 rps | 30 rps |
| POST channel message | 2 rps | 20 rps |
| POST 1:1/group chat message | 2 rps | 20 rps |

A maximum of 4 requests per second per app can be issued on a given team or channel.
A maximum of 3000 messages per app per day can be sent to a given channel.

See also [Microsoft Teams limits](/graph/api/resources/teams-api-overview#microsoft-teams-limits) 
and [polling requirements](/graph/api/resources/teams-api-overview#polling-requirements).

### Microsoft Graph change notifications subscription operations

The following limits apply to any request on `/subscriptions`.

| Operation                 | Limit per app per tenant     | Limit per app accross all tenants |
|---------------------------|------------------------------|-----------------------------------|
| POST, PUT, DELETE, PATCH  | 1000 requests per 20 seconds | 2000 requests per 20 seconds      |
| All other HTTP methods    | 5000 requests per 20 seconds | 10000 requests per 20 seconds     |

### Identity and access service limits

#### Entities limits apply to

- [Directory object](/graph/api/resources/directoryobject)
- [Extension property](/graph/api/resources/extensionproperty)
- [Administrative unit](/graph/api/resources/administrativeunit)
- [Application](/graph/api/resources/application)
- [Application role assignment](/graph/api/resources/approleassignment)
- [Certificate based auth configuration](/graph/api/resources/certificatebasedauthconfiguration)
- [Organizational contact](/graph/api/resources/orgcontact)
- [Device](/graph/api/resources/device)
- [Directory object partner reference](/graph/api/resources/directoryobjectpartnerreference)
- [Directory role](/graph/api/resources/directoryrole)
- [Directory role template](/graph/api/resources/directoryroletemplate)
- [Domain](/graph/api/resources/domain)
- [Domain dns record](/graph/api/resources/domaindnsrecord)
- [Domain dns cname record](/graph/api/resources/domaindnscnamerecord)
- [Domain dns mx record](/graph/api/resources/domaindnsmxrecord)
- [Domain dns srv record](/graph/api/resources/domaindnssrvrecord)
- [Domain dns txt record](/graph/api/resources/domaindnstxtrecord)
- [Domain dns unavailable record](/graph/api/resources/domaindnsunavailablerecord)
- [Endpoint](/graph/api/resources/endpoint)
- [Extension property](/graph/api/resources/extensionproperty)
- [License details](/graph/api/resources/licensedetails)
- [Group](/graph/api/resources/group)
- [Activity based timeout policy](/graph/api/resources/activitybasedtimeoutpolicy)
- [Claims mapping policy](/graph/api/resources/claimsmappingpolicy)
- [Home realm discovery policy](/graph/api/resources/homerealmdiscoverypolicy)
- [Token issuance policy](/graph/api/resources/tokenissuancepolicy)
- [Token lifetime policy](/graph/api/resources/tokenlifetimepolicy)
- [Policy base](/graph/api/resources/policybase)
- [Sts policy](/graph/api/resources/stspolicy)
- [Contract](/graph/api/resources/contract)
- [Service principal](/graph/api/resources/serviceprincipal)
- [Subscribed sku](/graph/api/resources/subscribedsku)
- [OAuth2 permission grant](/graph/api/resources/oauth2permissiongrant)
- [Organization](/graph/api/resources/organization)
- [User](/graph/api/resources/user)
- [Group setting](/graph/api/resources/groupsetting)
- [Group setting template](/graph/api/resources/groupsettingtemplate)

#### Pattern

Throttling works by adding individual cost of requests. The sum of requests costs is then compaired against pre-determined limits. The following table documents  existing limits, reaching any of the limits will results in `429 Too Many Requests` responses. It is possible to receive `429 Too Many Requests` responses even when the following limits are not reached in situations when the services are under an important load or based on data volume for a specific tenant.

| Limit type | Limit value |
| ---------- | ----------- |
| application+tenant pair | TODO |
| application | TODO |

The following table documents base requests costs, any other request not listed in the following table has a base cost of 1.

| Operation | Request Path | Base Request Cost |
| --------- | ---------- | ------------------ |
| GET | `applications` | 2 |
| GET | `applications/{id}/extensionProperties` | 2 |
| GET | `contracts` | 3 |
| POST | `directoryObjects/getByIds` |  3 |
| GET | `domains/{id}/domainNameReferences` | 4 |
| POST | `getObjectsById` | 3 |
| GET | `groups/{id}/members` | 3 |
| GET | `groups/{id}/transitiveMembers` | 5 |
| POST | `isMemberOf` | 4 |
| POST | `me/checkMemberGroups` | 4 |
| POST | `me/checkMemberObjects` | 4 |
| POST | `me/getMemberGroups` | 2 |
| POST | `me/getMemberObjects` | 2 |
| GET | `me/licenseDetails` | 2 |
| GET | `me/memberOf` | 2 |
| GET | `me/ownedObjects` | 2 |
| GET | `me/transitiveMemberOf` | 2 |
| GET | `oauth2PermissionGrants` | 2 |
| GET | `oauth2PermissionGrants/{id}` | 2 |
| GET | `servicePrincipals/{id}/appRoleAssignments` | 2 |
| GET | `subscribedSkus` | 3 |
| GET | `users` | 2 |

Other factors that impact a request cost:

- Using $select decreases cost by 1
- Using $expand increases cost by 1
- Using $top with a value of less than 20 decreases cost by 1

> [!NOTE]
> A request cost can never be lower than 1.
> [!NOTE]
> Any request cost that applies to a request path starting with `me/` also applies to equivalent requests starting with `users/{id | userPrincipalName}/`.

#### Additional headers

##### Request headers

- **x-ms-throttle-priority**. If the header doesn't exist or set to any other value, it indicates a normal request. We recommend limiting interactive requests. Set the priority to interactive to only the requests where the user initiated and waiting for a response. The values of this header can be the following:
    1. Low - Indicates the request is low priority. Throttling this request doesn't cause user-visible failures.
    1. Normal - Default if no value is provided. Indicates that the request is default priority.
    1. Interactive - Indicates that the request is interactive or high priority. Throttling this request causes user-visible failures.

> [!NOTE]
> Low requests will be throttled when 100% of the limit is reached, Normal at 110%, and Interactive at 170%. Applications using too many Interactive requests will get throttled more aggressively.

##### Regular responses requests

- **x-aad-resource-unit** - Indicates the resource unit used for this request.
- **x-aad-app-warning-limit-exceeded** - Returned only when the application consumed more than 80% of its limit. The value indicates how much the application exceeds the 80% limit. This can be used by the callers to set up an alert and take action.

##### Throttled responses requests

- **x-ms-throttle-scope** - Indicates the scope of throttling and can have the following value:
    1. Tenant_Application_All - All requests for a particular tenant for the current application.
    1. Tenant_Application_Write - Requests that involve create, update, or delete operations for a particular tenant for the current application.
    1. Partition_Application_All - All requests for all the partition that the current tenant is in for the current application.
    1. Partition_Application_Write - Requests that involve create, update, or delete operations for the partition that the current tenant is in for the current application.
    1. Tenant_All - All requests for the current tenant, regardless of the application.
    1. Tenant_Write - Requests that involve create, update, or delete operations for the current tenant, regardless of the application.
    1. Application_All - All requests for the current application.
- **x-ms-throttle-reason** - Indicates the reason for throttling and can have the following values:
    1. CPULimitExceeded - Throttling is because the limit for cpu allocation is exceeded.
    1. WriteLimitExceeded - Throttling is because the write limit is exceeded.
    1. RULimitExceeded - Throttling is because the limit for the allocated resource unit is exceeded.
