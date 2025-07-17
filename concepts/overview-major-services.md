---
title: "Major services and features in Microsoft Graph"
description: "Learn how Microsoft Graph's network of services and features manage, protect, and extract data to support a wide range of scenarios."
ms.localizationpriority: high
ms.custom: scenarios:getting-started
ms.topic: overview
ms.date: 01/09/2025
#customer intent: As a developer, I want a sneak peek into what Microsoft cloud services are available through Microsoft Graph.
---

# Major services and features in Microsoft Graph

Microsoft Graph enables you to integrate with the best of Microsoft 365, Windows, and Enterprise Mobility + Security services by using REST APIs and client libraries. Additionally, it offers security and intelligence that can boost user productivity, creativity, and team collaboration, and protect business resources and users' data.

## Users and groups

At the core of Microsoft Graph are the concepts of the user and group.

Millions of _users_ access Microsoft cloud services. User data is what drives businesses, and user identities must be protected and managed. Microsoft Graph services make user data available to businesses in rich contexts, real-time updates, and deep insights, and always only with the appropriate permissions. While users are the most common identities, the Microsoft cloud ecosystem also includes application and device identity types.

A _group_ is the fundamental entity that lets users collaborate. It integrates with other services, enabling richer scenarios in task planning, teamwork, education, and more. 

|Feature     |Supporting services  |Description |More information |
|:-----------|:--------------------|:-----------|:----------------|
| Users | Microsoft Entra ID and most productivity, collaboration, intelligence, and education services | The user is a core focus of Microsoft Graph, around which many Microsoft Graph services build user-centric functionality. | [Overview of users in Microsoft Graph](azuread-users-concept-overview.md)|
|Groups | Microsoft Entra ID, OneDrive, OneNote, Outlook, Planner | A Microsoft 365 group provides the fundamental collaborative unit for users to share conversations, files, notes, calendar, plans, and more. | [Overview of groups in Microsoft Graph](/graph/api/resources/groups-overview) |

## Connecting users' data, Microsoft 365 services, and your apps

Starting with users and groups at the core, Microsoft Graph forms a network of Microsoft 365 services and features that manage, protect, and extract data to support a wide range of scenarios. Microsoft Graph lets you access this wealth of user data while always respecting proper authorization.

