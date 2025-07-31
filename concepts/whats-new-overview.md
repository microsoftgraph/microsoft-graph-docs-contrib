---
title: "What's new in Microsoft Graph"
description: "Find out what's new in Microsoft Graph APIs, SDKs, documentation, and other resources."
author: "lauragra"
ms.localizationpriority: high
ms.date: 07/03/2025
---

# What's new in Microsoft Graph

Microsoft Graph provides a unified programmability model that you can use to access data in Microsoft 365, Windows, and Enterprise Mobility + Security. This article provides information about what's new in Microsoft Graph APIs, documentation, SDKs, and more.

For more detailed API-level updates, see the [Microsoft Graph API changelog](https://developer.microsoft.com/graph/changelog/).

For details about previous updates to Microsoft Graph, see [Microsoft Graph what's new history](whats-new-earlier.md).

> [!IMPORTANT]
> Features in _preview_ status are subject to change without notice, and might not be promoted to generally available (GA) status. Don't use preview features in production apps.

## July 2025: New and generally available

### Bicep Templates for Microsoft Graph resources

[Bicep templates for Microsoft Graph resources](https://aka.ms/graphbicep) is now generally available and supported in production environments, following the Microsoft APIs terms of use. Using Bicep templates, you can deploy the following Microsoft Graph resources for your infrastructure as code (IaC) projects:

- Applications
- App role assignments
- Federated identity credentials
- Groups
- OAuth2 permissions grants (delegated permissions grants)
- Service principals
- Users

### Education

- [Get](/graph/api/reportsroot-list-readingassignmentsubmissions) a list of reading assignments that were submitted by a student.
- [Get](/graph/api/reportsroot-list-reflectcheckinresponses) a list of Reflect check-ins that were submitted by a student.

### Files

Each fragment uploaded during an [upload session](/graph/api/resources/uploadsession) extends the expiration time.

### Reports | Partner billing reports

[Export](/graph/api/partners-billing-unbilledreconciliation-export) unbilled invoice reconciliation data.

### Security

Added the [resourceAccessEvent](/graph/api/resources/security-resourceaccessevent) resource as a property in [userAccount](/graph/api/resources/security-useraccount).

### Security | eDiscovery

- Added the **itemsToInclude**, **cloudAttachmentVersion**, **documentVersion**, **additionalDataOptions**, and **statisticsOptions** as supported properties and parameters across various resources and actions of the eDiscovery API.
- Use the **reportFileMetadata** property on [ediscoveryAddToReviewSetOperation](/graph/api/resources/security-ediscoveryaddtoreviewsetoperation) and [ediscoveryEstimateOperation](/graph/api/resources/security-ediscoveryestimateoperation) to get the properties for report file metadata.

### Teamwork and communications | Messaging

[Send a message with a Loop component](/graph/api/chatmessage-post).

## July 2025: New in preview only

### Device and app management | Cloud PC

- Use the **provisionedDateTime** property on [cloudPC](/graph/api/resources/cloudpc?view=graph-rest-beta&preserve-view=true) to get the latest provisioned date time of a Cloud PC or to filter Cloud PCs by the latest provisioned date time.
- Use the **sharedDeviceDetail** property on [cloudPC](/graph/api/resources/cloudpc?view=graph-rest-beta&preserve-view=true) to get the Cloud PC device details (for example, **assignedToUserPrincipalName**) associated with the frontline shared service plan.
- [Retrieve the Cloud PC count grouped by status](/graph/api/cloudpc-retrievecloudpccountbystatus?view=graph-rest-beta&preserve-view=true).
- Enabled `retention` as a supported snapshot type for a [cloudPcSnapshot](/graph/api/resources/cloudpcsnapshot?view=graph-rest-beta&preserve-view=true).
- Use the **sizeInGB** property on [cloudPcDeviceImage](/graph/api/resources/cloudpcdeviceimage?view=graph-rest-beta&preserve-view=true) to get the size of the image in GB.
- Added [cloudPcBulkReinstallAgent](/graph/api/resources/cloudpcbulkreinstallagent?view=graph-rest-beta&preserve-view=true) as a new supported type for [cloudPcBulkAction](/graph/api/resources/cloudpcbulkaction?view=graph-rest-beta&preserve-view=true).
- Added information about the columns in the returned report when you specify `inaccessibleCloudPcReports` or `regionalInaccessibleCloudPcTrendReport` for the **reportName** property in your [cloudPcReports: getInaccessibleCloudPcReports](/graph/api/cloudpcreports-getinaccessiblecloudpcreports?view=graph-rest-beta&preserve-view=true) request.
- Added information about the columns in the returned report when you specify `regionalConnectionQualityTrendReport` for the **reportName** property in your [cloudPcReports: retrieveConnectionQualityReports](/graph/api/cloudpcreports-retrieveconnectionqualityreports?view=graph-rest-beta&preserve-view=true) request.

### Education

- [Get](/graph/api/reportsroot-list-readingcoachpassages?view=graph-rest-beta&preserve-view=true) a list of Reading Coach passages that were practiced by a student.
- Learn how to use Microsoft Graph to [create an assignment with a Speaker Progress resource](/graph/create-assignment-with-speaker-progress-resource).

### Files

- Each fragment uploaded during an [upload session](/graph/api/resources/uploadsession?view=graph-rest-beta&preserve-view=true) extends the expiration time.
- Enabled [site](/graph/api/resources/site?view=graph-rest-beta&preserve-view=true) as a supported resource for the [create](/graph/api/opentypeextension-post-opentypeextension?view=graph-rest-beta&preserve-view=true), [get](/graph/api/opentypeextension-get?view=graph-rest-beta&preserve-view=true), [update](/graph/api/opentypeextension-update?view=graph-rest-beta&preserve-view=true), and [delete](/graph/api/opentypeextension-delete?view=graph-rest-beta&preserve-view=true) operations of the [openTypeExtension](/graph/api/resources/opentypeextension?view=graph-rest-beta&preserve-view=true) resource.

### Identity and access | Identity and sign-in

Retired the previously deprecated Microsoft Entra lifecycle announcements APIs that stopped returning data in May 2025. Use the [Microsoft Entra release notes RSS feed instead](/entra/fundamentals/whats-new).

### Industry data ETL

Deprecated the **markAllStudentsAsMinors** property on [additionalUserOptions](/graph/api/resources/industrydata-additionaluseroptions?view=graph-rest-beta&preserve-view=true) in favor of the **studentAgeGroup** property.

### Security | eDiscovery

Use the **reportFileMetadata** property on [ediscoveryAddToReviewSetOperation](/graph/api/resources/security-ediscoveryaddtoreviewsetoperation?view=graph-rest-beta&preserve-view=true) and [ediscoveryEstimateOperation](/graph/api/resources/security-ediscoveryestimateoperation?view=graph-rest-beta&preserve-view=true) to get the properties for report file metadata.

## Contribute to Microsoft Graph

Are there scenarios you'd like Microsoft Graph to support?

- Suggest and vote for new features by using the [Microsoft Graph Feedback Portal](https://aka.ms/graphfeedback). Some new features originate as popular requests from the developer community. The Microsoft Graph team regularly evaluates customer needs and releases new features to the beta (`https://graph.microsoft.com/beta`) and v1.0 (`https://graph.microsoft.com/v1.0`) endpoints.

- [Join](https://aka.ms/m365-dev-call) the weekly Microsoft 365 platform community call and become an active member of the Microsoft Graph community. To discover the full calendar of developer calls, visit the [Microsoft 365 and Power Platform community page](https://aka.ms/community/calls).

- [Join](https://ux.microsoft.com/Panel/M365Devs?utm_source=graphDocs) our research panel to provide your input on our developer experiences.

## Related content
- [Microsoft Graph developer blog](https://devblogs.microsoft.com/microsoft365dev/category/microsoft-graph/).
- [Microsoft Graph API changelog](https://developer.microsoft.com/graph/changelog/).
- [Microsoft Graph what's new history](whats-new-earlier.md).
