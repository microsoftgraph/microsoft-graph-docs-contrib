# Major services and features in Microsoft Graph

Microsoft Graph enables you to integrate with the best of Office 365, Windows 10, and Enterprise Mobility and Security services in Microsoft 365. Additionally, you can leverage social and security intelligence to boost user productivity, creativity, and team collaboration, and to protect business resources and users' data. 

Some services in Microsoft Graph make their debut there, others have been well-known as standalone services and are now converging in Microsoft Graph. Their API sets follow a streamlined design as detailed in the [Microsoft REST API guidelines](https://github.com/Microsoft/api-guidelines), and are now accessible through the single Microsoft Graph REST endpoint `https://graph.microsoft.com`. The major services and features are listed below by category. 

<!-- Per M365 enterprise categorization on https://www.microsoft.com/en-us/microsoft-365/enterprise/home

Office applications
Workbooks and charts - Excel
Email and calendar - Outlook
Files - OneDrive
Notes - OneNote

Business applications
(Bookings)

Collaboration services
Microsoft Teams
SharePoint
Planner
(Yammer)

Education
(https://www.microsoft.com/en-us/education/buy-license/microsoft365/default.aspx)
"Empower educators to unlock creativity, promote teamwork, and provide a simple and safe experience in a single, affordable solution built for education."

Identity and access management
AAD
Identity provider
(https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/identityprovider)
Invitation manager (https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/invitation)
Privileged Identity Management(https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/privilegedidentitymanagement_root)(https://docs.microsoft.com/en-us/azure/active-directory/active-directory-privileged-identity-management-configure)

Security
- Intelligent threat detection 
AAD risk detection (https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/identityriskevent)
(https://docs.microsoft.com/en-us/azure/active-directory/active-directory-reporting-risk-events)

Mobile device and app management
(Slides in community call https://www.slideshare.net/OfficeDev/microsoft-graph-community-call-2618)
Application, device, and data security
Protects data whether employees use store apps, web apps, or LOB apps
Protects data whether employees use Windows PC, Android, iOS or OSX devices
... whether data is stored in the cloud, on device or on-premises.
Microsoft Intune

Cross-device experiences
Project Rome

Social intelligence (analytics)
Insights
People API

Office 365 service usage reports
Reports  


-->

## Identity and access management

|Feature     |Supporting services  |Description |More information |
|:-----------|:--------------------|:-----------|:----------------|
| Users | Azure AD | Supports user-centric functionality across Microsoft Graph. | [Microsoft Graph users overview](../concepts/azuread-users-concept-overview.md)|
| Identities | Azure AD | Creates and manages directory resources such as users, groups, and applications. | [Azure AD identities overview](../concepts/azuread-identities-concept-overview.md)  |
| Access control | Azure AD | Grants users, groups, and applications access to resources and data. | [Azure AD access control overview](../concepts/azuread-access-control-concept-overview.md) |


## Productivity

|Feature     |Supporting services  |Description |More information |
|:-----------|:--------------------|:-----------|:----------------|
| Calendar | Outlook  | Lets users set up appointments and meetings on the web, mobile and desktop devices. It is part of the Outlook messaging communication hub in Office 365 that also lets users manage emails and contacts. | [Outlook calendar overview](../concepts/outlook-calendar-concept-overview.md)  |
| Files | OneDrive | Manages and shares user files on OneDrive, OneDrive for Business, and SharePoint document libraries. | [OneDrive files storage overview](../concepts/onedrive-concept-overview.md) |
| Mail | Outlook | Lets users communicate, organize messages, and manage priorities in their workflows, on the web, mobile and desktop devices. It is part of the Outlook communication hub in Office 365 that also lets users manage contacts and schedule meetings. | [Outlook mail overview](../concepts/outlook-mail-concept-overview.md) |
| Notes | OneNote | Lets users plan and organize ideas and information. | [OneNote API overview](../concepts/integrate_with_onenote.md) |
| Personal contacts | Outlook | Contacts manager on the web, mobile and desktop devices. It is part of the Outlook messaging communication hub in Office 365 that also lets users manage emails and schedule meetings.  | [Outlook personal contacts overview](../concepts/outlook-contacts-concept-overview.md) |
| To-do tasks (preview) | Outlook | Lets users track the start, due, and actual completion dates of to-do work items, and their recurrence, reminders, and status. It is part of the Outlook communication hub in Office 365 that also lets users manage emails and contacts, and schedule meetings. | [Outlook to-do tasks overview](../concepts/outlook-tasks-concept-overview.md)  |
| Workbooks and charts | Excel | Lets users use Excel spreadsheets to do complex calculations, track, analyze, and visualize data, and generate professional reports. | [Excel workbooks and charts overview](../concepts/excel-concept-overview.md) |


## Collaboration

<!-- Want to update links to concept overviews as they are created over time. 
-->
|Feature     |Supporting services  |Description |More information |
|:-----------|:--------------------|:-----------|:----------------|
|Groups | Azure AD, OneDrive, OneNote, Outlook, Planner | Office 365 groups for users to share conversations, files, notes, calendar, and plans. | [Office 365 groups overview](../concepts/office365-groups-concept-overview.md) |
| Shared sites and content  | SharePoint | Web-based platform for users and Office 365 groups to share, organize, manage, and discover content (including lists, files, and notes). | [SharePoint sites and content overview](../concepts/sharepoint-concept-overview.md) | 
|Tasks and plans | Planner | Enables users in Office 365 groups to create plans, assign tasks, and track progress. | [Planner plans and tasks overview](../concepts/planner-concept-overview.md) |
|Teamwork (preview) |  Microsoft Teams | Digital hub and chat-based workspace for teams to share files, notes, calendar, and plans. | [Microsoft Teams teamwork overview](../concepts/teams-concept-overview.md) |


## Social intelligence and analytics

|Feature     |Supporting services  |Description |More information |
|:-----------|:--------------------|:-----------|:----------------|
| Social intelligence: document insights (preview) | Delve, OneDrive, Outlook, SharePoint | Uses advanced analytics and machine learning techniques to get documents trending around, viewed, modified, or shared by a user.  | [Social intelligence in Microsoft Graph](../concepts/social-intel-concept-overview.md)  |
| Social intelligence: people | OneDrive, Outlook, SharePoint | Gets information about persons as ordered by their relevance to a user, determined by the user's communication and collaboration patterns, and business relationships.  | [Social intelligence in Microsoft Graph](../concepts/social-intel-concept-overview.md) |


## Device management

|Feature     |Supporting services  |Description |More information |
|:-----------|:--------------------|:-----------|:----------------|
|Mobile app and device management | Intune | Manages your organization’s mobile applications, and enrolls and configures devices. | [Intune devices and apps   overview](../concepts/intune-concept-overview.md) |


## Security intelligence

|Feature     |Supporting services  |Description |More information |
|:-----------|:--------------------|:-----------|:----------------|
| Security intelligence: identity risk detection | Azure AD | Gets information about risk events in user accounts detected by adaptive machine learning. | [Azure AD security intelligence in Microsoft Graph](../concepts/azuread-security-intel-concept-overview.md)  |
| Security intelligence: security | Azure AD | Provides a unified gateway to security insights and actions across Microsoft solutions. | [Azure AD security intelligence in Microsoft Graph](../concepts/azuread-security-intel-concept-overview.md) |


## Cross-device experiences

|Feature     |Supporting services  |Description |More information |
|:-----------|:--------------------|:-----------|:----------------|
| Cross-device experiences (preview) | Project Rome, Windows | Enables app experiences that transcend a single device, and instead move with the user from device to device regardless of its type and platform. | [Overview for Project Rome cross-device experiences](../concepts/project-rome-concept-overview.md) |


## Usage reports and audit logs

|Feature     |Supporting services  |Description |More information |
|:-----------|:--------------------|:-----------|:----------------|
| Reports | Azure AD, OneDrive, Outlook, SharePoint, and more | Gets activity and usage information of a supported service. | [Service usage reports overview](../api-reference/v1.0/resources/report.md) |


## Education

|Feature     |Supporting services  |Description |More information |
|:-----------|:--------------------|:-----------|:----------------|
| Education (preview) | Azure AD, Education | Supports schools, enrolments, and assignments, empowering educators to unlock creativity, promote teamwork, and provide a simple and safe experience for education. | [Education overview](../concepts/education-concept-overview.md) |


## Next steps

<!-- Need to update the destination page titles and URLs as Matt's v-team finalize on the examples and featured scenarios content 
-->

1. See examples of creative solutions built on top of services in Microsoft Graph that solve real customer problems.
2. Look under **Learn** in the table of contents to read about services and features that _you_ can leverage in your scenarios.
3. Try a sample request in the [Graph Explorer](https://developer.microsoft.com/graph/graph-explorer).
4. Use [quick starts](https://developer.microsoft.com/graph/quick-start) to set up a ready-to-run sample app.