---
title: "Overview for accessing service health and communications through Microsoft Graph"
description: "Use the service communications API in Microsoft Graph to access the health status and message center posts about  Microsoft cloud services."
author: "payiAzure"
localization_priority: Priority
ms.prod: "service-communications"
ms.custom: scenarios:getting-started
---

# Overview for accessing service health and communications in Microsoft Graph
You can use the service communications API in Microsoft Graph to access the health status and message center posts about Microsoft cloud services. The actual health status and posts correspond to the Microsoft 365 and Dynamics 365 services that are supported by the API and subscribed by the tenant.

## Why integrate with service health and communications data?

### Get service health and message center posts for a tenant
Administrators can get current or historical health data of supported Microsoft services. When experiencing problems with a Microsoft service, they can check its health status to verify if an issue has been identified with a resolution in progress, before calling for support or spending time troubleshooting. 

Administrators can regularly review message center posts to keep track of upcoming new features and updates, and other important announcements. They can then anticipate how these changes may affect users and plan accordingly.

### Integrate service communications data into custom workflows
App developers can integrate active service health issues directly into custom applications, allowing administrators to triage and share status information with impacted audiences.

Apps can enable custom workflows for administrators to review, assign, and triage change communications from the message center.

## Leverage service communications API in Microsoft Graph to build customer facing dashboards

Developers can leverage service communications API in Microsoft Graph to build applications with customer facing dashboards to let their customer knows the health of Microsoft services and let their customer keeps track of upcoming changes or other important announcements about the Micorosft services.

### Dashboards example on Microsoft 365 admin center
[Microsoft 365 admin center](https://admin.microsoft.com/Adminportal/Home?source=applauncher#/homepage) service integrates with service communications API to build their health dashboards. Sign in to the admin cetner with an admin account, go to <b>Health</b> section, you can see the <b>Service health</b>, <b>Windows release health</b> and <b>Message center</b> dashboards. See figure 1.

**Figure 1. Health dashboards on Microsoft 365 admin center**

![Screenshot of Microsoft 365 admin center dashboards](images/service-communications-concept-overview-admin-center-dashboards.png)

From the **Service health** dashboad, you can view the health of your Microsoft services, including Office on the web, Yammer, Microsoft Dynamics CRM, and mobile device management cloud services, see figure 2.

**Figure 2. Service health dashboard on Microsoft 365 admin center**

![Screenshot of Microsoft 365 admin center service health dashboard for a user](images/service-communications-concept-overview-admin-center-serviceHealth2.png)

From the **Message center** dashboad, you can view upcoming changes, including new and changed features, planned maintenance, or other important announcements, see figure 3.

**Figure 3. Message center dashboard on Microsoft 365 admin center**

![Screenshot of Microsoft 365 admin center message center dashboard for a user](images/service-communications-concept-overview-admin-center-messagecenter2.png)

From the **Windows release health** dashboad, you can view essential information about monthly quality and feature updates, the latest features and enhancements for Windows, see figure 4.

**Figure 4. Windows release health dashboard on Microsoft 365 admin center**

![Screenshot of Microsoft 365 admin center Windows realease health dashboard for a user](images/service-communications-concept-overview-admin-center-windowshealth2.png)

## Next steps

- Try service communications sample queries in [Graph Explorer](https://developer.microsoft.com/graph/graph-explorer/?request=admin%2FserviceAnnouncement%2FhealthOverviews&version=beta).

- Learn more about the [service communications API](/graph/api/resources/serviceannouncement?view=graph-rest-beta&preserve-view=true).