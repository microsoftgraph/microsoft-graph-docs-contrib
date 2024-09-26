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

## September 2024: New and generally available

### Change notifications

Announced the deprecation of shared access signatures (SAS) for authenticating Event Hubs for [Microsoft Graph change notifications](/graph/change-notifications-delivery-event-hubs). We recommend using Microsoft Entra ID role-based access control (RBAC) instead. Follow the [guidance to migrate to RBAC](/graph/change-notifications-delivery-event-hubs#migrate-an-event-hub-authentication-to-microsoft-entra-id-rbac).

### Security | Alerts and incidents

- Use the **dnsDomain** property on [deviceEvidence](/graph/api/resources/security-deviceevidence) to get the DNS domain that a computer belongs to.
- Use the **hostName** property on [deviceEvidence](/graph/api/resources/security-deviceevidence) to get the hostname without the domain suffix.
- Use the **ntDomain** property on [deviceEvidence](/graph/api/resources/security-deviceevidence) to get a logical grouping of computers within a Microsoft Windows network.

### Security | Identities

Added the ability to [get](/graph/api/security-healthissue-get), [list](/graph/api/security-identitycontainer-list-healthissues), and [update](/graph/api/security-healthissue-update) Microsoft Defender for Identity [health issues](/graph/api/resources/security-healthissue) that represent potential issues identified within a customer's Defender for Identity configuration.

## September 2024: New in preview only

### Device and app management | Cloud PC

Removed the **getShiftWorkCloudPcAccessState** method from the [cloudPC](/graph/api/resources/cloudpc?view=graph-rest-beta&preserve-view=true) resource. Going forward, use the [getFrontlineCloudPcAccessState](/graph/api/cloudpc-getfrontlinecloudpcaccessstate?view=graph-rest-beta&preserve-view=true) API.

### Files

Introduced the ability to include all version history when you [copy a drive item](/graph/api/driveitem-copy?view=graph-rest-beta&preserve-view=true). The version history is included up to the target version setting limit.

### Identity and access | Identity and sign in

- Use the **identifierUris** property in the get and update operations of the [tenantAppManagementPolicy](/graph/api/resources/tenantappmanagementpolicy?view=graph-rest-beta&preserve-view=true) resource to get or set restrictions on vulnerable or easily compromised identifier URI formats for an application.
- Updated the return type for the **applicationRestrictions** property of the [tenantAppManagementPolicy](/graph/api/resources/tenantappmanagementpolicy?view=graph-rest-beta&preserve-view=true) resource from [appManagementConfiguration](/graph/api/resources/appmanagementconfiguration?view=graph-rest-beta&preserve-view=true) to [appManagementApplicationConfiguration](/graph/api/resources/appmanagementapplicationconfiguration?view=graph-rest-beta&preserve-view=true).
- Updated the return type for the **servicePrincipalRestrictions** property of the [tenantAppManagementPolicy](/graph/api/resources/tenantappmanagementpolicy?view=graph-rest-beta&preserve-view=true) resource from [appManagementConfiguration](/graph/api/resources/appmanagementconfiguration?view=graph-rest-beta&preserve-view=true) to [appManagementServicePrincipalConfiguration](/graph/api/resources/appmanagementserviceprincipalconfiguration?view=graph-rest-beta&preserve-view=true).
- Updated the return type for the **restrictions** property of the [appManagementPolicy](/graph/api/resources/appmanagementpolicy?view=graph-rest-beta&preserve-view=true) resource from [appManagementConfiguration](/graph/api/resources/appmanagementconfiguration?view=graph-rest-beta&preserve-view=true) to [customAppManagementConfiguration](/graph/api/resources/customappmanagementconfiguration?view=graph-rest-beta&preserve-view=true).

### Reports | Microsoft 365 usage reports

- [Get](/graph/api/reportroot-getmicrosoft365copilotusageuserdetail?view=graph-rest-beta&preserve-view=true) the most recent activity data for enabled users of Microsoft 365 Copilot apps.
- [Get](/graph/api/reportroot-getmicrosoft365copilotusercountsummary?view=graph-rest-beta&preserve-view=true) the aggregated number of active and enabled users of Microsoft 365 Copilot for a specified time period.
- [Get](/graph/api/reportroot-getmicrosoft365copilotusercounttrend?view=graph-rest-beta&preserve-view=true) the trend in the daily number of active and enabled users of Microsoft 365 Copilot for a specified time period.

### Security | Alerts and incidents

- Use the **dnsDomain** property on [deviceEvidence](/graph/api/resources/security-deviceevidence?view=graph-rest-beta&preserve-view=true) to get the DNS domain that a computer belongs to.
- Use the **hostName** property on [deviceEvidence](/graph/api/resources/security-deviceevidence?view=graph-rest-beta&preserve-view=true) to get the hostname without the domain suffix.
- Use the **ntDomain** property on [deviceEvidence](/graph/api/resources/security-deviceevidence?view=graph-rest-beta&preserve-view=true) to get a logical grouping of computers within a Microsoft Windows network.

### Teamwork and communications | Calls and online meetings

Use the **isDeltaRosterEnabled** property on [incomingCallOptions](/graph/api/resources/incomingcalloptions?view=graph-rest-beta&preserve-view=true) and [outgoingCallOptions](/graph/api/resources/outgoingcalloptions?view=graph-rest-beta&preserve-view=true) to indicate whether delta roster is enabled for a call.

## August 2024: New and generally available

### Education

- Enabled the `$orderby` query parameter for the following methods:
  - [Get educationAssignment](/graph/api/educationassignment-get)
  - [Get educationCategory](/graph/api/educationcategory-get)
  - [Get educationSubmission](/graph/api/educationsubmission-get)
- Reduced support for the `$orderby` query parameter in the [List assignments of a user](/graph/api/educationuser-list-assignments) method to a subset of the properties in the [educationAssignment](/graph/api/resources/educationassignment) resource.  

### Employee experience | Employee engagement

Introduced the general availability of the Viva Engage API in Microsoft Graph. A Viva Engage community is a central place for conversations, files, events, and updates for people sharing a common interest or goal. Use the Viva Engage API for the following scenarios:

- [Create a community](/graph/api/employeeexperience-post-communities)
- [Poll for community creation status](/graph/api/engagementasyncoperation-get)
- [Get a community](/graph/api/community-get)
- [List communities](/graph/api/employeeexperience-list-communities)
- [Update a community](/graph/api/community-update)
- [Delete a community](/graph/api/community-delete)

### People and workplace intelligence | Insights

[Get](/graph/api/userinsightssettings-get) and [update](/graph/api/userinsightssettings-update) user privacy settings for [itemInsights](/graph/api/resources/iteminsights) and [meeting hours insights](https://support.microsoft.com/office/update-your-meeting-hours-using-the-profile-card-0613d113-d7c1-4faa-bb11-c8ba30a78ef1). Use the [userInsightsSettings](/graph/api/resources/userinsightssettings) resource to enable or disable the calculation and visibility of item insights and meeting hours insights for a user.

### Reports | Microsoft 365 usage reports

[Get](/graph/api/adminreportsettings-get) or [update](/graph/api/adminreportsettings-update) tenant-wide [settings](/graph/api/resources/adminreportsettings) to hide or show identifiable information for users, groups, or sites in Microsoft 365 usage reports.

### Teamwork and communications | Online meeting

- Enabled the `$select` query parameter for the [Get callRecording](/graph/api/callrecording-get) method.
- Enabled the `$select` query parameter for the [Get callTranscript](/graph/api/calltranscript-get) method.
- Enabled the `$filter`, `$select`, and `$top` query parameters for the [List recordings](/graph/api/onlinemeeting-list-recordings) method.
- Enabled the `$filter`, `$select`, and `$top` query parameters for the [List transcripts](/graph/api/onlinemeeting-list-transcripts) method.
- Get all [recordings](/graph/api/onlinemeeting-getallrecordings) and [transcripts](/graph/api/onlinemeeting-getalltranscripts) from scheduled online meeting instances for which the specified user is the organizer. 
- Get a set of [recording](/graph/api/callrecording-delta) and [transcript](/graph/api/calltranscript-delta) resources that were added for online meeting instances organized by the specified user.

### Teamwork and communications | Settings

Enabled the `Spain` and `Mexico` values as supported regions for the **region** property of the [teamwork](/graph/api/resources/teamwork) and [userTeamwork](/graph/api/resources/userteamwork) resources.

## August 2024: New in preview only

### Identity and access | Partner Center security

Introduced the [partner security score API](/graph//api/resources/partner-security-score-api-overview). Use this API to generate security scores for partners to help them enhance their posture. The API provides a history of score changes, detailed customer insights, and requirement score information.

### Device and app management | Cloud PC

- Use the **crossRegionDisasterRecoverySetting** property on [cloudPcUserSetting](/graph/api/resources/cloudpcusersetting?view=graph-rest-beta&preserve-view=true) to define cross-region disaster recovery settings.
- Deprecated the `noLicensesAvailable` member on [frontlineCloudPcAccessState](/graph/api/resources/cloudpc?view=graph-rest-beta&preserve-view=true#frontlinecloudpcaccessstate-values).

### Education

- Enabled the `$orderby` query parameter for the following methods:
  - [Get educationAssignment](/graph/api/educationassignment-get?view=graph-rest-beta&preserve-view=true)
  - [Get educationCategory](/graph/api/educationcategory-get?view=graph-rest-beta&preserve-view=true)
  - [Get educationSubmission](/graph/api/educationsubmission-get?view=graph-rest-beta&preserve-view=true)
- Reduced support for the `$orderby` query parameter in the [List assignments of a user](/graph/api/educationuser-list-assignments?view=graph-rest-beta&preserve-view=true) method to a subset of the properties in the [educationAssignment](/graph/api/resources/educationassignment?view=graph-rest-beta&preserve-view=true) resource. 

### Teamwork and communications | Apps

Use the **clientAppId** property on [teamsAppAuthorization](/graph/api/resources/teamsappauthorization?view=graph-rest-beta&preserve-view=true) to get the registration ID of the Microsoft Entra app ID associated with an [app](/graph/api/resources/teamsapp?view=graph-rest-beta&preserve-view=true) in the Microsoft Teams app catalog.

### Teamwork and communications | Calls and online meetings

- Use the **settings** property on [virtualEventTownhall](/graph/api/resources/virtualeventtownhall?view=graph-rest-beta&preserve-view=true) and [virtualEventWebinar](/graph/api/resources/virtualeventwebinar?view=graph-rest-beta&preserve-view=true) to get or set whether attendees receive email notifications for a town hall or webinar.
- Removed the **meetingOrganizerId** property from the [callRecording](/graph/api/resources/callrecording?view=graph-rest-beta&preserve-view=true) and [callTranscript](/graph/api/resources/calltranscript?view=graph-rest-beta&preserve-view=true) resources in favor of the **meetingOrganizer** property.

### Teamwork and communications | Messaging

Use the **displayName** property on the [chatMessageReaction](/graph/api/resources/chatmessagereaction?view=graph-rest-beta&preserve-view=true) resource to represent the reaction name [chatMessage](/graph/api/resources/chatmessage?view=graph-rest-beta&preserve-view=true).

### Teamwork and communications | Online meeting

- Enabled the `$select` query parameter for the [Get callRecording](/graph/api/callrecording-get?view=graph-rest-beta&preserve-view=true) method.
- Enabled the `$select` query parameter for the [Get callTranscript](/graph/api/calltranscript-get?view=graph-rest-beta&preserve-view=true) method.
- Enabled the `$filter`, `$select`, and `$top` query parameters for the [List recordings](/graph/api/onlinemeeting-list-recordings?view=graph-rest-beta&preserve-view=true) method.
- Enabled the `$filter`, `$select`, and `$top` query parameters for the [List transcripts](/graph/api/onlinemeeting-list-transcripts?view=graph-rest-beta&preserve-view=true) method.

### Teamwork and communications | Settings

Enabled the `Spain` and `Mexico` values as supported regions for the **region** property of the [teamwork](/graph/api/resources/teamwork?view=graph-rest-beta&preserve-view=true) and [userTeamwork](/graph/api/resources/userteamwork?view=graph-rest-beta&preserve-view=true) resources.

### Security | Identities

Added the ability to get, list, and update Microsoft Defender for Identity [sensors](/graph/api/resources/security-sensor?view=graph-rest-beta&preserve-view=true) settings.

## Contribute to Microsoft Graph

Are there scenarios you'd like Microsoft Graph to support?

- Suggest and vote for new features by using the [Microsoft Graph Feedback Portal](https://aka.ms/graphfeedback). Some new features originate as popular requests from the developer community. The Microsoft Graph team regularly evaluates customer needs and releases new features to the beta (`https://graph.microsoft.com/beta`) and v1.0 (`https://graph.microsoft.com/v1.0`) endpoints.

- [Join](https://aka.ms/m365-dev-call) the weekly Microsoft 365 platform community call and become an active member of the Microsoft Graph community. To discover the full calendar of developer calls, visit the [Microsoft 365 and Power Platform community page](https://aka.ms/community/calls).

- [Join](https://ux.microsoft.com/Panel/M365Devs?utm_source=graphDocs) our research panel to provide your input on our developer experiences.

## Related content
- [Microsoft Graph developer blog](https://devblogs.microsoft.com/microsoft365dev/category/microsoft-graph/).
- [Microsoft Graph API changelog](https://developer.microsoft.com/graph/changelog/).
- [Microsoft Graph what's new history](whats-new-earlier.md).
