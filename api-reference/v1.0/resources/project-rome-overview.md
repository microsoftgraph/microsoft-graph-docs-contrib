---
title: "Use the Microsoft Graph API to work with Project Rome"
description: "Project Rome is a Microsoft initiative to build a cross-device experiences platform. Project Rome enables an app on a local client or service to interact with apps and services on a remote host when the user signs in with the same Microsoft account that they use to sign in on the client device. This allows you to program cross-device and cross-platform experiences that are centered around user tasks rather than devices."
ms.localizationpriority: medium
author: "ailae"
ms.subservice: project-rome
doc_type: conceptualPageType
---

# Use the Microsoft Graph API to work with Project Rome

[Project Rome](https://developer.microsoft.com/en-us/windows/project-rome) is a Microsoft initiative to build a cross-device experiences platform. Project Rome enables an app on a local client or service to interact with apps and services on a remote host when the user signs in with the same Microsoft account that they use to sign in on the client device. This allows you to program cross-device and cross-platform experiences that are centered around user tasks rather than devices.

The following key capabilities are exposed via Microsoft Graph to help you enable cross-device experiences.

## Activities

Activities in Microsoft Graph enable you to drive user engagement with your apps across devices and platforms. An activity is the unit of user engagement, and consists of three components:

- A deep link
- A visual representation
- Content metadata that describes the activity, using the [https://schema.org/](https://schema.org/) shared vocabulary

When a session is created by an application, a history item is added to the activity to reflect the period of user engagement. Each time a user reengages with an activity, a new history item is added to the activity to accrue user engagement.

When an application publishes user activity objects, the object will show up in some of the new UI surfaces in Windows; for example, Cortana Notifications and Timeline. You can specify both rich metadata (to allow activities to be presented in just the right context) and rich visuals (using [Adaptive Card](https://adaptivecards.io/) markup) in your activity objects.

You can use the following Microsoft Graph APIs to create and retrieve user activities:

- [Create or replace activity](../api/projectrome-put-activity.md)
- [Get activities](../api/projectrome-get-activities.md)
- [Get recent activities](../api/projectrome-get-recent-activities.md)
- [Delete an activity](../api/projectrome-delete-activity.md)
- [Create or replace a history item](../api/projectrome-put-historyitem.md)
- [Delete a history item](../api/projectrome-delete-historyitem.md)

## Roaming data

Access Windows data stored in the cloud via the cloud clipboard and Windows settings APIs.

The Cloud Clipboard feature in Windows enables users to copy and paste items such as text, images, and links across their applications and devices. You can use the cloud clipboard APIs in Microsoft Graph to:

- [List cloud clipboard items for the signed-in user](/graph//api/cloudclipboardroot-list-items)
- [Get a cloud clipboard item for a user](/graph/api/cloudclipboarditem-get)

The Windows setting API in Microsoft Graph enables users and authorized third parties acting on behalf of users to retrieve their Windows operating system settings data stored in the Microsoft cloud. For details about using the Windows setting API, see [Use the Windows settings API](/graph/api/resources/windows-setting-api-overview).
