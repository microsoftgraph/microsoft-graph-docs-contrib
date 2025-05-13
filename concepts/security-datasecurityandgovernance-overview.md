---
title: "Microsoft Purview data security and governance overview (preview)"
description: "Microsoft Purview data security and governance overview"
author: "ArunGedela"
ms.date: 04/08/2025
ms.localizationpriority: medium
ms.subservice: "security"
---

# Microsoft Purview data security and governance APIs (preview)

The Microsoft Purview data security and governance APIs allow developers to seamlessly integrate the robust protection capabilities of Microsoft Purview into their applications. These APIs are essential for retrieval-augmented generation (RAG) applications, line-of-business (LOB) applications, and systems that handle sensitive data. They provide programmatic access to Microsoft Purview's policy evaluation engine, ensuring consistent enforcement of data security and governance policies across a range of applications.

Data security and compliance administrators use Microsoft Purview to manage, protect, and govern data based on the business risk exposure and regulations relevant to their organization. By leveraging these APIs, administrators gain visibility into the data stored and exchanged within their organization and can establish policies to enforce controls that address identified risks from users and applications within their tenant.

## Key policies in Microsoft Purview

### Data discovery policy

The data discovery policy in Microsoft Purview plays a critical role in defining and managing the types of sensitive data that require protection within an organization. This policy determines whether user data should be collected and made visible within Microsoft Purview, and it establishes the types of data activities that are permissible at both the user and tenant levels. 

The **Data Discovery** policy is crucial for organizations, particularly those using custom-built **line-of-business (LOB)** applications or third-party vendor applications. These environments can introduce risks where data may not align with organizational standards or could unintentionally breach data boundaries. The **Data Discovery** policy helps mitigate these risks by ensuring sensitive data is properly identified, protected, and governed, making it a key component in maintaining compliance with data security and governance requirements.

### Data Loss Prevention (DLP) Policy

The **Data Loss Prevention (DLP)** policy in Microsoft Purview enables administrators to control or restrict the movement of sensitive data within specific user or application contexts. DLP policies can help organizations can prevent the unintended exposure of sensitive information. 

For example, a security administrator like Joyce might configure a DLP policy to limit the use of sensitive business data when a user attempts to upload files containing such data into non-enterprise-grade AI applications. This ensures that sensitive data remains protected, aligning with organizational data governance standards and maintaining compliance with internal security policies.

## Scenarios

The core scenarios addressed by these APIs are:

- **Retrieve protection scope for a user or tenant** - Applications must learn how specific user data should be processed or protected before allowing an interaction. This ensures necessary controls are in place to prevent data loss or leakage.
- **Send user content to Microsoft Purview for processing** - Applications are required to send user activity or data to Microsoft Purview so that compliance administrators can discover sensitive interactions in Microsoft Purview and manage such data to meet regulatory requirements using Microsoft Purview compliance features. This enables Microsoft Purview auditing, DSPM for AI, eDiscovery, Data Lifecycle Management, Communication Compliance, and Insider Risk Management solution outcomes on the application's data.
- **Determine if user activity should be allowed or restricted in runtime** - Applications need to determine if user activity should be allowed or restricted at runtime to prevent data loss or leakage of sensitive business content before it's too late.

## Microsoft Purview policy requirements

- Data Discovery policies - Admin can configure discovery policies scoped to all or selected users on the tenant. If the data collection policy is not set up for the user or tenant, [Compute protection scopes](./graph/api/userprotectionscopecontainer-compute) returns an empty scope response.
- Data Loss Prevention (DLP) policies - The admin can configure DLP policies scoped to all or selected users on the tenant. If a Data Loss Policy is not set up for the user or tenant, [Compute protection scopes](./graph/api/userprotectionscopecontainer-compute) allows the app to process content offline, and there are no DLP actions returned through the process content API.

## API flow

- Periodically call and cache the response of [Compute protection scopes](./graph/api/userprotectionscopecontainer-compute).
- Based on the response of [Compute protection scopes](./graph/api/userprotectionscopecontainer-compute), monitor the combination of location, execution mode, and activities for the user.
- If those combinations are met, call the [Process content](./graph/api/userdatasecurityandgovernance-processcontent) API to determine the action to be taken on the activity. Calling [Process content](./graph/api/userdatasecurityandgovernance-processcontent) shall not pause the user's interaction if the execution mode is `evaluateOffline`, but block otherwise.

## Protection scope

Applications are required to adhere to Microsoft Purview policies established by security or compliance administrators, which dictate how data and user activities should be managed. This is referred to as protection scopes, and applications should use the [Compute protection scopes](./graph/api/userprotectionscopecontainer-compute) to understand what has been defined in the context of user interactions.

- Admin configures Discovery Policies scoped to all tenants or users. These policies define the data to be classified by applications and users' activity, like upload\download file.** Administrators need to define and manage data governance policies that determine how sensitive data is classified and protected within their organization
- **Admin configures Data Loss Protection (DLP) policies that govern how sensitive data is handled:** Administrators need to define and manage data loss prevention policies that determine how sensitive data is handled within their organization.
- **List protection scopes for user or tenant:** This API provides a list of protection scopes available for a user or tenant. This is used by applications to determine what activities are subject to monitoring and require passing ongoing activities to the processContent API.
- **Process activity and content:** This API encapsulates policy processing for a given activity and content. Applications determine if an activity is subject to monitoring based on [Compute protection scopes](./graph/api/userprotectionscopecontainer-compute) and pass activity information to the API, which may return actions required to enforce the policy, e.g. Block.

### Identify protection scopes for a user

The API enables applications to specify activity types and location types in the request, thereby limiting the response to only include relevant protection scopes.

Users can log into the application and call the [Compute protection scopes](./graph/api/userprotectionscopecontainer-compute) to get the protection scopes for each user.

Applications are required to provide device metadata and application metadata to assist in determining the appropriate protection scopes. This information is essential for ascertaining policy decisions relevant to the application's context.

### Execution mode behavior

There is an expected behavior on different values for `executionMode` in the response of the [Compute protection scopes](./graph/api/userprotectionscopecontainer-compute).

1. `evaluateInline`: Wait for [Process content](./graph/api/userdatasecurityandgovernance-processcontent) to produce results before making decision about handling user activity, e.g., Allow or Block. No action.
1. `evaluateOffline`: Do not wait for [Process content](./graph/api/userdatasecurityandgovernance-processcontent) to return its verdict. Take action, if any, with no wait for API response

| Execution mode | Action | Description |
| -- | -- |--|
| evaluateInline | None | The caller should invoke the Process API and wait for results before letting user activity to proceed. |
| evalateInline | restrictAccess | Not expected. Future actions that do not interfere with user activities may be present, e.g. notifyUser. |
| evaluateOffline | restrictAccess | The caller should restrict user activity, call the Process API independently of taking the action. |
| evaluateOffline | None | The caller should not restrict user activity; call the process API independently. |

## Related content

[Microsoft Purview data security and governance in Microsoft Graph](/graph/api/resources/userdatasecurityandgovernance?view=graph-rest-beta)
