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

## January 2025: New and generally available 

### Files

Updated the endpoint of the [fileStorageContainer: restore](/graph/api/filestoragecontainer-restore) method.

### Identity and access | Identity and sign-in

Added riskEventType entry for the Suspicious API Traffic detection for [service principals](/graph/api/resources/serviceprincipalriskdetection?view=graph-rest-1.0&preserve-view=true).

### Microsoft Graph Bicep templates

You can now deploy the user resource in a Bicep template for your infrastructure as code (IaC) projects. For more information, see the [Microsoft.Graph users](/graph/templates/reference/users) Bicep reference.

### Teamwork and communications | Calls and online meetings

- Microsoft Teams custom meeting templates allow you to specify values for many of the meeting options available to meeting organizers. Use the **meetingTemplateId** property on [onlineMeeting](/graph/api/resources/onlinemeeting) to create an online meeting with a meeting template.
- Use the **allowBreakoutRooms**, **allowLiveShare**, **allowPowerPointSharing**, and **allowWhiteboard** to indicate whether breakout rooms, live share, PowerPoint live, and whiteboard features are enabled in an [onlineMeeting](/graph/api/resources/onlinemeeting) or [virtualEventSession](/graph/api/resources/virtualeventsession).
- Use the **allowedLobbyAdmitters** property on [onlineMeeting](/graph/api/resources/onlinemeeting) to get or set the users who can admit from the lobby.

### Teamwork and communications | Messaging

