---
title: "What's new in Microsoft Graph"
description: "Find out what's new in Microsoft Graph APIs, SDKs, documentation, and other resources."
author: "lauragra"
ms.localizationpriority: high
---

# What's new in Microsoft Graph

Microsoft Graph provides a unified programmability model that you can use to access data in Microsoft 365, Windows, and Enterprise Mobility + Security. This article provides information about what's new in Microsoft Graph APIs, documentation, SDKs, and more.

For more detailed API-level updates, see the [Microsoft Graph API changelog](https://developer.microsoft.com/graph/changelog/).

For details about previous updates to Microsoft Graph, see [Microsoft Graph what's new history](whats-new-earlier.md).

> [!IMPORTANT]
> Features in _preview_ status are subject to change without notice, and might not be promoted to generally available (GA) status. Don't use preview features in production apps.

## May 2024: New and generally available

### Identity and access | Identity and sign-in

Customize the authentication experience for your customers by using [user flows in Microsoft Entra External ID in external tenants](/graph/api/resources/authenticationEventsFlow). In the self-service sign-up user flow, you can collect user attributes, disable sign up and only allow sign in, and also integrate with sytems that are external to Microsoft Entra ID.

### Teamwork and communications | Calls and online meetings

Get the list of [callRecord](/graph/api/resources/callrecords-callrecord) objects and their properties and the associated [participant](/graph/api/resources/callrecords-participant) objects for each **callRecord** using the following APIs:

- [List callRecords](/graph/api/callrecords-cloudcommunications-list-callrecords)
- [List participants_v2](/graph/api/callrecords-callrecord-list-participants_v2)

The following properties are deprecated:

- **organizer** property on [callRecord](/graph/api/resources/callrecords-callrecord) in favor of the **organizer_v2** relationship.
- **participants** property on [callRecord](/graph/api/resources/callrecords-callrecord) in favor of the **participants_v2** relationship.
- **identity** property on [participantEndpoint](/graph/api/resources/callrecords-participantendpoint) in favor of the **associatedIdentity** property.

## May 2024: New in preview only

### Backup storage

The new Microsoft 365 Backup Storage API enables partners to build customized versions of their applications that are integrated with the Microsoft 365 Backup Storage platform. This helps to ensure exceptionally fast recovery from typical business continuity and disaster recovery (BCDR) scenarios, such as ransomware attacks or accidental/malicious deletion or overwriting of content by employees. To explore the API, see [Backup restore root](/graph/api/resources/backuprestoreroot?view=graph-rest-beta&preserve-view=true).

### Change notifications

- Enabled change notifications support to the methods to [list](/graph/api/subscription-list?view=graph-rest-beta&preserve-view=true), [get](/graph/api/subscription-get?view=graph-rest-beta&preserve-view=true), [create](/graph/api/subscription-post-subscriptions?view=graph-rest-beta&preserve-view=true), [reauthorize](/graph/api/subscription-reauthorize?view=graph-rest-beta&preserve-view=true), [update](/graph/api/subscription-update?view=graph-rest-beta&preserve-view=true), and [delete](/graph/api/subscription-delete?view=graph-rest-beta&preserve-view=true) a subscription for [user-scoped chat notifications](/graph/teams-changenotifications-chat#subscribe-to-changes-at-the-user-level-preview).
- Enabled the `$notifyOnUserSpecificProperties` query parameter as a value of the **resource** property in the [subscription](/graph/api/resources/subscription?view=graph-rest-beta&preserve-view=true) resource. You can use the [notifyOnUserSpecificProperties](/graph/teams-changenotifications-chat#notification-payloads-for-user-specific-properties) parameter when you subscribe either to [user-scoped chat notifications](/graph/teams-changenotifications-chat#subscribe-to-changes-at-the-user-level-preview) or [notifications in a particular chat](/graph/teams-changenotifications-chat#subscribe-to-changes-in-a-particular-chat).

### Device and app management | Cloud PC

[Create a snapshot](/graph/api/cloudpc-createsnapshot?view=graph-rest-beta&preserve-view=true) for a specific Cloud PC device.

Deprecated the following methods on the [cloudPC](/graph/api/resources/cloudpc?view=graph-rest-beta&preserve-view=true) resource:
- [getCloudPcReviewStatus](/graph/api/manageddevice-getcloudpcreviewstatus?view=graph-rest-beta&preserve-view=true) method; use the [retrieveReviewStatus](/graph/api/cloudpc-retrievereviewstatus?view=graph-rest-beta&preserve-view=true) API insted.
- [setCloudPcReviewStatus](/graph/api/manageddevice-setcloudpcreviewstatus?view=graph-rest-beta&preserve-view=true) method; use the [setReviewStatus](/graph/api/cloudpc-setreviewstatus?view=graph-rest-beta&preserve-view=true) API instead.
- [resizeCloudPc](/graph/api/manageddevice-resizecloudpc?view=graph-rest-beta&preserve-view=true) method; use the [resize](/graph/api/cloudpc-resize?view=graph-rest-beta&preserve-view=true) API instead.
- [bulkReprovisionCloudPc](/graph/api/manageddevice-bulkreprovisioncloudpc?view=graph-rest-beta&preserve-view=true) method; use the [cloudPcBulkReprovision](/graph/api/resources/cloudpcbulkreprovision?view=graph-rest-beta&preserve-view=true) resource and its supported APIs instead.
- [bulkRestoreCloudPc](/graph/api/manageddevice-bulkrestorecloudpc?view=graph-rest-beta&preserve-view=true) method; use the [cloudPcBulkRestore](/graph/api/resources/cloudpcbulkrestore?view=graph-rest-beta&preserve-view=true) resource and its supported APIs instead.
- [bulkResize](/graph/api/cloudpc-bulkresize?view=graph-rest-beta&preserve-view=true) method; use the [cloudPcBulkResize](/graph/api/resources/cloudpcbulkresize?view=graph-rest-beta&preserve-view=true) resource and its supported APIs instead.

### Identity and access | Identity and sign-in

- Use the [externalAuthenticationMethodConfiguration resource type](/graph/api/resources/externalAuthenticationMethodConfiguration?view=graph-rest-beta&preserve-view=true) and its associated methods to manage the configuration of external authentication methods and define users who can use the external authentication methods to satisfy the second factor of Microsoft Entra ID multifactor authentication requirements.
- Added API operations to retrieve or update keys in an Azure AD B2C Identity Experience Framework (IEF) policy through the new [trustFrameworkKey_v2 resource type](/graph/api/resources/trustframeworkkey_v2?view=graph-rest-beta&preserve-view=true) and its associated methods.

The [custom claims policy](/graph/api/resources/customclaimspolicy) API allows application admins to customize the additional claims emitted in tokens affected by this policy. This API enables admins to manage the claims for their application from the Microsoft Entra portal and by using the Microsoft Graph API interchangeably, allowing more flexibility in their application claims management experience.

### Microsoft Graph Bicep templates

Use the new [Bicep templates for Microsoft Graph resources](https://aka.ms/graphbicep) to deploy Microsoft Graph resources for your infrastructure as code (IaC) projects. The following Microsoft Graph resources are currently supported as Bicep resource types:

- application
- appRoleAssignedTo
- group
- federatedIdentityCredential
- oauth2PermissionGrant
- servicePrincipal

Microsoft Graph Bicep is currently in preview, but can be used to deploy Microsoft Graph resources that are in `v1.0` and `beta`.

### Search

Use the **includeHiddenContent** property on the [sharePointOneDriveOptions](/graph/api/resources/sharepointonedriveoptions?view=graph-rest-beta&preserve-view=true) resource to include hidden content, such as archived content and SharePoint Embedded (RaaS), in search results.

### Security | eDiscovery

Export [results](/graph/api/security-ediscoverysearch-exportresult?view=graph-rest-beta&preserve-view=true) and a [report](/graph/api/security-ediscoverysearch-exportreport?view=graph-rest-beta&preserve-view=true) from an [ediscoverySearch](/graph/api/resources/security-ediscoverysearch?view=graph-rest-beta&preserve-view=true).

### Teamwork and communications | Calls and online meetings

- [Get](/graph/api/virtualeventwebinarregistrationconfiguration-get?view=graph-rest-beta&preserve-view=true) information about a [webinar registration configuration](/graph/api/resources/virtualeventwebinarregistrationconfiguration?view=graph-rest-beta&preserve-view=true).
- [List](/graph/api/virtualevent-list-presenters?view=graph-rest-beta&preserve-view=true), [create](/graph/api/virtualevent-post-presenters?view=graph-rest-beta&preserve-view=true), [get](/graph/api/virtualeventpresenter-get?view=graph-rest-beta&preserve-view=true), [update](/graph/api/virtualeventpresenter-update?view=graph-rest-beta&preserve-view=true), and [delete](/graph/api/virtualeventpresenter-delete?view=graph-rest-beta&preserve-view=true) presenters on a [virtualEventWebinar](/graph/api/resources/virtualeventwebinar?view=graph-rest-beta&preserve-view=true).
- Use the **callId** on [callRecording](/graph/api/resources/callrecording?view=graph-rest-beta&preserve-view=true) or [callTranscript](/graph/api/resources/calltranscript?view=graph-rest-beta&preserve-view=true) to identify the [call](/graph/api/resources/call?view=graph-rest-beta&preserve-view=true) that is related to a recording or transcript.
- Use the **contentCorrelationId** on [callRecording](/graph/api/resources/callrecording?view=graph-rest-beta&preserve-view=true) or [callTranscript](/graph/api/resources/calltranscript?view=graph-rest-beta&preserve-view=true) to correlate a transcript with its corresponding recording.
- Use the **endDateTime** on [callRecording](/graph/api/resources/callrecording?view=graph-rest-beta&preserve-view=true) or [callTranscript](/graph/api/resources/calltranscript?view=graph-rest-beta&preserve-view=true) to identify when a recording or transcript ends.

### Teamwork and communications | Messaging

- Use the **reactionContentUrl** property on [chatMessageReaction](/graph/api/resources/chatmessagereaction?view=graph-rest-beta&preserve-view=true) to represent the hosted content URL for a custom reaction in a [chatMessage](/graph/api/resources/chatmessage?view=graph-rest-beta&preserve-view=true).
- Use the `<customemoji></customemoji>` tag on the **content** property of the [itemBody](/graph/api/resources/itembody?view=graph-rest-beta&preserve-view=true) resource to represent custom emojis in the message body in a [chatMessage](/graph/api/resources/chatmessage?view=graph-rest-beta&preserve-view=true).
- Use the **isHiddenForAllMembers** property to indicate whether a [chat](/graph/api/resources/chat?view=graph-rest-beta&preserve-view=true) is hidden from all its members.
- Use the **createdBy** property on [chat](/graph/api/resources/chat?view=graph-rest-beta&preserve-view=true) to retrieve the entity that created the chat.

## Contribute to Microsoft Graph

Are there scenarios you'd like Microsoft Graph to support?

- Suggest and vote for new features by using the [Microsoft Graph Feedback Portal](https://aka.ms/graphfeedback). Some new features originate as popular requests from the developer community. The Microsoft Graph team regularly evaluates customer needs and releases new features to the beta (`https://graph.microsoft.com/beta`) and v1.0 (`https://graph.microsoft.com/v1.0`) endpoints.

- [Join](https://aka.ms/m365-dev-call) the weekly Microsoft 365 platform community call and become an active member of the Microsoft Graph community. To discover the full calendar of developer calls, visit the [Microsoft 365 and Power Platform community page](https://aka.ms/community/calls).

- [Join](https://ux.microsoft.com/Panel/M365Devs?utm_source=graphDocs) our research panel to provide your input on our developer experiences.

## Related content
- [Microsoft Graph developer blog](https://devblogs.microsoft.com/microsoft365dev/category/microsoft-graph/).
- [Microsoft Graph API changelog](https://developer.microsoft.com/graph/changelog/).
- [Microsoft Graph what's new history](whats-new-earlier.md).
