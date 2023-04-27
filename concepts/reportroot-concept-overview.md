---
title: "Microsoft Graph reports API overview"
description: "Use the reports API to incorporate Microsoft 365 usage data into your organization's reporting solution so that all IT service reports are in a unified location."
ms.localizationpriority: high
ms.prod: "reports"
author: "sarahwxy"
ms.custom: scenarios:getting-started
---

# Microsoft Graph reports API overview

The reports API in Microsoft Graph enables you to understand application and resource activity in your Azure Active Directory (Azure AD) tenant.

> [!VIDEO https://www.youtube-nocookie.com/embed/P6HneRXYdx8]

## Why use the reports API?

### Integrate Microsoft 365 usage reporting into your organization's existing reporting solution
Many companies have existing reporting solutions that use a reporting application or web portal. You can use the reports API to incorporate Microsoft 365 usage data into your organization's existing reporting solution so that all IT service reports are in a unified location.

### Retain usage reports for historical analysis
You can use the reports API to get the data that's available in all usage reports, including organization-level summaries per service, entity-level (user, sites, accounts) usage information for the last 7/30/90/180 days, and daily activity aggregates. This gives you the option to keep historical usage information for as long as required.

### Analyze AD FS application activity and configuration
Provides information about a relying party configured with Active Directory Federation Services (AD FS), its aggregated usage, and whether the relying party configuration can be migrated to Azure Active Directory.

### Monitor application sign-ins

Monitor the usage of your applications and make decisions about usage patterns.

### Determine who is using your applications and how are they using them

The authentication methods usage reports help you understand how users in your organization use Azure Active Directory (Azure AD) capabilities, such as self-service password rest and multi-factor authentication (MFA). These reports help you determine which authentication methods are more successful for your organization, what types of errors end users are running into, and hat campaign you need to run to help your end users adopt the use of self-service password rest and MFA.

### Monitor activity on an Azure AD tenant

Gain a better understanding of how your users access and use Azure AD services. You can analyze the data to create custom solutions tailored to your organization's specific needs.

## What data can I access by using the reports API?

You can use the reports API to access the data sets listed in the following table.

| Reports API | Data set |
|:------------ |:-------- |
| Activity | [Directory audit](/graph/api/resources/directoryaudit)<br/>[Sign-in](/graph/api/resources/signin)<br/>[Provisioning](/graph/api/resources/provisioningobjectsummary) |
| AD FS applications | [Relying part detailed summary (preview)](/graph/api/resources/relyingpartydetailedsummary) |
| Application registration | [Credential user registration count (preview)](/graph/api/resources/credentialuserregistrationcount)<br/>[Credential user registration details (preview)](/graph/api/resources/credentialuserregistrationdetails) <br/>[User credential usage details (preview)](/graph/api/resources/usercredentialusagedetails) <br/>[Credential usage summary (preview)](/graph/api/resources/credentialusagesummary)|
| Application sign-in | [Sign-in summary (preview)](/graph/api/resources/applicationsigninsummary) <br/>[Sign-in details (preview)](/graph/api/resources/applicationsignindetailedsummary)|
| Microsoft Teams | [Device usage](/graph/api/resources/microsoft-teams-device-usage-reports)<br/>[Team activity (preview)](/graph/api/resources/microsoft-teams-team-usage-reports)<br/>[User activity](/graph/api/resources/microsoft-teams-user-activity-reports)|
| Microsoft 365 (general) | [Activations](/graph/api/resources/office-365-activations-reports)<br/>[Active users](/graph/api/resources/office-365-active-users-reports)<br/>[Apps usage](/graph/api/resources/microsoft-365-apps-usage-report)<br/>[Browser usage (preview)](/graph/api/resources/microsoft-365-browser-usage-report)<br/>[Groups activity](/graph/api/resources/office-365-groups-activity-reports) |
| OneDrive | [Activity](/graph/api/resources/onedrive-activity-reports)<br/>[Usage](/graph/api/resources/onedrive-usage-reports) |
| Outlook | [Activity](/graph/api/resources/email-activity-reports)<br/>[App usage](/graph/api/resources/email-app-usage-reports)<br/>[Mailbox usage](/graph/api/resources/mailbox-usage-reports) |
| SharePoint | [Activity](/graph/api/resources/sharepoint-activity-reports)<br/>[Site usage](/graph/api/resources/sharepoint-site-usage-reports) |
| Skype for Business | [Activity](/graph/api/resources/skype-for-business-activity-reports)<br/>[Device usage](/graph/api/resources/skype-for-business-device-usage-reports)<br/>[Organizer activity](/graph/api/resources/skype-for-business-organizer-activity-reports)<br/>[Participant activity](/graph/api/resources/skype-for-business-participant-activity-reports)<br/>[Peer to peer activity](/graph/api/resources/skype-for-business-peer-to-peer-activity) |
| Yammer | [Activity](/graph/api/resources/yammer-activity-reports)<br/>[Device usage](/graph/api/resources/yammer-device-usage-reports)<br/>[Groups activity](/graph/api/resources/yammer-groups-activity-reports) |

## API reference

Looking for the API reference for this service?

- [Identity and access reports API in Microsoft Graph beta](/graph/api/resources/report-identity-access?view=graph-rest-beta&preserve-view=true)
- [Microsoft 365 usage reports API in Microsoft Graph v1.0](/graph/api/resources/report?view=graph-rest-1.0&preserve-view=true)
- [Microsoft 365 usage reports API in Microsoft Graph beta](/graph/api/resources/report?view=graph-rest-beta&preserve-view=true)

## Next steps

* Explore the APIs in [Graph Explorer](https://developer.microsoft.com/graph/graph-explorer).