- [Get](/graph/api/chatmessage-get#example-5-get-a-chat-message-with-an--for-everyone) a chat message with an @mention for everyone.
- [Get](/graph/api/chatmessage-get#example-6-get-a-chat-message-with-a-forwarded-message) a chat message that has a forwarded message as an attachment.

## January 2025: New in preview only 

### Change notifications

Enabled change notifications support to the methods to [list](/graph/api/subscription-list?view=graph-rest-beta&preserve-view=true), [get](/graph/api/subscription-get?view=graph-rest-beta&preserve-view=true), [create](/graph/api/subscription-post-subscriptions?view=graph-rest-beta&preserve-view=true), [update](/graph/api/subscription-update?view=graph-rest-beta&preserve-view=true), [delete](/graph/api/subscription-delete?view=graph-rest-beta&preserve-view=true), and [reauthorize](/graph/api/subscription-reauthorize?view=graph-rest-beta&preserve-view=true) a subscription for [aiInteraction](/graph/api/resources/aiinteraction?view=graph-rest-beta&preserve-view=true).

### Device and app management | Cloud PC

- [Retry](/graph/api/cloudpcbulkaction-retry?view=graph-rest-beta&preserve-view=true) a bulk action with selected Cloud PCs.
- Use the **productType** property on [cloudPC](/graph/api/resources/cloudpc?view=graph-rest-beta&preserve-view=true) to get the product type of a Cloud PC or to filter Cloud PCs by product type.
- Deprecated the [getCloudPcPerformanceReport](/graph/api/cloudpcreports-getcloudpcperformancereport?view=graph-rest-beta&preserve-view=true) method of the [cloudPcReports](/graph/api/resources/cloudpcreports?view=graph-rest-beta&preserve-view=true) resource in favor of the [retrieveCloudPcTenantMetricsReport](/graph/api/cloudpcreports-retrievecloudpctenantmetricsreport?view=graph-rest-beta&preserve-view=true) method.

### Files

Updated the endpoint of the [fileStorageContainer: restore](/graph/api/filestoragecontainer-restore?view=graph-rest-beta&preserve-view=true) method.

### Identity and access | Directory management

- Use the **alternativeNames** property on [device](/graph/api/resources/device?view=graph-rest-beta&preserve-view=true) to get or set alternative names for a device.
- Use the [deviceTemplate](/graph/api/resources/devicetemplate?view=graph-rest-beta&preserve-view=true) resource and its associated methods to manage device templates for devices in Microsoft Entra ID.
- Use the [mutualTlsOauthConfiguration](/graph/api/resources/mutualtlsoauthconfiguration?view=graph-rest-beta&preserve-view=true) resource and its associated methods to manage certificate authorities that are permitted to issue certificates for a specific set of objects used for mTLS.

### Identity and access | Identity and sign-in

Added support for configuring a custom email provider for one-time passcodes (OTP) in Microsoft Entra External ID by using the following objects:
- The [onOtpSendCustomExtension resource type](/graph/api/resources/onotpsendcustomextension?view=graph-rest-beta&preserve-view=true) to configure the custom authentication extension that contains configuration details of the external service that might be an Azure Function.
- The [onEmailOtpSendListener resource type](/graph/api/resources/onemailotpsendlistener?view=graph-rest-beta&preserve-view=true) to configure the event listener that is triggered to send the OTP prompt to the user, based on the configuration details in the **onOtpSendCustomExtension** object.

The functionality also allows you to configure the default fallback option when the custom authentication extension isn't successfully called.

### Industry data ETL

Use the [start](/graph/api/industrydata-industrydatarun-start?view=graph-rest-beta&preserve-view=true) operation on the [industryDataRun](/graph/api/resources/industrydata-industrydatarun?view=graph-rest-beta&preserve-view=true) resource to perform an on-demand run, with throttling limits of up to five successful runs every 12 hours.

### Tasks and plans

- Use the [teamsChannel](/graph/api/resources/planner-overview?view=graph-rest-beta&preserve-view=true#container-type-teams-channel) container type to create plans in shared channels in Microsoft Teams.
- [List Planner plans](/graph/api/teamschannelplanner-list-plans?view=graph-rest-beta&preserve-view=true) owned by a shared channel in Teams.

### Teamwork and communications | Calls and online meetings

Use the **sequenceNumber** property on [presence](/graph/api/resources/presence?view=graph-rest-beta&preserve-view=true) to get the lexicographically sortable String stamp that represents the version of a **presence** object.

## December 2024: New and generally available

### Reports

[Microsoft Graph activity logs](/graph/microsoft-graph-activity-logs-overview), which provide an audit trail of all HTTP requests that Microsoft Graph received and processed for your tenant, are now available in China operated by 21Vianet.

### Security | Alerts and incidents

Enabled the **description**, **displayName**, **resolvingComment**, and **severity** properties as supported properties in an [Update incident](/graph/api/resources/security-incident) request.

### Teamwork and communications | Calls and online meetings

- Use the following new methods for virtual events that are of the [virtualEventTownhall](/graph/api/resources/virtualeventtownhall?view=graph-rest-1.0&preserve-view=true) type:
  - [List](/graph/api/virtualeventsroot-list-townhalls?view=graph-rest-1.0&preserve-view=true) all virtual event town halls created in a tenant.
  - [Get](/graph/api/virtualeventtownhall-getbyuseridandrole?view=graph-rest-1.0&preserve-view=true) the virtual event town halls where a specified user is an organizer or coorganizer.
  - [Get](/graph/api/virtualeventtownhall-getbyuserrole?view=graph-rest-1.0&preserve-view=true) the virtual event town halls where the signed-in user is an organizer or coorganizer.
- [Link](/graph/api/virtualevent-setexternaleventinformation?view=graph-rest-1.0&preserve-view=true) external event information to a [virtualEventTownhall](/graph/api/resources/virtualeventtownhall?view=graph-rest-1.0&preserve-view=true) or [virtualEventWebinar](/graph/api/resources/virtualeventwebinar?view=graph-rest-1.0&preserve-view=true) by setting an **externalEventId**.
- Use the **externalEventInformation** on [virtualEventTownhall](/graph/api/resources/virtualeventtownhall?view=graph-rest-1.0&preserve-view=true) and [virtualEventWebinar](/graph/api/resources/virtualeventwebinar?view=graph-rest-1.0&preserve-view=true) to identify the external event information of a virtual event.
- Use the **externalRegistrationInformation** property on [virtualEventRegistration](/graph/api/resources/virtualeventregistration?view=graph-rest-1.0&preserve-view=true) to get or set the external information for a virtual event registration.

### Teamwork and communications | Shift management

- [Stage the deletion](/graph/api/changetrackedentity-stagefordeletion) of an [openShift](/graph/api/resources/openshift), [shift](/graph/api/resources/shift), or [timeOff](/graph/api/resources/timeoff) instance in a [schedule](/graph/api/resources/schedule) in draft mode.
- Use the **eligibilityFilteringEnabledEntities** property on [workforceIntegration](/graph/api/resources/workforceintegration) to get or set support for viewing eligibility-filtered results.

### Users

Published the following lesser privileged permissions for managing specific scenarios on the [user](/graph/api/resources/user) object:

| Permission | Comments |
|--|--|
| User-Mail.ReadWrite.All | Least privileged permission to update the **otherMails** property. |
| User-PasswordProfile.ReadWrite.All | Least privileged permission to read and write password reset-related properties. |
| User-Phone.ReadWrite.All | Least privileged permission to update the **businessPhones** and **mobilePhone** properties. Previously, only the *Directory.AccessAsUser.All* permission was supported to update the properties for admin user. We recommend you move the lesser privileged permission instead.|
| User.EnableDisableAccount.All | Least privileged permission to update the **accountEnabled** property. **Requires** *User.Read.All* permission as well. Previously, only the *Directory.AccessAsUser.All* permission was supported to update the account status for admin users. We recommend you move the lesser privileged permission instead.|
| User.DeleteRestore.All | Least privileged permission to [delete a user](/graph/api/user-delete), [restore a deleted user from the recycle bin](/graph/api/directory-deleteditems-restore), or [permanently delete a deleted user from the recycle bin](/graph/api/directory-deleteditems-delete). Also allows retrieving deleted users via the `/directory/deleteditems/microsoft.graph.user` endpoint. |

## December 2024: New in preview only

### Mailbox import and export

Use the new mailbox import and export APIs in Microsoft Graph to build solutions that integrate with mailbox resources for data import and export scenarios. For more information, see [Overview of the mailbox import and export APIs in Microsoft Graph](/graph/mailbox-import-export-concept-overview).

### Tasks and plans

Use the [teamsChannel](/graph/api/resources/planner-overview?view=graph-rest-beta&preserve-view=true#container-type-teams-channel) container type to create plans in shared channels in Microsoft Teams.

### Teamwork and communications | Messaging

- [Get](/graph/api/chatmessage-get?view=graph-rest-beta&preserve-view=true#example-7-get-a-chat-message-with-a-loop-component) a chat message that includes a Microsoft Loop component as two attachments.

## Contribute to Microsoft Graph

Are there scenarios you'd like Microsoft Graph to support?

- Suggest and vote for new features by using the [Microsoft Graph Feedback Portal](https://aka.ms/graphfeedback). Some new features originate as popular requests from the developer community. The Microsoft Graph team regularly evaluates customer needs and releases new features to the beta (`https://graph.microsoft.com/beta`) and v1.0 (`https://graph.microsoft.com/v1.0`) endpoints.

- [Join](https://aka.ms/m365-dev-call) the weekly Microsoft 365 platform community call and become an active member of the Microsoft Graph community. To discover the full calendar of developer calls, visit the [Microsoft 365 and Power Platform community page](https://aka.ms/community/calls).

- [Join](https://ux.microsoft.com/Panel/M365Devs?utm_source=graphDocs) our research panel to provide your input on our developer experiences.

## Related content
- [Microsoft Graph developer blog](https://devblogs.microsoft.com/microsoft365dev/category/microsoft-graph/).
- [Microsoft Graph API changelog](https://developer.microsoft.com/graph/changelog/).
- [Microsoft Graph what's new history](whats-new-earlier.md).
