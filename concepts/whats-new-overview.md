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
> Features in _preview_ status are subject to change without notice, and might not be promoted to generally available (GA) status. Do not use preview features in production apps.

## March 2024: New and generally available

### Cross-device experiences

Added the ability to list and get [Windows settings](/graph/api/resources/windowssetting) and [Windows settings instances](/graph/api/resources/windowssettinginstance).

### Reports | Partner billing reports

Use the [billedReconciliation: export](/graph/api/partners-billing-billedreconciliation-export) API to access billed invoice reconciliation data.

## March 2024: New in preview only

### Files

Use the [Get file by contentStream](/graph/api/driveitem-get-contentstream?view=graph-rest-beta&preserve-view=true) method to download file content directly instead of getting a `302` redirect URL.

### Device and app management | Cloud PC

The following properties are deprecated:

- **type** property on [cloudPcOnPremisesConnection](/graph/api/resources/cloudpconpremisesconnection?view=graph-rest-beta&preserve-view=true); use the **connectionType** property instead.
- **healthCheckStatusDetails** property on [cloudPcOnPremisesConnection](/graph/api/resources/cloudpconpremisesconnection?view=graph-rest-beta&preserve-view=true); use the **healthCheckStatusDetail** property instead.
- **additionalDetails** property on [cloudPcOnPremisesConnectionHealthCheck](/graph/api/resources/cloudpconpremisesconnectionhealthcheck?view=graph-rest-beta&preserve-view=true); use the **additionalDetail** property instead.

### Identity and access | Identity and sign-in

Use the [federatedTokenValidationPolicy resource type](/graph/api/resources/federatedtokenvalidationpolicy?view=graph-rest-beta&preserve-view=true) and its associated methods to manage whether Microsoft Entra ID validates federation authentication tokens.

### Security | Email and collaboration protection

Added the ability to list emails analyzed by Microsoft Defender for Office 365, get email related metadata, and perform response actions (soft delete, hard delete, move to junk, move to Inbox). 

## February 2024: New and generally available

### Microsoft Graph Toolkit

Microsoft Graph Toolkit v4 is now available. For details about changes in the latest release, see [Upgrade to the latest version of Microsoft Graph Toolkit](/graph/toolkit/upgrade).

### Identity and access | Identity and sign-in

- Introduced the following more granular delegated and application permissions for managing tenant branding through the [organizationalBranding](/graph/api/resources/organizationalbranding?view=graph-rest-beta&preserve-view=true) and [organizationalBrandingLocalization](/graph/api/resources/organizationalbrandinglocalization?view=graph-rest-beta&preserve-view=true) resource types:
  - Use *OrganizationalBranding.Read.All* permission for read operations instead of the *Organization.Read.All* permission.
  - Use *OrganizationalBranding.ReadWrite.All* permission for read and write operations instead of the *Organization.ReadWrite.All* permission.

## February 2024: New in preview only


### Calendars

Use the **iCalUId** property on [event](/graph/api/resources/event?view=graph-rest-beta&preserve-view=true) to get the unique identifier for an event across calendars.

### Search

Set up [acronym](/graph/api/resources/search-acronym), [bookmark](/graph/api/resources/search-bookmark), and [qna](/graph/api/resources/search-qna) resources as [administrative search answers for users in an organization](search-concept-answers.md).

### Education

- Teachers can [activate](/graph/api/educationassignment-activate?view=graph-rest-beta&preserve-view=true) an inactive [assignment](/graph/api/resources/educationassignment?view=graph-rest-beta&preserve-view=true) to signal that the assignment has further action items for teachers or students.
- Teachers can [deactivate](/graph/api/educationassignment-deactivate?view=graph-rest-beta&preserve-view=true) and mark an assignment as inactive to signal that the assignment has no further action items for teachers and students.

### Identity and access | Directory management

- Updated the descriptions of the **model** and **manufacturer** properties in the [device](/graph/api/resources/device?view=graph-rest-beta&preserve-view=true) resource to clarify their read-only status, replacing the outdated descriptions related to Project Rome sign-ins.
- Enabled tenants to [update](/graph/api/organization-update?view=graph-rest-beta&preserve-view=true) the following properties of the [organization](/graph/api/resources/organization?view=graph-rest-beta&preserve-view=true) entity: **businessPhones**, **city**, **postalCode**, **preferredLanguage**, **state**, **street**.
- You can now invite external users to Teams and manage the lifecycle of their invitation through the [pendingExternalUserProfile resource type](/graph/api/resources/pendingexternaluserprofile?view=graph-rest-beta&preserve-view=true) and its associated methods. After the user redeems their pending profile, you can manage their profile in your tenant through the [externalUserProfile resource type](/graph/api/resources/externaluserprofile?view=graph-rest-beta&preserve-view=true) and its associated methods.
 
