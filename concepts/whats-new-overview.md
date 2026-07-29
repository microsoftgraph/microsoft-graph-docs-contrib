---
title: "What's new in Microsoft Graph"
description: "Find out what's new in Microsoft Graph APIs, SDKs, documentation, and other resources."
author: "lauragra"
ms.localizationpriority: high
ms.date: 06/23/2026
ms.topic: whats-new
---

# What's new in Microsoft Graph

Microsoft Graph provides a unified programmability model that you can use to access data in Microsoft 365, Windows, and Enterprise Mobility + Security. This article provides information about what's new in Microsoft Graph APIs, documentation, SDKs, and more.

For more detailed API-level updates, see the [Microsoft Graph API changelog](https://developer.microsoft.com/graph/changelog/).

For details about previous updates to Microsoft Graph, see [Microsoft Graph what's new history](whats-new-earlier.md).

> [!IMPORTANT]
> Features in _preview_ status are subject to change without notice, and might not be promoted to generally available (GA) status. Don't use preview features in production apps.

## July 2026: New and generally available

### Device and app management | Cloud PC

Added the [cloudPcServicePlan](/graph/api/resources/cloudpcserviceplan) resource type and related methods for managing Windows 365 service plans. Use the **servicePlans** relationship on [virtualEndpoint](/graph/api/resources/virtualendpoint) to discover available service plans that an organization can purchase for Cloud PCs.

### Files

Added the **allowOnPremUpdateOfOnPremisesObjectIdentifierEnabled** property to the [onPremisesDirectorySynchronizationFeature](/graph/api/resources/onpremisesdirectorysynchronizationfeature) resource.

### Groups

- Added support for assigning sensitivity labels to cloud security groups via the **assignedLabels** property on the [group](/graph/api/resources/group) resource. For more information, see [Sensitivity labels for Microsoft 365 groups and cloud security groups](/entra/identity/users/groups-sensitivity-labels).
- Added the `Group.ManageProtection.All` delegated permission as the least privilege permission for updating the **assignedLabels** property on the [group](/graph/api/resources/group) resource. App-only scenarios aren't supported.

### Identity and access | Directory management

Added the **sponsorOf** relationship to the [user](/graph/api/resources/user) resource type to represent the directory objects that a user sponsors.

### Identity and access | Governance

- Added the [Get](/graph/api/accesspackagesubject-get) and [Update](/graph/api/accesspackagesubject-update) methods to the [accessPackageSubject](/graph/api/resources/accesspackagesubject) resource type to manage the subject lifecycle of external directory users in Microsoft Entra entitlement management.
- Added the [cancelProcessing](/graph/api/identitygovernance-workflow-cancelprocessing) method to the [workflow](/graph/api/resources/identitygovernance-workflow) resource to cancel workflow runs that are currently in progress or queued.
- Added workflow preview operations to the [workflow](/graph/api/resources/identitygovernance-workflow) resource type in Lifecycle Workflows, enabling you to validate tasks and run workflows in preview mode without affecting production users.
- Promoted the **Bring Your Own Data (BYOD) Upload** APIs from beta to v1.0, enabling upload of external access data for access reviews. The promoted surface includes:
  - [customDataProvidedResourceUploadSession](/graph/api/resources/customdataprovidedresourceuploadsession) base resource and [customDataProvidedResourceAccessReviewUploadSession](/graph/api/resources/customdataprovidedresourceaccessreviewuploadsession) derived type
  - [customDataProvidedResourceFile](/graph/api/resources/customdataprovidedresourcefile), [customDataProvidedResourceUploadStats](/graph/api/resources/customdataprovidedresourceuploadstats), and [customDataProvidedResourceUploadSessionRequest](/graph/api/resources/customdataprovidedresourceuploadsessionrequest) resources
  - Supporting resource types: [data](/graph/api/resources/customdataprovidedresourcepayloads-data), [accessReviewContextDataBase](/graph/api/resources/customdataprovidedresourcepayloads-accessreviewcontextdatabase), [accessReviewContextData](/graph/api/resources/customdataprovidedresourcepayloads-accessreviewcontextdata), and [applyDecisionContextData](/graph/api/resources/customdataprovidedresourcepayloads-applydecisioncontextdata)
  - [uploadFile](/graph/api/customdataprovidedresourceuploadsession-uploadfile) action
  - **uploadSessions** navigation property on [accessPackageResource](/graph/api/resources/accesspackageresource)
  - [customDataProvidedResourceUploadStatus](/graph/api/resources/enums#customdataprovidedresourceuploadstatus-values) enumeration

### Teamwork and communications | Calls and online meetings

 - Added the **meetingType** and **cloudVideoInteropInfo** properties to the [onlineMeetingBase](/graph/api/resources/onlinemeetingbase) resource to help determine the type of an online meeting and retrieve Cloud Video Interop settings.
 - Added the **isRegistrationRequired** and **capacity** properties to virtual events (for example, [virtualEvent](/graph/api/resources/virtualevent), [virtualEventTownhall](/graph/api/resources/virtualeventtownhall), and [virtualEventSession](/graph/api/resources/virtualeventsession)) to control registration requirements and expected attendance.
 - Added the [virtualEventTownhallRegistrationConfiguration](/graph/api/resources/virtualeventtownhallregistrationconfiguration) resource type and related methods to manage attendee registration for town halls.

### Users

- Added the `User.Create` permission as the least privileged permission to [create a user](/graph/api/user-post-users).
- Added the `User.ReadUpdate.All` permission as the least privileged permission to [update a user](/graph/api/user-update).

## July 2026: New in preview only

### Change notifications

Added the **vapidPublicKey**, **webPushEncryptionP256dhPublicKey**, and **webPushEncryptionSecret** properties to the [subscription](/graph/api/resources/subscription?view=graph-rest-beta&preserve-view=true) resource to support encrypted change notifications delivered to browser-native Web Push endpoints (Apple, Mozilla, FCM). Browser-based applications can now register with Microsoft Graph to receive change notifications through the W3C Push API channel without operating a public webhook. See [RFC 8291](https://www.rfc-editor.org/rfc/rfc8291.html) and [RFC 8292](https://www.rfc-editor.org/rfc/rfc8292.html) for the underlying encryption and authentication protocols.

### Device and app management | Cloud PC

- Added the [shareSnapshot](/graph/api/cloudpc-sharesnapshot?view=graph-rest-beta&preserve-view=true) method to the [cloudPC](/graph/api/resources/cloudpc?view=graph-rest-beta&preserve-view=true) resource type. Use it to copy a Cloud PC snapshot to an Azure storage account.
- Added support for activating or deactivating an organization for Windows 365 for Agents. Use the [cloudPC: organizationAction](/graph/api/cloudpc-organizationaction?view=graph-rest-beta&preserve-view=true) action to trigger the operation.
- Use the [cloudPC: retrieveOrganizationActionDetail](/graph/api/cloudpc-retrieveorganizationactiondetail?view=graph-rest-beta&preserve-view=true) method to retrieve the status and details of an organization action.

### Files

- Updated the [getSharePointApiUsage](/graph/api/reportroot-getsharepointapiusage?view=graph-rest-beta&preserve-view=true) method to support the optional **reportType** parameter for retrieving throttling metrics. Use `reportType='throttlingReport'` to get throttled request counts via the **throttledRequests** property on the [sharePointApiUsageDataPoint](/graph/api/resources/sharepointapiusagedatapoint?view=graph-rest-beta&preserve-view=true) resource, or use `reportType='egressReport'` (default) to get egress usage via the **usageMB** property.
- Added the **allowOnPremUpdateOfOnPremisesObjectIdentifierEnabled** property to the [onPremisesDirectorySynchronizationFeature](/graph/api/resources/onpremisesdirectorysynchronizationfeature?view=graph-rest-beta&preserve-view=true) resource.
- Added the [getByUser](/graph/api/filestoragecontainer-getbyuser?view=graph-rest-beta&preserve-view=true) method to the [fileStorageContainer](/graph/api/resources/filestoragecontainer?view=graph-rest-beta&preserve-view=true) resource to retrieve a list of file storage containers owned by a user, with optional filtering by role (owner or principalOwner).

### Groups

Added the `Group.ManageProtection.All` delegated permission as the least privilege permission for updating the **assignedLabels** property on the [group](/graph/api/resources/group?view=graph-rest-beta&preserve-view=true) resource. App-only scenarios aren't supported.

### Identity and access | Directory management

Added the **sponsorOf** relationship to the [user](/graph/api/resources/user?view=graph-rest-beta&preserve-view=true) resource type to represent the directory objects that a user sponsors.

### Identity and access | Governance

Added support for automatically quarantining Lifecycle Workflows to stop a workflow from processing more users than expected. Configure thresholds using the **quarantineConfiguration** property on [lifecycleManagementSettings](/graph/api/resources/identitygovernance-lifecyclemanagementsettings?view=graph-rest-beta&preserve-view=true), and clear a quarantine by calling [clearQuarantine](/graph/api/identitygovernance-workflow-clearquarantine?view=graph-rest-beta&preserve-view=true).

### Identity and access | Identity and sign-in

- Added support to update and delete Microsoft 365 cross-tenant capabilities in the cross-tenant access policy. For details, see [m365CapabilityBase](/graph/api/resources/m365capabilitybase?view=graph-rest-beta&preserve-view=true).
- Enhanced the [verifiedIdProfile](/graph/api/resources/verifiedidprofile?view=graph-rest-beta&preserve-view=true) resource with expanded verification capabilities:
  - Added the **methodType** property to [verifiedIdProfileConfiguration](/graph/api/resources/verifiedidprofileconfiguration?view=graph-rest-beta&preserve-view=true) to specify the verification method category, including tenant custom credentials, verified employee credentials, and identity verification partners. Introduced the **verifiedIdMethodType** enumeration to support these scenarios.
  - Added the **manifestUrl** property to [verifiedIdProfileConfiguration](/graph/api/resources/verifiedidprofileconfiguration?view=graph-rest-beta&preserve-view=true) to reference the credential issuer's manifest defining the credential schema and issuer details.
  - Added the `verification` member to the **verifiedIdUsageConfigurationPurpose** enumeration to enable just-in-time identity verification scenarios, such as step-up authentication enforcement through Conditional Access policies.

### Mailbox import and export

Added the [Delete mailboxItem](/graph/api/mailboxfolder-delete-items?view=graph-rest-beta&preserve-view=true) method to delete an individual [mailboxItem](/graph/api/resources/mailboxitem?view=graph-rest-beta&preserve-view=true) from a mailbox folder by using the mailbox import and export APIs. Use the **disposalType** query parameter to specify soft-delete or hard-delete semantics.

### Reports

Added the [getSharePointApiUsage](/graph/api/reportroot-getsharepointapiusage?view=graph-rest-beta&preserve-view=true) method to the [reportRoot](/graph/api/resources/reportroot?view=graph-rest-beta&preserve-view=true) resource to retrieve aggregated OneDrive and SharePoint API usage metrics for a tenant, including egress usage and throttling metrics.

### Tasks and plans

Added the [plannerHistoryItem](/graph/api/resources/plannerhistoryitem?view=graph-rest-beta&preserve-view=true) resource type and [List historyItems](/graph/api/plannerplan-list-historyitems?view=graph-rest-beta&preserve-view=true) method to audit task changes within a Planner plan. Track when tasks are created, updated, deleted, or moved, and filter by **occurredDateTime** to retrieve changes within specific time ranges.

### Teamwork and communications | Messaging

Added the [chatMessageBody](/graph/api/resources/chatmessagebody?view=graph-rest-beta&preserve-view=true) resource type to support Teams-specific message content formats, including `markdown`.

## Contribute to Microsoft Graph

Are there scenarios you'd like Microsoft Graph to support?

- Suggest and vote for new features by using the [Microsoft Graph Feedback Portal](https://aka.ms/graphfeedback). Some new features originate as popular requests from the developer community. The Microsoft Graph team regularly evaluates customer needs and releases new features to the beta (`https://graph.microsoft.com/beta`) and v1.0 (`https://graph.microsoft.com/v1.0`) endpoints.

- [Join](https://aka.ms/m365-dev-call) the weekly Microsoft 365 platform community call and become an active member of the Microsoft Graph community. To discover the full calendar of developer calls, visit the [Microsoft 365 and Power Platform community page](https://aka.ms/community/calls).

- [Join](https://ux.microsoft.com/Panel/M365Devs?utm_source=graphDocs) our research panel to provide your input on our developer experiences.

## Related content
- [Microsoft Graph developer blog](https://devblogs.microsoft.com/microsoft365dev/category/microsoft-graph/).
- [Microsoft Graph API changelog](https://developer.microsoft.com/graph/changelog/).
- [Microsoft Graph what's new history](whats-new-earlier.md).
