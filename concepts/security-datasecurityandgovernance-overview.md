---
title: "Microsoft Purview data security and governance overview (preview)"
description: "Microsoft Purview data security and governance overview"
author: "ArunGedela"
ms.date: 04/08/2025
ms.localizationpriority: medium
ms.subservice: "security"
---

# Microsoft Purview APIs overview (preview)

The Microsoft Purview data security and governance APIs allow developers to seamlessly incorporate the protection provided by Microsoft Purview, essential for retrieval-augmented generation (RAG) applications, line of business (LOB) applications, and systems handling sensitive data. These APIs provide programmatic access to the policy evaluation engine of Microsoft Purview, ensuring consistent data security and governance enforcement across various applications.

Data security and compliance administrators use Microsoft Purview to manage, protect, and govern their data according to the business risk exposure and regulations relevant to their organization.  They gain insight into data stored and exchanged within their organizations and establish Microsoft Purview policies to enforce controls based on identified risks from users and applications on the tenant.

The **Data Discovery** policy outlines the types of sensitive data that are of interest, specifies if user data should be collected and visible in Microsoft Purview, and defines the types of data activities permitted per user or at the tenant level. This policy is particularly relevant for custom-built line-of-business applications or vendor-built applications due to the potential risks of data not meeting organizational standards or breaching data boundaries.

The **Data Loss Prevention (DLP)** policy that Microsoft Purview administrators establish to control or restrict the movement of sensitive data within the context of a user or application. For instance, Joyce, a security administrator, implements a DLP policy to limit the use of sensitive data when a user attempts to upload text or files containing sensitive business data into a non-enterprise-grade AI application to obtain results or generate new content.

## Scenarios

The core scenarios addressed by these APIs are:

- **Retrieve protection scope for a user or tenant** - Applications must learn how specific user data should be processed or protected before allowing an interaction. This ensures necessary controls are in place to prevent data loss or leakage.
- **Send user content to Microsoft Purview for processing** - Applications are required to send user activity or data to Microsoft Purview so that compliance administrators can discover sensitive interactions in Microsoft Purview and manage such data to meet regulatory requirements using Microsoft Purview compliance features. This enables Microsoft Purview auditing, DSPM for AI, eDiscovery, Data Lifecycle Management, Communication Compliance, and Insider Risk Management solution outcomes on the application's data.
- **Determine if user activity should be allowed or restricted in runtime** - Applications need to determine if user activity should be allowed or restricted at runtime to prevent data loss or leakage of sensitive business content before it's too late.

## Microsoft Purview policy requirements

- Data Discovery Policies - Admin configures Discovery Policies scoped to all or selected users on the tenant. If Data collection policy is not setup for user or tenant, [Compute protection scopes](./graph/api/userprotectionscopecontainer-compute) will return an empty scope response.
- Data Loss Prevention (DLP) Policies - Admin configured DLP Policies scoped to all or selected users on the tenant. If a Data Loss Policy is not setup for user or tenant, [Compute protection scopes](./graph/api/userprotectionscopecontainer-compute) will allow the app to process content offline and there will be no DLP actions returned through the Process Content API.

## API flow

- Periodically call and cache the response of [Compute protection scopes](./graph/api/userprotectionscopecontainer-compute).
- Based on the response of [Compute protection scopes](./graph/api/userprotectionscopecontainer-compute), monitor the combination of location, execution mode, and activities for the user.
- If those combinations are met, then call [Process content](./graph/api/userdatasecurityandgovernance-processcontent) to determing the action to be taken on the activity, Calling [Process content](./graph/api/userdatasecurityandgovernance-processcontent) shall not pause the user's interaction if the execution mode is `evaluateOffline`. But block otherwise.

## Protection scope

Applications are required to adhere to Microsoft Purview policies established by Security/Compliance Administrators, which dictate how data and user activities should be managed. This is referred to as protection scopes, and applications should use the [Compute protection scopes](./graph/api/userprotectionscopecontainer-compute) to understand what has been defined in the context of user interactions.

- Admin configures Discovery Policies scoped to all tenant or users. These policies defines the data to be classified by applications and user's activity like upload\download file.** Administrators need to define and manage data governance policies that determine how sensitive data is classified and protected within their organization
- **Admin configures Data Loss Protection (DLP) policies that govern how sensitive data is handled:** Administrators need to define and manage data loss prevention policies that determine how sensitive data is handled within their organization.
- **List protection scopes for user or tenant:** This API provides a list of protection scopes available for a user or tenant. This is used by applications to determine what activities are subject to monitoring and require passing ongoing activities to the processContent API.
- **Process activity and content:** This API encapsulates policy processing for a given activity and content. Applications determine if an activity is subject to monitoring based on [Compute protection scopes](./graph/api/userprotectionscopecontainer-compute) and pass activity information to the API, which may return actions required to enforce the policy, e.g. Block.

### Identify protection scopes for a user

User logs into the application and the application needs to determine the protection scopes for the user. The application calls the [Compute protection scopes](./graph/api/userprotectionscopecontainer-compute) to get the protection scopes for the user.

The API enables applications to specify activity types and location types in the request, thereby limiting the response to only include relevant protection scopes.

Applications are required to provide device metadata and application metadata to assist in determining the appropriate protection scopes. This information is essential for ascertaining policy decisions relevant to the application's context.

### Execution mode behavior

Below is the the expected behavior on different values for `executionMode` in the response of the [Compute protection scopes](./graph/api/userprotectionscopecontainer-compute).

1. `evaluateInline`: Wait for [Process content](./graph/api/userdatasecurityandgovernance-processcontent) to produce results before making decision about handling user activity, e.g. Allow or Block. No action.
1. `evaluateOffline`: Do not wait for [Process content](./graph/api/userdatasecurityandgovernance-processcontent) to return its verdict. Take action, if any with no wait for API response

| Execution Mode | Action | Description |
| -- | -- |--|
| evaluateInline | None | The caller should invoke the Process API and wait for results before letting user activity to proceed. |
| evalateInline | RestrictAccess | Not expected. Future actions that do not interfere with user activities may be present, e.g. NotifyUser |
| evaluateOffline | restrictAccess | The caller should restrict user activity, call the Process API independently of taking the action. |
| evaluateOffline | None | The caller should not restrict user activity; call the process API independently. |

## API reference

Looking for the API reference for this service?

- [Microsoft Purview data security and governance in Microsoft Graph beta](/graph/api/resources/userdatasecurityandgovernance?view=graph-rest-beta)
