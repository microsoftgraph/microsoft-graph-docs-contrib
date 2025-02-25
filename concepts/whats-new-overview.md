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

## February 2025: New and generally available 

### Security

Added [teamsMessageEvidence](/graph/api/resources/security-teamsmessageevidence) as a supported [alert evidence](/graph/api/resources/security-alertevidence).

### Teamwork and communications | Calls and online meetings

- [Fetch the recording of a Teams live event](/graph/api/onlinemeeting-get#example-6-fetch-the-recording-of-a-teams-live-event-deprecated).
- Enabled the **allowRecording**, **allowTranscription**, **anonymizeIdentityForRoles**, **broadcastSettings**, and **watermarkProtection** as supported properties in the [update](/graph/api/onlinemeeting-update) operation of the [onlineMeeting](/graph/api/resources/onlinemeeting).

### Teamwork and communications | Messaging

- [Get](/graph/api/channel-list-allmembers) all members from a channel, including direct and indirect members of a shared channel.
- [Create](/graph/api/chat-post#example-3-create-a-one-on-one-chat-with-installed-apps) a one-on-one chat with installed apps.
- [Create](/graph/api/chat-post#example-4-create-a-one-on-one-chat-with-rsc-granted-apps) a one-on-one chat with RSC-granted apps.

## February 2025: New in preview only 

### Backup storage

- Use the **protectionSources** property on [driveProtectionUnit](/graph/api/resources/driveprotectionunit?view=graph-rest-beta&preserve-view=true), [mailboxProtectionUnit](/graph/api/resources/mailboxprotectionunit?view=graph-rest-beta&preserve-view=true), and [siteProtectionUnit](/graph/api/resources/siteprotectionunit?view=graph-rest-beta&preserve-view=true) to get the sources by which a protection unit is currently protected.
- [Update](/graph/api/protectionrulebase-update?view=graph-rest-beta&preserve-view=true) a [driveProtectionRule](/graph/api/resources/driveprotectionrule?view=graph-rest-beta&preserve-view=true) or a [mailboxProtectionRule](/graph/api/resources/mailboxprotectionrule?view=graph-rest-beta&preserve-view=true).
- [Delete and unprotect](/graph/api/protectionrulebase-deleteandunprotect?view=graph-rest-beta&preserve-view=true) all the artifacts protected by a dynamic rule in a [driveProtectionRule](/graph/api/resources/driveprotectionrule?view=graph-rest-beta&preserve-view=true) or a [mailboxProtectionRule](/graph/api/resources/mailboxprotectionrule?view=graph-rest-beta&preserve-view=true).
- Enabled the **directoryObjectIds** and **drives** properties as supported properties when you use the [Create driveRestoreArtifactsBulkAdditionRequests](/graph/api/onedriveforbusinessrestoresession-post-driverestoreartifactsbulkadditionrequests) method.
- Enabled the **directoryObjectIds** and **mailboxes** properties as supported properties when you use the [Create mailboxRestoreArtifactsBulkAdditionRequest](/graph/api/exchangerestoresession-post-mailboxrestoreartifactsbulkadditionrequests) method.
- Enabled the **siteIds** and **siteWebUrls** properties as supported properties when you use the [Create siteRestoreArtifactsBulkAdditionRequests](/graph/api/sharepointrestoresession-post-siterestoreartifactsbulkadditionrequests) method.

### Compliance | eDiscovery

Added the **itemsToInclude**, **cloudAttachmentVersion**, **documentVersion**, **additionalDataOptions**, and **statisticsOptions** as supported properties and parameters across various resources and actions of the eDiscovery API.

### Device and app management | Cloud PC

- [Get the weekly regional aggregated report of inaccessible Cloud PC trends](/graph/api/cloudpcreports-getinaccessiblecloudpcreports?view=graph-rest-beta&preserve-view=true#example-2-get-the-weekly-regional-aggregated-report-of-inaccessible-cloud-pc-trends).
- [Get](/graph/api/cloudpcreports-retrievecloudpctroubleshootreports?view=graph-rest-beta&preserve-view=true) troubleshooting reports for Cloud PCs.

### Identity and access | Identity and sign-in

Replaced the following API operations for managing custom authentication extensions:

|Old endpoint | Recommended endpoint  |
|:--- |:---|
|`GET /identity/authenticationEventListeners/{listenerId}/microsoft.graph.onAttributeCollectionStartListener/handler/microsoft.graph.onAttributeCollectionStartCustomExtensionHandler/customExtension` <br/><br/>`GET /identity/authenticationEventListeners/{listenerId}/microsoft.graph.onAttributeCollectionSubmitListener/handler/microsoft.graph.onAttributeCollectionSubmitCustomExtensionHandler/customExtension` <br/></br> `GET /identity/authenticationEventListeners/{listenerId}/microsoft.graph.OnEmailOtpSendListener/handler/microsoft.graph.OnOtpSendCustomExtensionHandler/customExtension`|[GET /identity/customAuthenticationExtensions/{customAuthenticationExtensionId}](/graph/api/customauthenticationextension-get?view=graph-rest-beta&preserve-view=true)|
|`PUT /identity/authenticationEventListeners/{listenerId}/microsoft.graph.onAttributeCollectionStartListener/handler/microsoft.graph.onAttributeCollectionStartCustomExtensionHandler/customExtension/$ref` <br/><br/> `PUT /identity/authenticationEventListeners/{listenerId}/microsoft.graph.onAttributeCollectionSubmitListener/handler/microsoft.graph.onAttributeCollectionSubmitCustomExtensionHandler/customExtension/$ref` <br/><br/> `PUT /identity/authenticationEventListeners/{listenerId}/microsoft.graph.onEmailOtpSendListener/handler/microsoft.graph.onOtpSendCustomExtensionHandler/customExtension/$ref`|[PATCH /identity/customAuthenticationExtensions/{customAuthenticationExtensionId}](/graph/api/customauthenticationextension-update?view=graph-rest-beta&preserve-view=true)|

### Security

Added [teamsMessageEvidence](/graph/api/resources/security-teamsmessageevidence?view=graph-rest-beta&preserve-view=true) as a supported [alert evidence](/graph/api/resources/security-alertevidence?view=graph-rest-beta&preserve-view=true).

### Sites and lists

Enabled the application permission `Sites.Archive.All` for the [site: archive](/graph/api/site-archive?view=graph-rest-beta&preserve-view=true) and [site: unarchive](/graph/api/site-unarchive?view=graph-rest-beta&preserve-view=true) methods.

### Tasks and plans

- [List Planner plans](/graph/api/teamschannelplanner-list-plans?view=graph-rest-beta&preserve-view=true) owned by a shared channel in Teams.
- Updated the request URL of the [List businessScenarioTasks](/graph/api/businessscenarioplanner-list-tasks?view=graph-rest-beta&preserve-view=true) method to require the `$filter` query parameter to scope the request to an **externalObjectId**, **externalContextId**, or a **groupId**.

### Teamwork and communications | Calls and online meetings

Enabled the **allowRecording**, **allowTranscription**, **anonymizeIdentityForRoles**, **broadcastSettings**, and **watermarkProtection** as supported properties in the [update](/graph/api/onlinemeeting-update?view=graph-rest-beta&preserve-view=true) operation of the [onlineMeeting](/graph/api/resources/onlinemeeting?view=graph-rest-beta&preserve-view=true).

### Teamwork and communications | Messaging

- [Reply with quote](/graph/api/chatmessage-replywithquote?view=graph-rest-beta&preserve-view=true) to a single chat message or multiple chat messages in a chat.
- [Forward] (/graph/api/chatmessage-forwardtochat?view=graph-rest-beta&preserve-view=true) a chat message, a channel message, or a channel message reply to a chat.
- Introduced the following more granular delegated and application permissions for retrieving all members of a channel:
  - Use the `ChannelMember.Read.All` delegated permission instead of the `Group.Read.All` delegated permission.
  - Use the `ChannelMember.Read.Group` and `ChannelMember.ReadWrite.Group` application permissions for resource-specific consent.
- [Create](/graph/api/chat-post?view=graph-rest-beta&preserve-view=true#example-4-create-a-one-on-one-chat-with-rsc-granted-apps) a one-on-one chat with RSC-granted apps.

## January 2025: New and generally available 

### Files

Updated the endpoint of the [fileStorageContainer: restore](/graph/api/filestoragecontainer-restore) method.

### Identity and access | Identity and sign-in

Added riskEventType entry for the Suspicious API Traffic detection for [service principals](/graph/api/resources/serviceprincipalriskdetection).

### Microsoft Graph Bicep templates

You can now deploy the user resource in a Bicep template for your infrastructure as code (IaC) projects. For more information, see the [Microsoft.Graph users](/graph/templates/reference/users) Bicep reference.

### Teamwork and communications | Calls and online meetings

- Microsoft Teams custom meeting templates allow you to specify values for many of the meeting options available to meeting organizers. Use the **meetingTemplateId** property on [onlineMeeting](/graph/api/resources/onlinemeeting) to create an online meeting with a meeting template.
- Use the **allowBreakoutRooms**, **allowLiveShare**, **allowPowerPointSharing**, and **allowWhiteboard** to indicate whether breakout rooms, live share, PowerPoint live, and whiteboard features are enabled in an [onlineMeeting](/graph/api/resources/onlinemeeting) or [virtualEventSession](/graph/api/resources/virtualeventsession).
- Use the **allowedLobbyAdmitters** property on [onlineMeeting](/graph/api/resources/onlinemeeting) to get or set the users who can admit from the lobby.
- Use the **allowRecording** and **allowTranscription** properties on the [onlineMeeting](/graph/api/resources/onlinemeeting) and [virtualEventSession](/graph/api/resources/virtualeventsession) to indicate whether recording or transcription is enabled for a meeting or virtual event session.

### Teamwork and communications | Messaging

- [Get](/graph/api/chatmessage-get#example-5-get-a-chat-message-with-an--for-everyone) a chat message with an @mention for everyone.
- [Get](/graph/api/chatmessage-get#example-6-get-a-chat-message-with-a-forwarded-message) a chat message that has a forwarded message as an attachment.
- Use the **isHiddenForAllMembers** property to indicate whether a [chat](/graph/api/resources/chat) is hidden from all its members.

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

### Mailbox import and export

Use the new mailbox import and export APIs in Microsoft Graph to build solutions that integrate with mailbox resources for data import and export scenarios. For more information, see [Overview of the mailbox import and export APIs in Microsoft Graph](/graph/mailbox-import-export-concept-overview).

### Reports | Identity and access reports

Added `attributeCollectionStart`, `attributeCollectionSubmit`, and `emailOtpSend` as supported values for the **eventType** property of the [appliedAuthenticationEventListener](/graph/api/resources/appliedauthenticationeventlistener?view=graph-rest-beta&preserve-view=true) resource.

### Sites and lists

[Archive](/graph/api/site-archive?view=graph-rest-beta&preserve-view=true) or [unarchive](/graph/api/site-unarchive?view=graph-rest-beta&preserve-view=true) a SharePoint site.

### Tasks and plans

Use the [teamsChannel](/graph/api/resources/planner-overview?view=graph-rest-beta&preserve-view=true#container-type-teams-channel) container type to create plans in shared channels in Microsoft Teams.

### Teamwork and communications | Calls and online meetings

[Get](/graph/changenotifications-for-emergencycalls) change notifications for Microsoft Teams emergency call event updates.

### Teamwork and communications | Messaging

[Get](/graph/api/chatmessage-get?view=graph-rest-beta&preserve-view=true#example-7-get-a-chat-message-with-a-loop-component) a chat message that includes a Microsoft Loop component as two attachments.

## Contribute to Microsoft Graph

Are there scenarios you'd like Microsoft Graph to support?

- Suggest and vote for new features by using the [Microsoft Graph Feedback Portal](https://aka.ms/graphfeedback). Some new features originate as popular requests from the developer community. The Microsoft Graph team regularly evaluates customer needs and releases new features to the beta (`https://graph.microsoft.com/beta`) and v1.0 (`https://graph.microsoft.com/v1.0`) endpoints.

- [Join](https://aka.ms/m365-dev-call) the weekly Microsoft 365 platform community call and become an active member of the Microsoft Graph community. To discover the full calendar of developer calls, visit the [Microsoft 365 and Power Platform community page](https://aka.ms/community/calls).

- [Join](https://ux.microsoft.com/Panel/M365Devs?utm_source=graphDocs) our research panel to provide your input on our developer experiences.

## Related content
- [Microsoft Graph developer blog](https://devblogs.microsoft.com/microsoft365dev/category/microsoft-graph/).
- [Microsoft Graph API changelog](https://developer.microsoft.com/graph/changelog/).
- [Microsoft Graph what's new history](whats-new-earlier.md).
