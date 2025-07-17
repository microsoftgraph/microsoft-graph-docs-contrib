---
title: "Integrate with Microsoft Graph notifications (deprecated)"
description: "Integrate your apps with Microsoft Graph notifications with a few simple steps (deprecated)."
ms.localizationpriority: high
ms.subservice: "notifications"
author: "merzink"
ms.date: 11/07/2024
---

# Integrate with Microsoft Graph notifications (deprecated)

> [!IMPORTANT]
> The Microsoft Graph notifications API is deprecated and stopped returning data in January 2022. For an alternative notification experience, see [Microsoft Azure Notification Hubs](/azure/notification-hubs). For more information, see the blog post [Retiring Microsoft Graph notifications API (beta)](https://devblogs.microsoft.com/microsoft365dev/retiring-microsoft-graph-notifications/).

You can integrate your apps with Microsoft Graph notifications with a few simple steps, as shown in the following diagram.

![Image showing the steps to onboard notifications: registration, cross-device onboarding, server integration, and client integration](images/notifications-integration-e2e-overview.png)

1.  [Register](notifications-integration-app-registration.md) your application in the Microsoft Entra admin center.

2. [Onboard](notifications-integration-cross-device-experiences-onboarding.md) to Partner Center/Windows Dev Center for cross-platform application identity and push notification credentials for Windows, iOS, and Android.

3.  [Set up your app server](notifications-integrating-app-server.md) to send notifications via Microsoft Graph.

4.  [Integrate](notifications-integrating-with-windows.md) the new [notifications client SDK](https://aka.ms/GNSDK) into your Windows, iOS, Android, or web clients to receive and manage notifications.

> [!NOTE]
> We recommend using the new and improved, lightweight [notification SDK](https://aka.ms/GNSDK) instead of the cross-device [Project Rome SDK](https://github.com/microsoft/project-rome).
