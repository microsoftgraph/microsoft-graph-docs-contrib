---
title: "Microsoft Purview data security and governance overview"
description: "Microsoft Purview data security and governance overview"
author: "kylemar"
ms.date: 04/08/2025
ms.localizationpriority: medium
ms.subservice: "security"
ms.topic: article
---

# Microsoft Purview data security and governance APIs

The Microsoft Purview data security and governance APIs allow developers to seamlessly integrate the robust protection capabilities of Microsoft Purview into their applications. These APIs are essential for retrieval-augmented generation (RAG) applications, line-of-business (LOB) applications, and systems that handle sensitive data. They provide programmatic access to Microsoft Purview's policy evaluation engine, ensuring consistent enforcement of data security and governance policies across a range of applications.

Data security and compliance administrators use Microsoft Purview to manage, protect, and govern data based on the business risk exposure and regulations relevant to their organization. By leveraging these APIs, administrators gain visibility into the data stored and exchanged within their organization and can establish policies to enforce controls that address identified risks from users and applications within their tenant.

## Key policies in Microsoft Purview

### Collection policy

Collection policies are an event collection and filtering tool in Microsoft Purview that enables monitoring and classifying events from apps and locations that lie inside and beyond your organization's trust boundaries. They let you filter which events from both untrusted and trusted sources are ingested into Purview. Once ingested, that data can be classified and used by various Microsoft Purview signal-consuming solutions, such as Microsoft Purview activity explorer, Microsoft Purview Insider Risk Management, Microsoft Purview eDiscovery, and Microsoft Purview Data Lifecycle Management.

The **Collection** policy is crucial for organizations, particularly those using custom-built **line-of-business (LOB)** applications or third-party vendor applications. These environments can introduce risks where data might not align with organizational standards or could unintentionally breach data boundaries. A Collection policy helps mitigate these risks by ensuring sensitive activities are properly detected and governed, making it a key component in maintaining compliance with data security and governance requirements.

[Learn more about collection policies](/purview/collection-policies-solution-overview)

### Data Loss Prevention (DLP) Policy

The **Data Loss Prevention (DLP)** policy in Microsoft Purview enables administrators to control or restrict the movement of sensitive data within specific user or application contexts. DLP policies can help organizations can prevent the unintended exposure of sensitive information.

For example, a security administrator like Joyce might configure a DLP policy to limit the use of sensitive business data when a user attempts to upload files containing such data into non-enterprise-grade AI applications. This ensures that sensitive data remains protected, aligning with organizational data governance standards and maintaining compliance with internal security policies.

## Scenarios

The Microsoft Purview APIs help applications manage data protection and compliance throughout various stages of user interaction. The core scenarios addressed by these APIs include:

**Retrieve protection scope for a user or tenant** – Applications can determine how specific user data should be processed or protected before any interaction takes place, ensuring that necessary controls are in place to prevent data loss or leakage.
  
**Send user content to Microsoft Purview for processing** – Applications can send user activity or data to Microsoft Purview, enabling compliance administrators to discover sensitive interactions. This ensures the data is managed to meet regulatory requirements through Microsoft Purview's compliance features, such as auditing, DSPM for AI, eDiscovery, Data Lifecycle Management, Communication Compliance, and Insider Risk Management.

**Determine if user activity should be allowed or restricted at runtime** – Applications can assess whether user activity should be allowed or restricted during runtime, ensuring sensitive business content is protected and preventing data loss or leakage before it happens.

## Microsoft Purview policy requirements

Microsoft Purview provides policy enforcement capabilities that enable administrators to control data protection across their organization. The following are the key policy requirements that must be configured:

**Collection Policies** – Administrators can configure collection policies that apply to all or selected users within the tenant. If a collection policy is not set for a user or tenant, the [Compute protection scopes](/graph/api/userprotectionscopecontainer-compute) API can return an empty scope response.

**Data Loss Prevention (DLP) Policies** – Administrators can configure DLP policies that apply to all or selected users within the tenant. If a Data Loss Prevention policy is not set up for a user or tenant, the [Compute protection scopes](/graph/api/userprotectionscopecontainer-compute) API allows the application to process content offline, with no DLP actions returned through the process content API.


## API Flow for Data Protection and Compliance

The following API flow outlines the steps for managing data protection and compliance using Microsoft Graph APIs:

1. **Periodically call and cache the response of the [Compute protection scopes](/graph/api/userprotectionscopecontainer-compute) API** – Regularly call this API to retrieve the protection scope for a user or tenant and store the response for further processing.

2. **Monitor the combination of location, execution mode, and user activities** – Based on the response from the [Compute protection scopes](/graph/api/userprotectionscopecontainer-compute) API, monitor key factors such as user location, execution mode, and ongoing activities to assess compliance.

3. **Call the [Process content](/graph/api/userdatasecurityandgovernance-processcontent) API** – If specific conditions are met, call the [Process content](/graph/api/userdatasecurityandgovernance-processcontent) API to determine the appropriate action on the activity. If the execution mode is set to `evaluateOffline`, calling this API doesn't pause the user's interaction, but if the mode is not `evaluateOffline`, the user's interaction is blocked until the content is processed.

## Protection scope

Applications must adhere to the data protection and governance policies established by security and compliance administrators within an organization. These policies define how data and user activities should be managed and are collectively referred to as **protection scopes**. Applications use the [Compute protection scopes](/graph/api/userprotectionscopecontainer-compute) API to understand the protection measures applied to user interactions.

Key aspects of protection scopes include:

- **Collection policies** – Administrators configure collection policies that apply to all tenants or specific users. These policies determine the classification of data and monitor user activities, such as text/file uploads or downloads. Administrators must define and manage these policies to ensure sensitive data is classified and protected appropriately within the organization.

- **Data Loss Prevention (DLP) Policies** – Administrators configure DLP policies to govern how sensitive data is handled within the organization. These policies ensure that sensitive data is protected during various activities and interactions.

- **Listing protection scopes for users or tenants** – The [Compute protection scopes](/graph/api/userprotectionscopecontainer-compute) API provides a list of available protection scopes for a user or tenant. Applications use this information to determine which activities are subject to monitoring and which require passing ongoing activities to the `processContent` API.

- **Processing activity and content** – The [Process content](/graph/api/userdatasecurityandgovernance-processcontent) API enables applications to process activities and content based on defined protection scopes. When an activity is subject to monitoring, the application passes the activity information to the API, which returns actions required to enforce policies, such as blocking certain actions.

### Identifying protection scopes for a user

The [Compute protection scopes](/graph/api/userprotectionscopecontainer-compute) API allows applications to determine the protection scopes for users, ensuring that appropriate Microsoft Purview policies are applied. Specifying activity types and location types in the request allows applications to limit the response to only include relevant protection scopes.

When users log into an application, the API retrieves the protection scopes specific to each user. To accurately determine these scopes, applications must provide device and application metadata. This information plays a crucial role in making the correct policy decisions based on the application's context, ensuring compliance with organizational security and governance requirements.

### Execution mode behavior

The behavior of the `executionMode` field in the response from the [Compute protection scopes](/graph/api/userprotectionscopecontainer-compute) API defines how applications should handle user activities based on protection scope decisions. The execution mode can influence how an application interacts with the [Process content](/graph/api/userdatasecurityandgovernance-processcontent) API and whether it needs to wait for results before deciding on the user’s activity.

The following execution modes and their behaviors are expected:

1. **`evaluateInline`**: The application should wait for the [Process content](/graph/api/userdatasecurityandgovernance-processcontent) API to produce results before deciding whether to allow or block the user activity. No action should be taken until the API response is received.
2. **`evaluateOffline`**: The application should not wait for the [Process content](/graph/api/userdatasecurityandgovernance-processcontent) API's verdict and can take action (for example, restrict access) immediately without waiting for the API response.

| Execution Mode    | Action        | Description                                                                 |
| ----------------- | ------------ | --------------------------------------------------------------------------- |
| `evaluateInline`  | None         | The caller should invoke the Process content API and wait for results before allowing user activity to proceed. |
| `evaluateInline`  | restrictAccess | Not expected. Future actions that do not interfere with user activities might be present (for example, notify user). |
| `evaluateOffline` | restrictAccess | The caller should restrict user activity and call the process content API independently of taking action. |
| `evaluateOffline` | None         | The caller should not restrict user activity and should call the process content API independently. |

## Related content

[Microsoft Purview data security and governance in Microsoft Graph](/graph/api/resources/userdatasecurityandgovernance)
