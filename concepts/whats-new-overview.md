---
title: "What's new in Microsoft Graph"
description: "Find out what's new in Microsoft Graph APIs, SDKs, documentation, and other resources."
author: "lauragra"
ms.localizationpriority: high
ms.date: 01/12/2026
ms.topic: whats-new
---

# What's new in Microsoft Graph

Microsoft Graph provides a unified programmability model that you can use to access data in Microsoft 365, Windows, and Enterprise Mobility + Security. This article provides information about what's new in Microsoft Graph APIs, documentation, SDKs, and more.

For more detailed API-level updates, see the [Microsoft Graph API changelog](https://developer.microsoft.com/graph/changelog/).

For details about previous updates to Microsoft Graph, see [Microsoft Graph what's new history](whats-new-earlier.md).

> [!IMPORTANT]
> Features in _preview_ status are subject to change without notice, and might not be promoted to generally available (GA) status. Don't use preview features in production apps.

## January 2026: New in preview only

### Security | Cloud zones

Added support for managing *zones* in Microsoft Defender for Cloud, enabling organizations to segment multi-cloud environments (Azure, AWS, GCP, and DevOps or registry sources) into logical groupings for access and security management at scale. The [zone](/graph/api/resources/security-zone?view=graph-rest-beta&preserve-view=true) resource type and its associated [environment](/graph/api/resources/security-environment?view=graph-rest-beta&preserve-view=true) resource let you consistently apply least-privilege access controls and manage collections of attached environments within Microsoft Graph.

## December 2025: New and generally available

### Reports | Identity and access reports

- Added `qrCode` as a new supported value for the **usageAuthMethod** enumeration which is the type for the **authMethod** property on [credentialUsageSummary](/graph/api/resources/credentialusagesummary?view=graph-rest-beta&preserve-view=true), [userCredentialUsageDetails](/graph/api/resources/usercredentialusagedetails?view=graph-rest-beta&preserve-view=true), [userEventsSummary](/graph/api/resources/usereventssummary?view=graph-rest-beta&preserve-view=true), and [userRegistrationActivitySummary](/graph/api/resources/userregistrationactivitysummary?view=graph-rest-beta&preserve-view=true) resources. This value represents the use of the [QR code](/graph/api/resources/qrcodepinauthenticationmethod?view=graph-rest-beta&preserve-view=true) as an authentication method.

### Reports | Microsoft 365 usage reports

Going forward, use the Microsoft 365 Copilot usage APIs under the `/copilot` URL path segment. For more information, see:
- [Copilot report root](/microsoft-365-copilot/extensibility/api/admin-settings/reports/resources/copilotreportroot)
- [Get Copilot user count summary](/microsoft-365-copilot/extensibility/api/admin-settings/reports/copilotreportroot-getmicrosoft365copilotusercountsummary)
- [Get Copilot user count trend](/microsoft-365-copilot/extensibility/api/admin-settings/reports/copilotreportroot-getmicrosoft365copilotusercounttrend)
- [Get Copilot usage user detail](/microsoft-365-copilot/extensibility/api/admin-settings/reports/copilotreportroot-getmicrosoft365copilotusageuserdetail)

### Security

Made the following updates to APIs for managing Microsoft Defender for Identity (MDI) sensors:
- Added the **domainName** property to the [sensorCandidate](/graph/api/resources/security-sensorcandidate) resource to specify the domain name of the sensor.
- Added the **serviceStatus** property to the [sensor](/graph/api/resources/security-sensor) resource to indicate the service status. The possible values are: `stopped`, `starting`, `running`, `disabled`, `onboarding`, `unknown`, `unknownFutureValue`.

### Teamwork and communications | Apps

The `TeamsAppInstallation.ManageSelectedForTeam.All` is the least privileged application permission required to install or upgrade a Teams app that requires consent to [resource-specific consent (RSC)](/microsoftteams/platform/graph-api/rsc/resource-specific-consent) permissions when using the [teamsAppInstallation in a team: upgrade](/graph/api/team-teamsappinstallation-upgrade) API.

## January 2026: New in preview only

### Security | Data security and compliance

- Deprecated the **accessedResources** property on [processConversationMetadata](/graph/api/resources/processconversationmetadata?view=graph-rest-beta&preserve-view=true) in favor of the **accessedResources_v2** property.
- Use the **accessedResources_v2** property on [processConversationMetadata](/graph/api/resources/processconversationmetadata?view=graph-rest-beta&preserve-view=true) to get detailed information about resources accessed during the conversation, including identifiers, access type, and status.
- Use the **agents** property on [processConversationMetadata](/graph/api/resources/processconversationmetadata?view=graph-rest-beta&preserve-view=true) to get information about AI agents that participated in the preparation of the message.

### Teamwork and communications | Apps

The `TeamsAppInstallation.ManageSelectedForTeam.All` is the least privileged application permission required to install or upgrade a Teams app that requires consent to [resource-specific consent (RSC)](/microsoftteams/platform/graph-api/rsc/resource-specific-consent) permissions when using the [teamsAppInstallation in a team: upgrade](/graph/api/team-teamsappinstallation-upgrade?view=graph-rest-beta&preserve-view=true) API.

## December 2025: New and generally available

### Calendars | Places

- Use the **wifiState** property on [building](/graph/api/resources/building) to indicate whether a building has Wi-Fi.
- Use the **heightAdjustableState** property on [desk](/graph/api/resources/desk) to indicate whether a desk is height adjustable.
- Use the **teamsEnabledState** property on [room](/graph/api/resources/room) to indicate whether a room is enabled for Microsoft Teams.
- Use the **placeId** property on [room](/graph/api/resources/room) and [workspace](/graph/api/resources/workspace) as an alternative immutable unique identifier.
- Use the [unavailablePlaceMode](/graph/api/resources/unavailableplacemode) resource to indicate why a **desk** or **workspace** is marked as unavailable for booking.

### Teamwork and communications | Calls and online meetings

- Use the **sensitivityLabelAssignment** property on [onlineMeeting](/graph/api/resources/onlinemeeting) and [virtualEventSession](/graph/api/resources/virtualeventsession) to specify the sensitivity label applied to the Teams meeting.
- Use the **expiryDateTime** property on [onlineMeeting](/graph/api/resources/onlinemeeting) and [virtualEventSession](/graph/api/resources/virtualeventsession) to indicate the date and time when the meeting resource expires.
- Use the **meetingSpokenLanguageTag** property on [onlineMeeting](/graph/api/resources/onlinemeeting) and [virtualEventSession](/graph/api/resources/virtualeventsession) to specify the spoken language used during the meeting for recording and transcription purposes.
- Use the **meetingOptionsWebUrl** property on [onlineMeeting](/graph/api/resources/onlinemeeting) and [virtualEventSession](/graph/api/resources/virtualeventsession) to get the URL to the Teams meeting options page for the specified meeting.

### Teamwork and communications | Messaging

When `$expand=members` is included, the [List chats](/graph/api/chat-list) API returns a maximum of 25 items, even if a larger `$top` value is specified.

## December 2025: New in preview only

### Calendars | Places

[Upsert](/graph/api/place-patch-places?view=graph-rest-beta&preserve-view=true) one or more [place](/graph/api/resources/place?view=graph-rest-beta&preserve-view=true) objects in async mode.

### Security

Added support for [mailboxConfigurationEvidence](/graph/api/resources/security-mailboxconfigurationevidence) and [activeDirectoryDomainEvidence](/graph/api/resources/security-activedirectorydomainevidence) evidence types in [security alerts](/graph/api/resources/security-alert)


## November 2025: New in preview only

Manage flexible work hours and locations using the following resources: [workHoursAndLocationsSetting](/graph/api/resources/workhoursandlocationssetting?view=graph-rest-beta&preserve-view=true), [workPlanOccurrence](/graph/api/resources/workplanoccurrence?view=graph-rest-beta&preserve-view=true), and [workPlanRecurrence](/graph/api/resources/workplanrecurrence?view=graph-rest-beta&preserve-view=true). These resources allow you to define recurring and specific work patterns, locations, and time off for modern hybrid scenarios.

### Teamwork and communications | Apps

Manage Teams apps at the channel level within a team using the following APIs:
- [List apps](/graph/api/channel-list-enabledapps?view=graph-rest-beta&preserve-view=true) in a channel.
- [Get an app](/graph/api/teamsapp-get?view=graph-rest-beta&preserve-view=true) in a channel.
- [Enable a new Teams app](/graph/api/channel-post-enabledapps?view=graph-rest-beta&preserve-view=true) in a channel.
- [Disable an app](/graph/api/channel-delete-enabledapps?view=graph-rest-beta&preserve-view=true) in a channel.

## September 2025: New and generally available

### Applications

Use the **signInAudienceRestrictions** property on the [application](/graph/api/resources/application?view=graph-rest-beta&preserve-view=true) resource to restrict multitenant applications to specific Microsoft Entra tenants. This feature enables organizations to limit application usage to a specific list of allowed tenant IDs, providing enhanced security and compliance controls for multitenant scenarios.

### Device and app management | Cloud printing

Use the new supported [media sizes](/graph/api/resources/printercapabilities?view=graph-rest-beta&preserve-view=true#mediasizes-values) in the **mediaSizes** property of the [printerCapabilities](/graph/api/resources/printercapabilities?view=graph-rest-beta&preserve-view=true) resource.

### Files

- Use the SharePoint cross-tenant migration task APIs in Microsoft Graph to enable organizations to manage the tasks during tenant-to-tenant migrations. For more information, see [sharePointMigrationTask](/graph/api/resources/sharepointmigrationtask?view=graph-rest-beta&preserve-view=true).
- Use the **deleted** property on [sharePointGroupIdentityMapping](/graph/api/resources/sharepointgroupidentitymapping?view=graph-rest-beta&preserve-view=true) and [sharePointUserIdentityMapping](/graph/api/resources/sharepointuseridentitymapping?view=graph-rest-beta&preserve-view=true) to indicate that an identity mapping was deleted successfully.

### Identity and access | Governance

- Use the following resources to represent the data sent to Azure Logic Apps as part of a custom extension callout request when a custom extension in a catalog is used:
  - [accessPackageAssignmentCalloutData](/graph/api/resources/accesspackageassignmentcalloutdata?view=graph-rest-beta&preserve-view=true) - for access package assignments
  - [accessPackageAssignmentRequestCalloutData](/graph/api/resources/accesspackageassignmentrequestcalloutdata?view=graph-rest-beta&preserve-view=true) - for access package assignment requests
- Added the [controlConfiguration](/graph/api/resources/controlconfiguration?view=graph-rest-beta&preserve-view=true) resource and the **controlConfigurations** relationship to the [entitlementManagement](/graph/api/resources/entitlementmanagement?view=graph-rest-beta&preserve-view=true) resource to represent the policies that control lifecycle and access to access packages across the organization.
- Added the [entraIdProtectionRiskyUserApproval](/graph/api/resources/entraidprotectionriskyuserapproval?view=graph-rest-beta&preserve-view=true) resource to represent the approval configuration for risky users detected by Microsoft Entra ID Protection.
- Added the [insiderRiskyUserApproval](/graph/api/resources/insiderriskyuserapproval?view=graph-rest-beta&preserve-view=true) resource to represent the approval configuration for risky users detected by Microsoft Purview Insider Risk Management.

### Identity and access | Identity and sign-in

Added the `microsoftRevokedSessions` value to the [riskDetail](/graph/api/resources/riskdetail?view=graph-rest-beta&preserve-view=true) enumeration to indicate that Microsoft revoked sessions. This enumeration member applies to the following Microsoft Entra Identity Protection resources: [riskDetection](/graph/api/resources/riskdetection?view=graph-rest-beta&preserve-view=true), [riskUserActivity](/graph/api/resources/riskuseractivity?view=graph-rest-beta&preserve-view=true), [riskyUser](/graph/api/resources/riskyuser?view=graph-rest-beta&preserve-view=true), and [signIn](/graph/api/resources/signin?view=graph-rest-beta&preserve-view=true).

### Identity and access | Network access

Customize the block page message displayed to users when Global Secure Access blocks their access to web resources. Use the [customBlockPage](/graph/api/resources/networkaccess-customblockpage?view=graph-rest-beta&preserve-view=true) resource to configure custom messages with limited markdown support.

### Mail

- Use the [userConfiguration](/graph/api/resources/userconfiguration?view=graph-rest-beta&preserve-view=true) resource and its associated methods to manage user-specific settings, metadata, or application data tied to mailbox folders, using XML, binary, or dictionary formats.
- The [callRecord: getPstnCalls](/graph/api/callrecords-callrecord-getpstncalls?view=graph-rest-beta&preserve-view=true) API now clarifies that it doesn't return information for **Telstra** calling plans only.
- The following endpoints are no longer supported for managing [user work location](/graph/api/resources/userworklocation?view=graph-rest-beta&preserve-view=true):
  - `POST /users/{usersId}/presence/clearAutomaticLocation`
  - `POST /communications/presences/{presenceId}/clearAutomaticLocation`
  - `POST /users/{usersId}/presence/clearLocation`
  - `POST /communications/presences/{presenceId}/clearLocation`
  - `POST /users/{usersId}/presence/setAutomaticLocation`
  - `POST /communications/presences/{presenceId}/setAutomaticLocation`
  - `POST /users/{usersId}/presence/setManualLocation`
  - `POST /communications/presences/{presenceId}/setManualLocation`

### Reports | Identity and access reports

- Removed the **conditionalAccessAudience** resource type. The return type of the **conditionalAccessAudiences** property of the [signIn resource type](/graph/api/resources/signin?view=graph-rest-beta&preserve-view=true) is a collection of String objects and not the **conditionalAccessAudience** complex type.

### Teamwork and communications | Calls and online meetings

- When `$expand=members` is included, the [List chats](/graph/api/chat-list?view=graph-rest-beta&preserve-view=true) API returns a maximum of 25 items, even if a larger `$top` value is specified.
- The following endpoints are no longer supported for managing [work location](/graph/api/resources/userworklocation?view=graph-rest-beta&preserve-view=true) for a user:
  - `POST /users/{usersId}/presence/clearAutomaticLocation`
  - `POST /communications/presences/{presenceId}/clearAutomaticLocation`
  - `POST /users/{usersId}/presence/clearLocation`
  - `POST /communications/presences/{presenceId}/clearLocation`
  - `POST /users/{usersId}/presence/setAutomaticLocation`
  - `POST /communications/presences/{presenceId}/setAutomaticLocation`
  - `POST /users/{usersId}/presence/setManualLocation`
  - `POST /communications/presences/{presenceId}/setManualLocation`

### Teamwork and communications | Messaging

- Added support for channel membership subscriptions to receive [indirect membership change notifications](../concepts/teams-changenotifications-channelmembership.md) for shared channels.
- Introduced a new change notification for shared channel membership when a channel is [shared with or unshared from a team](../concepts/teams-changenotifications-channelmembership.md).
- [Get](/graph/api/channel-get-allmembers?view=graph-rest-beta&preserve-view=true) a specific member from the channel **allMembers** collection. This API provides unified access to both direct and indirect members across all channel types, including shared channels.
- [Start](/graph/api/channel-startmigration?view=graph-rest-beta&preserve-view=true) the migration of external messages by enabling migration mode in an existing channel.
- [Start](/graph/api/chat-startmigration?view=graph-rest-beta&preserve-view=true) the migration of external messages by enabling migration mode in an existing chat.
- [Complete](/graph/api/chat-completemigration?view=graph-rest-beta&preserve-view=true) the migration of external messages by removing migration mode from a chat.
- Use the **layoutType** property on the [channel](/graph/api/resources/channel?view=graph-rest-beta&preserve-view=true) resource to create channels with different conversation experiences and switch between them at any time. The property supports two values: `post` for traditional post-reply format and `chat` for a chat-like threading experience. You can set the layout type when [creating a channel](/graph/api/channel-post?view=graph-rest-beta&preserve-view=true) and [update it](/graph/api/channel-patch?view=graph-rest-beta&preserve-view=true) later to switch between layouts.

## Contribute to Microsoft Graph

Are there scenarios you'd like Microsoft Graph to support?

- Suggest and vote for new features by using the [Microsoft Graph Feedback Portal](https://aka.ms/graphfeedback). Some new features originate as popular requests from the developer community. The Microsoft Graph team regularly evaluates customer needs and releases new features to the beta (`https://graph.microsoft.com/beta`) and v1.0 (`https://graph.microsoft.com/v1.0`) endpoints.

- [Join](https://aka.ms/m365-dev-call) the weekly Microsoft 365 platform community call and become an active member of the Microsoft Graph community. To discover the full calendar of developer calls, visit the [Microsoft 365 and Power Platform community page](https://aka.ms/community/calls).

- [Join](https://ux.microsoft.com/Panel/M365Devs?utm_source=graphDocs) our research panel to provide your input on our developer experiences.

## Related content
- [Microsoft Graph developer blog](https://devblogs.microsoft.com/microsoft365dev/category/microsoft-graph/).
- [Microsoft Graph API changelog](https://developer.microsoft.com/graph/changelog/).
- [Microsoft Graph what's new history](whats-new-earlier.md).
