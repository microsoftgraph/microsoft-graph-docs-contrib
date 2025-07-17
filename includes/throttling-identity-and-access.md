---
author: "sureshja"
ms.localizationpriority: high
ms.subservice: entra-id
ms.topic: include
---
<!-- markdownlint-disable MD041 -->

### Pattern

Throttling is based on a token bucket algorithm, which works by adding individual costs of requests. The sum of request costs is then compared against predetermined limits. Only the requests exceeding the limits are throttled. If any of the limits are exceeded, the response is `429 Too Many Requests`. It's possible to receive `429 Too Many Requests` responses even when the following limits aren't reached, in situations when the services are under an important load or based on data volume for a specific tenant. The following table lists existing limits.

| Limit type | Resource unit quota | Write quota |
| ---------- | ----------- | -------------- |
| application+tenant pair | S: 3,500 ResourceUnits per 10 seconds <br/> M: 5,000 ResourceUnits per 10 seconds <br/> L: 8,000 ResourceUnits per 10 seconds | 3,000 requests per 2 minutes and 30 seconds |
| application | 150,000 ResourceUnits per 20 seconds  | 35,000 requests per 5 minutes|
| tenant | Not Applicable | 18,000 requests per 5 minutes |

> [!NOTE]
> The application + tenant pair limit varies based on the number of users in the tenant requests are run against. The tenant sizes are defined as follows: S - under 50 users, M - between 50 and 500 users, and L - above 500 users.

---

The preceding limits apply to the following resources:  

| <!-- fake header--> | <!-- fake header--> |
|--|--|
|<ul> <li> [application](/graph/api/resources/application) <li> [contract](/graph/api/resources/contract) <li> [device](/graph/api/resources/device) <li> [directoryObjectPartnerReference](/graph/api/resources/directoryobjectpartnerreference) <li> [directoryObject](/graph/api/resources/directoryobject) <li> [directoryRoleTemplate](/graph/api/resources/directoryroletemplate) <li> [directoryRole](/graph/api/resources/directoryrole) <li> [domainDnsCnameRecord](/graph/api/resources/domaindnscnamerecord) <li> [domainDnsMxRecord](/graph/api/resources/domaindnsmxrecord) <li> [domainDnsRecord](/graph/api/resources/domaindnsrecord) <li> [domainDnsSrvRecord](/graph/api/resources/domaindnssrvrecord) <li> [domainDnsTxtRecord](/graph/api/resources/domaindnstxtrecord) <li> [domainDnsUnavailableRecord](/graph/api/resources/domaindnsunavailablerecord) <li> [domain](/graph/api/resources/domain) <li> [endpoint](/graph/api/resources/endpoint) <li> [extensionProperty](/graph/api/resources/extensionproperty) </ul>| <ul><li> [groupSettingTemplate](/graph/api/resources/groupsettingtemplate) <li> [groupSetting](/graph/api/resources/groupsetting) <li> [group](/graph/api/resources/group) <li> [homeRealmDiscoveryPolicy](/graph/api/resources/homerealmdiscoverypolicy) <li> [licenseDetails](/graph/api/resources/licensedetails) <li> [oauth2PermissionGrant](/graph/api/resources/oauth2permissiongrant) <li> [organization](/graph/api/resources/organization) <li> [orgContact](/graph/api/resources/orgcontact) <li> [policyBase](/graph/api/resources/policybase) <li> [servicePrincipal](/graph/api/resources/serviceprincipal) <li> [stsPolicy](/graph/api/resources/stspolicy) <li> [subscribedSku](/graph/api/resources/subscribedsku) <li> [tokenIssuancePolicy](/graph/api/resources/tokenissuancepolicy) <li> [tokenLifetimePolicy](/graph/api/resources/tokenlifetimepolicy) <li> [user](/graph/api/resources/user) </ul>|

---

The following table lists base request costs. Any requests not listed have a base cost of 1.

| Operation | Request Path | Base Resource Unit Cost | Write Cost |
| --------- | ------------ | ----------------- | ------------------ |
| GET | `applications` | 2 | 0 |
| GET | `applications/{id}/extensionProperties` | 2 | 0 |
| GET | `contracts` | 3 | 0 |
| POST | `directoryObjects/getByIds` | 5 | 0 |
| GET | `domains/{id}/domainNameReferences` | 4 | 0 |
| POST | `getObjectsById` | 5 | 0 |
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
- Creating a user in a Microsoft Entra ID B2C tenant increases cost by 4

> [!NOTE]
> - A request cost can never be lower than 1. Any request cost that applies to a request path starting with `me/` also applies to equivalent requests starting with `users/{id | userPrincipalName}/`.
> - Using `$select` for `directoryObjects/getByIds` and `getObjectsById` results in 2 ResourceUnits.

### Other headers

#### Request headers

- **x-ms-throttle-priority** - If the header doesn't exist or is set to any other value, it indicates a normal request. We recommend setting priority to `high` only for the requests initiated by the user. This header can have one of the following values:
  - Low - Indicates the request is low priority. Throttling this request doesn't cause user-visible failures.
  - Normal - Default if no value is provided. Indicates that the request is default priority.
  - High - Indicates that the request is high priority. Throttling this request causes user-visible failures.

> [!NOTE]
> Should requests be throttled, low priority requests are throttled first, normal priority requests second, and high priority requests last. Using the priority request header doesn't change the limits.

#### Regular responses requests

- **x-ms-resource-unit** - Indicates the resource unit used for this request. Values are positive integers.
- **x-ms-throttle-limit-percentage** - Returned only when the application consumed more than 0.8 of its limit. The value ranges from 0.8 to 1.8 and is a percentage of the use of the limit. Callers can use this value to set up an alert and take action.
  - 0.8 indicates you're using 80% of the granted limit.
  - 1.0 indicates you're using 100 % of the granted limit. You start to see throttling.
  - 1.2 indicates 20% of the incoming requests are throttled.
  - 1.8 indicates 80% of the incoming requests are throttled. 

#### Throttled responses requests

- **x-ms-throttle-scope** - for example, `Tenant_Application/ReadWrite/9a3d526c-b3c1-4479-ba74-197b5c5751ae/0785ef7c-2d7a-4542-b048-95bcab406e0b`. Indicates the scope of throttling with the following format `<Scope>/<Limit>/<ApplicationId>/<TenantId|UserId|ResourceId>`:
  - Scope: (string, required)
    - Tenant_Application - All requests for a particular tenant for the current application.
    - Tenant - All requests for the current tenant, regardless of the application.
    - Application - All requests for the current application.
  - Limit: (string, required)
    - Read: Read requests for the scope (GET)
    - Write: Write requests for the scope (POST, PATCH, PUT, DELETE...)
    - ReadWrite: All Requests for the scope (any)
  - ApplicationId (Guid, required)
  - TenantId|UserId|ResourceId: (Guid, required)
- **x-ms-throttle-information** - Indicates the reason for throttling and can have any value (string). The value is provided for diagnostics and troubleshooting purposes, some examples include:
  - CPULimitExceeded - Throttling is because the limit for cpu allocation is exceeded.
  - WriteLimitExceeded - Throttling is because the write limit is exceeded.
  - ResourceUnitLimitExceeded - Throttling is because the limit for the allocated resource unit is exceeded.
