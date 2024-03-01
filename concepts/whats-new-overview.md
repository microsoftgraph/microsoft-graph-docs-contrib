---
title: "What's new in Microsoft Graph"
description: "Find out what's new in Microsoft Graph APIs, SDKs, documentation, and other resources."
author: "lauragra"
ms.localizationpriority: high
---

# What's new in Microsoft Graph

Microsoft Graph provides a unified programmability model that you can use to access data in Microsoft 365, Windows, and Enterprise Mobility + Security. This topic provides information about what's new in Microsoft Graph APIs, documentation, SDKs, and more.

For more detailed API-level updates, see the [Microsoft Graph API changelog](https://developer.microsoft.com/graph/changelog/).

For details about previous updates to Microsoft Graph, see [Microsoft Graph what's new history](whats-new-earlier.md). 

> [!IMPORTANT]
> Features in _preview_ status are subject to change without notice, and might not be promoted to generally available (GA) status. Do not use preview features in production apps.

## March 2024: New and generally available

### Reports | Partner billing reports

Use the [billedReconciliation: export](/graph/api/partners-billing-billedreconciliation-export) API to access billed invoice reconciliation data.

## February 2024: New and generally available

### Microsoft Graph Toolkit

Microsoft Graph Toolkit v4 is now available. For details about changes in the latest release, see [Upgrade to the latest version of Microsoft Graph Toolkit](/graph/toolkit/upgrade).

## February 2024: New in preview only

### Calendars

Use the **iCalUId** property on [event](/graph/api/resources/event?view=graph-rest-beta&preserve-view=true) to get the unique identifier for an event across calendars.

### Education

- Teachers can [activate](/graph/api/educationassignment-activate) an inactive [assignment](/graph/api/resources/educationassignment) to signal that the assignment has further action items for teachers or students.
- Teachers can [deactivate](/graph/api/educationassignment-deactivate) and mark an assignment as inactive to signal that the assignment has no further action items for teachers and students.

### Identity and access | Directory management

Updated the descriptions of the **model** and **manufacturer** properties in the [device](/graph/api/resources/device?view=graph-rest-beta&preserve-view=true) resource to clarify their read-only status, replacing the outdated descriptions related to Project Rome sign-ins.

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


## Contribute to Microsoft Graph

Are there scenarios you'd like Microsoft Graph to support? 

- Suggest and vote for new features by using the [Microsoft Graph Feedback Portal](https://aka.ms/graphfeedback). Some new features originate as popular requests from the developer community. The Microsoft Graph team regularly evaluates customer needs and releases new features to the beta (`https://graph.microsoft.com/beta`) and v1.0 (`https://graph.microsoft.com/v1.0`) endpoints.

- [Join](https://aka.ms/m365-dev-call) the weekly Microsoft 365 platform community call and become an active member of the Microsoft Graph community.

- [Join](https://ux.microsoft.com/Panel/M365Devs?utm_source=graphDocs) our research panel to provide your input on our developer experiences.

## Related content
- [Microsoft Graph developer blog](https://devblogs.microsoft.com/microsoft365dev/category/microsoft-graph/)
- [Microsoft Graph API changelog](https://developer.microsoft.com/graph/changelog/).
- [Microsoft Graph what's new history](whats-new-earlier.md).
