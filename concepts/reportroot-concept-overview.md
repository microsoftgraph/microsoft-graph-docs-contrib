---
title: "Microsoft Graph reports API overview"
description: "Use the reports API to incorporate Microsoft 365 usage data into your organization's reporting solution so that all IT service reports are in a unified location."
ms.localizationpriority: high
ms.subservice: "reports"
author: "sarahwxy"
ms.custom: scenarios:getting-started
ms.date: 11/07/2024
ms.topic: concept-article
---

# Microsoft Graph reports API overview

The reports API in Microsoft Graph enables you to understand application and resource activity in your Microsoft Entra tenant.

> [!VIDEO https://www.youtube-nocookie.com/embed/P6HneRXYdx8]

## Why use the reports API?

### Integrate Microsoft 365 usage reporting into your organization's existing reporting solution
Many companies have existing reporting solutions that use a reporting application or web portal. You can use the reports API to incorporate Microsoft 365 usage data into your organization's existing reporting solution so that all IT service reports are in a unified location.

### Retain usage reports for historical analysis
You can use the reports API to get the data that's available in all usage reports, including organization-level summaries per service, entity-level (user, sites, accounts) usage information for the last 7/30/90/180 days, and daily activity aggregates. This gives you the option to keep historical usage information for as long as required.

### Analyze AD FS application activity and configuration
Provides information about a relying party configured with Active Directory Federation Services (AD FS), its aggregated usage, and whether the relying party configuration can be migrated to Microsoft Entra ID.

### Monitor application sign-ins

Monitor the usage of your applications and make decisions about usage patterns.

### Determine who is using your applications and how are they using them

The authentication methods usage reports help you understand how users in your organization use Microsoft Entra capabilities, such as self-service password rest and multi-factor authentication (MFA). These reports help you determine which authentication methods are more successful for your organization, what types of errors end users are running into, and hat campaign you need to run to help your end users adopt the use of self-service password rest and MFA.

<a name='monitor-activity-on-an-azure-ad-tenant'></a>

### Monitor activity on a Microsoft Entra tenant

Gain a better understanding of how your users access and use Microsoft Entra services. You can analyze the data to create custom solutions tailored to your organization's specific needs.

### Understand the usage of Microsoft Graph APIs by applications

You can use the Microsoft Graph API usage report to gain insight into how frequently applications access Microsoft Graph APIs. Use this data to identify applications that might be optimized for data access efficiency.

## What data can I access by using the reports API?

You can use the reports API to access the data sets listed in the following table.

| Reports API | Data set |
|:------------ |:-------- |
|Identity and access reports such as directory activities, sign-ins, authentication message usage, application usage |/graph/api/resources/report-identity-access |
| Microsoft Teams | [Device usage](/graph/api/resources/reportroot#microsoft-teams-device-usage)<br/>[Team activity](/graph/api/resources/reportroot#microsoft-teams-team-activity)<br/>[User activity](/graph/api/resources/reportroot#microsoft-teams-user-activity)|
| Microsoft 365 (general) | [Activations](/graph/api/resources/reportroot#microsoft-365-activations)<br/>[Active users](/graph/api/resources/reportroot#microsoft-365-active-users)<br/>[Apps usage](/graph/api/resources/reportroot#microsoft-365-apps-usage)<br/>[Browser usage (preview)](/graph/api/resources/reportroot?view=graph-rest-beta&preserve-view=true#microsoft-365-browser-usage)<br/>[Groups activity](/graph/api/resources/reportroot#microsoft-365-groups-activity) |
| Microsoft Graph (preview) | [API usage](/graph/api/resources/reportroot#microsoft-graph-api-usage?view=graph-rest-beta&preserve-view=true) |
| OneDrive | [Activity](/graph/api/resources/reportroot#onedrive-activity)<br/>[Usage](/graph/api/resources/reportroot#onedrive-usage) |
| Outlook | [Activity](/graph/api/resources/reportroot#outlook-activity)<br/>[App usage](/graph/api/resources/reportroot#outlook-app-usage)<br/>[Mailbox usage](/graph/api/resources/reportroot#outlook-mailbox-usage) |
| Partner billing |  [Billed usage](/graph/api/resources/partners-billing-billedusage)<br/>[Unbilled usage](/graph/api/resources/partners-billing-unbilledusage) |
| SharePoint | [Activity](/graph/api/resources/reportroot#sharepoint-activity)<br/>[Site usage](/graph/api/resources/reportroot#sharepoint-site-usage) |
| Skype for Business | [Activity](/graph/api/resources/reportroot#skype-for-business-activity)<br/>[Device usage](/graph/api/resources/reportroot#skype-for-business-device-usage)<br/>[Organizer activity](/graph/api/resources/reportroot#skype-for-business-organizer-activity)<br/>[Participant activity](/graph/api/resources/reportroot#skype-for-business-participant-activity)<br/>[Peer to peer activity](/graph/api/resources/reportroot#skype-for-business-peer-to-peer-activity) |
| Viva Engage | [Activity](/graph/api/resources/reportroot#viva-engage-activity)<br/>[Device usage](/graph/api/resources/reportroot#viva-engage-device-usage)<br/>[Groups activity](/graph/api/resources/reportroot#viva-engage-groups-activity) |

## API reference

Looking for the API reference for this service?

- [Identity and access reports API in Microsoft Graph beta](/graph/api/resources/report-identity-access?view=graph-rest-beta&preserve-view=true)
- [Microsoft 365 usage reports API in Microsoft Graph v1.0](/graph/api/resources/report?view=graph-rest-1.0&preserve-view=true)
- [Microsoft 365 usage reports API in Microsoft Graph beta](/graph/api/resources/report?view=graph-rest-beta&preserve-view=true)
- [Partner billing reports API in Microsoft Graph v1.0](/graph/api/resources/partners-billing-api-overview?view=graph-rest-1.0&preserve-view=true)
- [Partner billing reports API in Microsoft Graph beta](/graph/api/resources/partners-billing-api-overview?view=graph-rest-beta&preserve-view=true)

## Next steps

* Explore the APIs in [Graph Explorer](https://developer.microsoft.com/graph/graph-explorer).
