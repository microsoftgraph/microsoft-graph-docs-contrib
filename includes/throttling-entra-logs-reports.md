---
author: "egreenberg14"
ms.localizationpriority: high
ms.subservice: entra-monitoring-health
ms.topic: include
---
<!-- markdownlint-disable MD041 -->

| Request type |  Limit per app for all tenants |  Limit per app per tenant |
| ------------ | ------------------------------ |  ------------------------ |
| Any | 122 requests per 10 seconds | Five requests per 10 seconds |
| GET [signInActivity](/graph/api/resources/signinactivity) | 10 requests per minute | 10 requests per minute |

The preceding limits apply to the following resources:

| <!-- fake header--> | <!-- fake header--> |
|--|--|
|<ul> <li> [applicationSignInDetailedSummary](/graph/api/resources/applicationsignindetailedsummary) <li> [applicationSignInSummary](/graph/api/resources/applicationsigninsummary) <li> [auditLogRoot](/graph/api/resources/auditlogroot) <li> [authenticationMethod](/graph/api/resources/authenticationmethod) <li> [azureADUserFeatureUsage](/graph/api/resources/userregistrationfeaturesummary) <li> [credentialUsageSummary](/graph/api/resources/credentialusagesummary) <li> [credentialUserRegistrationCount](/graph/api/resources/credentialuserregistrationcount) </ul>| <ul><li> [credentialUserRegistrationDetails](/graph/api/resources/credentialuserregistrationdetails) <li> [directoryAudit](/graph/api/resources/directoryaudit) <li> [provisioningObjectSummary](/graph/api/resources/provisioningobjectsummary) <li> [relyingPartyDetailedSummary](/graph/api/resources/relyingpartydetailedsummary) <li> [signIn](/graph/api/resources/signin) <li> [userCredentialUsageDetails](/graph/api/resources/usercredentialusagedetails)  </ul> |

<!--
Verify the following:  azureadfeatureusage, azureadlicenseusage, azureaduserfeatureusage, recommendation, recommendationresource, restrictedsignin

Changed authenticationMethodsRoot to authenticationMethod
-->

### Identity and access reports best practices

Microsoft Entra reporting APIs are throttled when Microsoft Entra ID receives too many calls during a given timeframe from a tenant or app. Calls might also be throttled if the service takes too long to respond. If your requests still fail with a `429 Too Many Requests` error code despite applying the [best practices to handle throttling](/graph/throttling#best-practices-to-handle-throttling), try reducing the amount of data returned. Try these approaches first:
- Use filters to target your query to just the data you need. If you only need a certain type of event or a subset of users, for example, filter out other events using the `$filter` and `$select` query parameters to reduce the size of your response object and the risk of throttling.
- If you need a broad set of Microsoft Entra ID reporting data, use `$filter` on the **createdDateTime** to limit the number of sign-in events you query in a single call. Then, iterate through the next timespan until you have all the records you need. For example, if you're being throttled, you can begin with a call that requests three days of data and iterate with shorter timespans until your requests are no longer throttled.
- Using the $select=signinActivity parameter may trigger stricter throttling limits than standard Microsoft Graph API calls. If you don’t require this field, consider removing $select to avoid these limits. If you do need to retrieve signinActivity, reduce the number of API calls by using $top=500 to retrieve multiple users in a single call rather than querying one user at a time.