![Microsoft Graph connects you to users' data](images/microsoft-graph-connects-users-data.png)

### Services and features

The APIs in Microsoft Graph follow a streamlined design as detailed in the [Microsoft REST API guidelines](https://github.com/Microsoft/api-guidelines), and are accessible through the single Microsoft Graph REST endpoint `https://graph.microsoft.com`. The rest of this article lists the major services and features by category. 

## Identity and network access management

|Feature     |Supporting services  |Description |More information |
|:-----------|:--------------------|:-----------|:----------------|
| Identity and network access management | Microsoft Entra | Creates and manages directory resources such as users, groups, and applications. Manages access to resources and data. Gives customers access to sign-in and account risk data in Microsoft Entra ID.| [Microsoft Entra identity and network access management overview](identity-network-access-overview.md)  |

## Productivity

|Feature     |Supporting services  |Description |More information |
|:-----------|:--------------------|:-----------|:----------------|
| Calendar | Outlook  | Lets users set up appointments and meetings on the web and on mobile and desktop devices. It's part of the Outlook messaging communication hub in Microsoft 365 that also lets users manage emails and contacts. | [Outlook calendar overview](outlook-calendar-concept-overview.md)  |
| Files | OneDrive and SharePoint | Manages and shares user files on OneDrive and SharePoint. | [OneDrive files storage overview](onedrive-concept-overview.md) |
| Mail | Outlook | Lets users communicate, organize messages, and manage priorities in their workflows, on the web, and on mobile and desktop devices. It's part of the Outlook communication hub in Microsoft 365 that also lets users manage contacts and schedule meetings. | [Outlook mail overview](outlook-mail-concept-overview.md) |
| Notes | OneNote | Lets users plan and organize ideas and information. | [OneNote notes overview](integrate-with-onenote.md) |
| Personal contacts | Outlook | Contacts manager on the web and on mobile and desktop devices. It's part of the Outlook messaging communication hub in Microsoft 365 that also lets users manage emails and schedule meetings.  | [Outlook personal contacts overview](outlook-contacts-concept-overview.md) |
| To-do tasks | To Do | Lets users manage their personal tasks across work and life. It's integrated with Outlook, Teams, Planner, and Cortana, making it the single destination for user's personal tasks in Microsoft 365. | [To Do tasks overview](todo-concept-overview.md) |
| Workbooks and charts | Excel | Lets users use Excel spreadsheets to do complex calculations, track, analyze, and visualize data, and generate professional reports. | [Excel workbooks and charts overview](excel-concept-overview.md) |


## Collaboration and cultivating workforce

<!-- Want to update links to concept overviews as they are created over time. 
-->
|Feature     |Supporting services  |Description |More information |
|:-----------|:--------------------|:-----------|:----------------|
| Calls and online meetings | Microsoft Teams, Skype | Lets apps and services interact with users through various communications-related features; for example, enabling bots to handle calls, integrating online meetings in line of business scenarios, showing users' presence status, and looking up records for calls and online meetings. | [Overview for using Microsoft Teams, Shifts, and Viva Learning to foster teamwork](teams-concept-overview.md#call-or-meet-virtually) |
| Employee learning | Viva Learning | Empowers employees to make learning a natural part of the day by bringing learning into the flow of work within the tools and platforms of Microsoft 365 that they already use. Discover, share, and track learning across various sources from a center of learning in Microsoft Teams.  | [Overview for using Microsoft Teams, Shifts, and Viva Learning to foster teamwork](teams-concept-overview.md#enable-employee-learning-using-the-collaborative-capabilities-in-teams) |
| Shift management | Microsoft Shifts | Lets managers and frontline workers manage staff scheduling or capture data from workforce management systems to create optimized schedules for a business. | [Overview for using Microsoft Teams, Shifts, and Viva Learning to foster teamwork](teams-concept-overview.md#manage-shifts-and-staff-schedules) |
| Sites and lists  | SharePoint | Web-based platform for users and Microsoft 365 groups to share, organize, manage, and discover content (including lists, files, and notes). | [SharePoint sites and content overview](sharepoint-concept-overview.md) | 
|Tasks and plans | Planner | Enables users in Microsoft 365 groups to create plans, assign tasks, and track progress. | [Planner plans and tasks overview](planner-concept-overview.md) |
|Teamwork platform and messaging |  Microsoft Teams | Ultimate digital hub and chat-based workspace for teams to share files, notes, calendar, and plans. | [Overview for using Microsoft Teams, Shifts, and Viva Learning to foster teamwork](teams-concept-overview.md) |


## People and workplace intelligence

|Feature     |Supporting services  |Description |More information |
|:-----------|:--------------------|:-----------|:----------------|
| People | Microsoft Entra ID, Outlook, SharePoint, and more | Gets information about persons as ordered by their relevance to a user, determined by the user's communication and collaboration patterns and business relationships.  | [People and workplace intelligence in Microsoft Graph](social-intel-concept-overview.md) |
| Profile (preview) | Profile | Provides a lightweight mechanism for storing and retrieving information about people within an organization. | [People and workplace intelligence in Microsoft Graph](social-intel-concept-overview.md) |
| Profile card customization | Profile card | Provides a lightweight mechanism for an administrator to customize the content that surfaces on the Microsoft 365 profile card within an organization. | [People and workplace intelligence in Microsoft Graph](social-intel-concept-overview.md) |
| Document insights  | Delve, OneDrive, Outlook, SharePoint | Uses advanced analytics and machine learning techniques to get documents trending around, viewed, modified, or shared by a user.  | [People and workplace intelligence in Microsoft Graph](social-intel-concept-overview.md)  |
| Analytics (preview) | Viva Insights | Uses advanced analytics and machine-learning techniques to provide insights into how people spend their time and who they spend it with. This data can help people plan their day, gain insights into their different work patterns, and help them balance work and life.  | [People and workplace intelligence in Microsoft Graph](social-intel-concept-overview.md) |

## Device and app management

|Feature     |Supporting services  |Description |More information |
|:-----------|:--------------------|:-----------|:----------------|
| Browser management | Microsoft Edge | Microsoft Edge is one of the applications that administrators manage through the Microsoft 365 admin center. As an alternative to using the Microsoft 365 admin center, apps can use the Microsoft Graph API to manage the same Microsoft Edge settings configured through the Microsoft 365 admin center. | [Using the Microsoft Edge API in Microsoft Graph to manage browsers](browser-edge-concept-overview.md) |
| Cloud printing | Universal Print | Universal Print is a Microsoft 365 cloud-based print infrastructure that enables a simple, rich, and secure print experience for users and reduces administrative and management effort for IT. | [Cloud printing using Universal Print API](universal-print-concept-overview.md) |
|Corp management of devices and apps | Intune | Enrolls and configures devices and manages mobile applications in your organization. | [Intune devices and apps overview](intune-concept-overview.md) |
| Cloud PC | Windows 365  | Windows 365 is a cloud-based service that lets administrators easily set up and manage Windows 365 Cloud PCs for users in their organization. Individual end users can securely stream their rich, personalized Windows experience from the Microsoft cloud to any device, any time, with their Cloud PC. | [Working with Windows 365 Cloud PCs using the Microsoft Graph API](cloudpc-concept-overview.md) |
| Device updates (preview) | Windows Update for Business deployment service | Provides control over the approval, scheduling, monitoring, and safeguarding of content delivered from Windows Update. | [Windows updates in Microsoft Graph](windowsupdates-concept-overview.md) |
| Multitenant management (preview) | Microsoft 365 Lighthouse | Lets Managed Service Providers (MSPs) remotely manage multiple customer tenants for compliance and threat detection, and help get tenant devices in a healthy and secure state. | [Multitenant management using Microsoft 365 Lighthouse](managedtenants-concept-overview.md) |
| Service health and communications | Microsoft 365 and Dynamics 365 services | Provides access to the health status and message center posts about Microsoft cloud services. A notable example that uses the service communications API is the Microsoft 365 admin center. | [Accessing service health and communications in Microsoft Graph](service-communications-concept-overview.md) |

## Security

|Feature     |Supporting services  |Description |More information |
|:-----------|:--------------------|:-----------|:----------------|
| Security integration | Microsoft Entra ID Protection, Azure Information Protection, Azure Security Center, Microsoft Defender for Cloud Apps, Windows Defender Advanced Threat Protection, and [more](/graph/api/resources/security-api-overview) | Provides a unified gateway to security insights and actions across Microsoft and ecosystem partners. | [Security in Microsoft Graph](security-concept-overview.md) |
| eDiscovery | Microsoft Purview eDiscovery (Premium) | Provides access to eDiscovery capabilities used in the process of identifying and delivering electronic information that can be used as evidence in legal cases.|[Security in Microsoft Graph](security-concept-overview.md)|

## Cross-device experiences

|Feature     |Supporting services  |Description |More information |
|:-----------|:--------------------|:-----------|:----------------|
| Cross-device experiences | Activity feed, device relay | Enables app experiences that transcend a single device, and instead move with the user from device to device regardless of its type and platform. | [Overview for cross-device experiences](cross-device-concept-overview.md) |

## User notifications (deprecated)

> [!IMPORTANT]
> The Microsoft Graph notifications API is deprecated and stopped returning data in January 2022. For an alternative notification experience, see [Microsoft Azure Notification Hubs](/azure/notification-hubs). For more information, see [this blog post](https://devblogs.microsoft.com/microsoft365dev/retiring-microsoft-graph-notifications/).

|Feature     |Supporting services  |Description |More information |
|:-----------|:--------------------|:-----------|:----------------|
| User notifications | User notifications | Enables app experiences to build user-centric and cross-platform notification experiences including user-based fan-out, universal dismiss, and accessing notification history. | [Enabling human-centric notification experiences using Microsoft Graph notifications](notifications-concept-overview.md) |

## Usage reports

|Feature     |Supporting services  |Description |More information |
|:-----------|:--------------------|:-----------|:----------------|
| Reports | Microsoft Teams, OneDrive, Outlook, SharePoint, Skype for Business, Yammer | Gets activity and usage information of a supporting service. | [Usage reports overview](reportroot-concept-overview.md) |

## Education

|Feature     |Supporting services  |Description |More information |
|:-----------|:--------------------|:-----------|:----------------|
| Education | Microsoft Entra ID, Education | Provides information relevant for education scenarios, including schools, classes, students, teachers, and assignment info. Enables ISVs to build applications for the classroom that save teachers time and promote teamwork and collaboration.  | [Education overview](education-concept-overview.md) |
| Industry data ETL (preview) | Azure Data Lake, Education | A multi-vertical, cross-industry, ETL (Extract-Transform-Load) platform that includes support for the education sector, enabling applications to manage and move user and roster data from a student information system (SIS). | [Industry data overview](industrydata-concept-overview.md) |

## Business applications

|Feature     |Supporting services  |Description |More information |
|:-----------|:--------------------|:-----------|:----------------|
| Customer booking | Microsoft Bookings | Targets organizations to enable their users and customers to book services directly on the web or Facebook. Lets business providers manage customer preferences, services and pricing, staff lists and schedules, and other common business information. | [Microsoft Bookings API overview](booking-concept-overview.md) |
| Financials (preview) | Dynamics 365 Business Central | Enables management of financial data, automation and securing of the supply chain, sales management and improved customer service, management of projects, and optimization of operations with the all-in-one business management solution.| [Business Central API overview](dynamics-business-central-concept-overview.md) |
| Backup storage (preview) | SharePoint in Microsoft 365, Exchange, OneDrive for work or school | Enables partners to build customized versions of their applications integrated with the Microsoft 365 Backup Storage platform. This helps to ensure exceptionally fast recovery from typical business continuity and disaster recovery (BCDR) scenarios, such as ransomware attacks or accidental or malicious deletion or overwriting of content by users. Business continuity assurance is a critical concern for many companies. Microsoft 365 Backup Storage APIs provide peace of mind by delivering reliable, performant, and at-scale backup/restore confidence. | [Backup Storage API overview](backup-storage-concept-overview.md) |

## Related content

- See [what's new](whats-new-overview.md) in Microsoft Graph.
- Try a sample request in the [Graph Explorer](https://developer.microsoft.com/graph/graph-explorer).
- Use this [quick start](https://developer.microsoft.com/graph/quick-start) to set up a ready-to-run sample app.
- Explore the [integration patterns](/graph/integration-patterns-overview) that apply to your scenario.
