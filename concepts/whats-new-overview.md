---
title: "What's new in Microsoft Graph"
description: "Find out what's new in Microsoft Graph APIs, SDKs, documentation, and other resources."
author: "lauragra"
ms.localizationpriority: high
ms.date: 01/01/2025
---

# What's new in Microsoft Graph

Microsoft Graph provides a unified programmability model that you can use to access data in Microsoft 365, Windows, and Enterprise Mobility + Security. This article provides information about what's new in Microsoft Graph APIs, documentation, SDKs, and more.

For more detailed API-level updates, see the [Microsoft Graph API changelog](https://developer.microsoft.com/graph/changelog/).

For details about previous updates to Microsoft Graph, see [Microsoft Graph what's new history](whats-new-earlier.md).

> [!IMPORTANT]
> Features in _preview_ status are subject to change without notice, and might not be promoted to generally available (GA) status. Don't use preview features in production apps.

## January 2025: New in preview only 

### Device and app management | Cloud PC

[Retry](/graph/api/cloudpcbulkaction-retry?view=graph-rest-beta&preserve-view=true) a bulk action with selected Cloud PCs.

### Identity and access | Directory management

- Use the **alternativeNames** property on [device](/graph/api/resources/device?view=graph-rest-beta&preserve-view=true) to get or set alternative names for a device.
- Use the [deviceTemplate](/graph/api/resources/devicetemplate?view=graph-rest-beta&preserve-view=true) resource and its associated methods to manage device templates for devices in Microsoft Entra ID.
- Use the [mutualTlsOauthConfiguration](/graph/api/resources/mutualtlsoauthconfiguration?view=graph-rest-beta&preserve-view=true) resource and its associated methods to manage certificate authorities that are permitted to issue certificates for a specific set of objects used for mTLS.

## December 2024: New and generally available

### Reports

[Microsoft Graph activity logs](/graph/microsoft-graph-activity-logs-overview), which provide an audit trail of all HTTP requests that Microsoft Graph received and processed for your tenant, are now available in China operated by 21Vianet.

### Security | Alerts and incidents

Enabled the **description**, **displayName**, **resolvingComment**, and **severity** properties as supported properties in an [Update incident](/graph/api/resources/security-incident) request.

### Teamwork and communications | Shift management

- [Stage the deletion](/graph/api/changetrackedentity-stagefordeletion) of an [openShift](/graph/api/resources/openshift), [shift](/graph/api/resources/shift), or [timeOff](/graph/api/resources/timeoff) instance in a [schedule](/graph/api/resources/schedule) in draft mode.
- Use the **eligibilityFilteringEnabledEntities** property on [workforceIntegration](/graph/api/resources/workforceintegration) to get or set support for viewing eligibility-filtered results.

### Users

Published the following lesser privileged permissions for managing specific scenarios on the [user](/graph/api/resources/user) object:

| Permission | Comments |
|--|--|
| User-Mail.ReadWrite.All | Least privileged permission to update the **otherMails** property. |
| User-PasswordProfile.ReadWrite.All | Least privileged permission to update the **passwordProfile** property. |
| User-Phone.ReadWrite.All | Least privileged permission to update the **businessPhones** and **mobilePhone** properties. Previously, only the *Directory.AccessAsUser.All* permission was supported to update the properties for admin user. We recommend you move the lesser privileged permission instead.|
| User.EnableDisableAccount.All | Least privileged permission to update the **accountEnabled** property. **Requires** *User.Read.All* permission as well. Previously, only the *Directory.AccessAsUser.All* permission was supported to update the account status for admin users. We recommend you move the lesser privileged permission instead.|
| User.DeleteRestore.All | Least privileged permission to [delete a user](/graph/api/user-delete), [restore a deleted user from the recycle bin](/graph/api/directory-deleteditems-restore), or [permanently delete a deleted user from the recycle bin](/graph/api/directory-deleteditems-delete). Also allows retrieving deleted users via the `/directory/deleteditems/microsoft.graph.user` endpoint. |

## December 2024: New in preview only

### Backup Storage

Use the new restore bulk addition request API for more convenient, efficient, and scalable restore solutions. This API is designed to streamline the restore process by allowing direct submission of restoration resources in a bulk request. The following resources are supported:

- [driveRestoreArtifactsBulkAdditionRequest](/graph/api/resources/driverestoreartifactsbulkadditionrequest?view=graph-rest-beta&preserve-view=true)
- [mailboxRestoreArtifactsBulkAdditionRequest](/graph/api/resources/mailboxrestoreartifactsbulkadditionrequest?view=graph-rest-beta&preserve-view=true)
- [siteRestoreArtifactsBulkAdditionRequest](/graph/api/resources/siterestoreartifactsbulkadditionrequest?view=graph-rest-beta&preserve-view=true)

### Device and app management | Cloud PC

- Use the **disasterRecoveryType** property on [cloudPcCrossRegionDisasterRecoverySetting](/graph/api/resources/cloudpccrossregiondisasterrecoverysetting?view=graph-rest-beta&preserve-view=true) to get or set the type of disaster recovery to perform when a disaster occurs on a user's Cloud PC.
- Use the **userInitiatedDisasterRecoveryAllowed** property on [cloudPcCrossRegionDisasterRecoverySetting](/graph/api/resources/cloudpccrossregiondisasterrecoverysetting?view=graph-rest-beta&preserve-view=true) to get or set whether the client allows the end user to initiate a disaster recovery activation.
- Deprecated the **crossRegionDisasterRecoveryEnabled** property of the [cloudPcCrossRegionDisasterRecoverySetting](/graph/api/resources/cloudpccrossregiondisasterrecoverysetting?view=graph-rest-beta&preserve-view=true) resource. Going forward use the **disasterRecoveryType** property.
- Enabled `endpointConnectivityCheckVMAgentEndPointCommunicationError` as a supported error type in the **errorType** property of the [cloudPcOnPremisesConnectionHealthCheck](/graph/api/resources/cloudpconpremisesconnectionhealthcheck?view=graph-rest-beta&preserve-view=true) resource.

### Identity and access | Directory management

While [restoring soft-deleted users](/graph/api/directory-deleteditems-restore?view=graph-rest-beta&preserve-view=true), you can now specify whether Microsoft Entra ID should replace the user's **userPrincipalName** with a new value.

### Identity and access | Identity and sign-in

- Use Microsoft Graph APIs to stay informed about the latest [product updates](/graph/api/resources/changeitembase?view=graph-rest-beta&preserve-view=true), including the [product roadmap](/graph/api/resources/roadmap?view=graph-rest-beta&preserve-view=true) and [change announcements](/graph/api/resources/announcement?view=graph-rest-beta&preserve-view=true), the programmatic alternative to the *What's new* tab on the Microsoft Entra admin center.
- You can now manage hardware OATH tokens for your organization and users programmatically via the following Microsoft Graph APIs:
  - [hardwareOathTokenAuthenticationMethodDevice resource type and its associated methods](/graph/api/resources/hardwareoathtokenauthenticationmethoddevice?view=graph-rest-beta&preserve-view=true) to manage the hardware tokens in your tenant, including assigning to users
  - [hardwareOathAuthenticationMethod resource type and its associated methods](/graph/api/resources/hardwareoathauthenticationmethod?view=graph-rest-beta&preserve-view=true) to manage tokens that are already assigned to users by activating or deactivating them

### Reports | Microsoft 365 monitoring reports

The Microsoft 365 monitoring APIs provide telemetry data to monitor the health of various Microsoft services within a Microsoft 365 subscription for your organization. Use the new operations in the [serviceActivity](/graph/api/resources/serviceactivity?view=graph-rest-beta&preserve-view=true) resource to get telemetry data for Exchange Online, Microsoft 365 Apps, and Microsoft Teams.

### Security | Alerts and incidents

Enabled the **description**, **displayName**, and **severity** properties as supported properties in an [Update incident](/graph/api/resources/security-incident?view=graph-rest-beta&preserve-view=true) request.

### Sites and lists

Create and manage a [news link page](/graph/api/resources/newslinkpage?view=graph-rest-beta&preserve-view=true) in SharePoint.

### Teamwork and communications | Calls and online meetings

The get and list operations of the [callRecording](/graph/api/resources/callrecording?view=graph-rest-beta&preserve-view=true) and [callTranscript](/graph/api/resources/calltranscript?view=graph-rest-beta&preserve-view=true) resources support the retrieval of call recordings or call transcripts from private chat meetings and channel meetings.

### Teamwork and communications | Messaging

Use the **firstChannelName** property on [team](/graph/api/resources/team?view=graph-rest-beta&preserve-view=true) to set the name of the first channel created in a team.

## Contribute to Microsoft Graph

Are there scenarios you'd like Microsoft Graph to support?

- Suggest and vote for new features by using the [Microsoft Graph Feedback Portal](https://aka.ms/graphfeedback). Some new features originate as popular requests from the developer community. The Microsoft Graph team regularly evaluates customer needs and releases new features to the beta (`https://graph.microsoft.com/beta`) and v1.0 (`https://graph.microsoft.com/v1.0`) endpoints.

- [Join](https://aka.ms/m365-dev-call) the weekly Microsoft 365 platform community call and become an active member of the Microsoft Graph community. To discover the full calendar of developer calls, visit the [Microsoft 365 and Power Platform community page](https://aka.ms/community/calls).

- [Join](https://ux.microsoft.com/Panel/M365Devs?utm_source=graphDocs) our research panel to provide your input on our developer experiences.

## Related content
- [Microsoft Graph developer blog](https://devblogs.microsoft.com/microsoft365dev/category/microsoft-graph/).
- [Microsoft Graph API changelog](https://developer.microsoft.com/graph/changelog/).
- [Microsoft Graph what's new history](whats-new-earlier.md).