### Identity and access | Identity and sign-in
- Added the ability to target the device code authentication flow using Microsoft Entra Conditional Access. Configure the [conditionalAccessPolicy](/graph/api/resources/conditionalaccesspolicy?view=graph-rest-beta&preserve-view=true) > **conditions** property > **authenticationFlows** property of [conditionalAccessConditionSet complex type](/graph/api/resources/conditionalaccessconditionset?view=graph-rest-beta&preserve-view=true) > **transferMethods** property of [conditionalAccessAuthenticationFlows complex type](/graph/api/resources/conditionalaccessauthenticationflows?view=graph-rest-beta&preserve-view=true).

### Reports | Partner billing reports

Use the [billedReconciliation: export](/graph/api/partners-billing-billedreconciliation-export?view=graph-rest-beta&preserve-view=true) API to access billed invoice reconciliation data.

### Teamwork and communications | Apps

Use the **dashboardCards** navigation property on [teamsAppDefinition](/graph/api/resources/teamsappdefinition?view=graph-rest-beta&preserve-view=true) to get dashboard cards specified in the manifest of a [teamsApp](/graph/api/resources/teamsapp?view=graph-rest-beta&preserve-view=true).

### Teamwork and communications | Calls and online meetings

Microsoft Teams custom meeting templates allow you to specify values for many of the meeting options available to meeting organizers. Use the **meetingTemplateId** property on [onlineMeeting](/graph/api/resources/onlinemeeting?view=graph-rest-beta&preserve-view=true) to create an online meeting with a meeting template.

### Teamwork and communications | Messaging

- Enabled the `$filter`, `$select`, and `$top` query parameters for the [List members of channel](/graph/api/channel-list-members?view=graph-rest-beta&preserve-view=true) method.
- Enabled the `$top` query parameter for the [List members of team](/graph/api/team-list-members?view=graph-rest-beta&preserve-view=true) method.

### Teamwork and communications | Shift management

- Added the ability to [get shifts](/graph/api/team-getshifts?view=graph-rest-beta&preserve-view=true) and [get time offs](/graph/api/team-gettimesoff?view=graph-rest-beta&preserve-view=true) across all teams that a user is a direct member of.
- Added the **isCrossLocationShiftRequestApprovalRequired** and **isCrossLocationShiftsEnabled** properties on [schedule](/graph/api/resources/schedule?view=graph-rest-beta&preserve-view=true) to support two cross location scenarios.
- Added the ability to [get](/graph/api/shiftsroledefinition-get) and [update](/graph/api/shiftsroledefinition-update) front-line managers' capabilities in a Shifts schedule.
- Added the ability to [get](/graph/api/shiftsroledefinition-get) and [update](/graph/api/shiftsroledefinition-update) frontline managers' capabilities in a Shifts schedule.

## Contribute to Microsoft Graph

Are there scenarios you'd like Microsoft Graph to support? 

- Suggest and vote for new features by using the [Microsoft Graph Feedback Portal](https://aka.ms/graphfeedback). Some new features originate as popular requests from the developer community. The Microsoft Graph team regularly evaluates customer needs and releases new features to the beta (`https://graph.microsoft.com/beta`) and v1.0 (`https://graph.microsoft.com/v1.0`) endpoints.

- [Join](https://aka.ms/m365-dev-call) the weekly Microsoft 365 platform community call and become an active member of the Microsoft Graph community. Visit the [Microsoft 365 and Power Platform community page](https://aka.ms/community/calls) to discover the full calendar of developer calls.

- [Join](https://ux.microsoft.com/Panel/M365Devs?utm_source=graphDocs) our research panel to provide your input on our developer experiences.

## Related content
- [Microsoft Graph developer blog](https://devblogs.microsoft.com/microsoft365dev/category/microsoft-graph/)
- [Microsoft Graph API changelog](https://developer.microsoft.com/graph/changelog/).
- [Microsoft Graph what's new history](whats-new-earlier.md).
