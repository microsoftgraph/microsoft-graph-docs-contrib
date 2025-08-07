---
title: "managedAppPhoneNumberRedirectLevel enum type"
description: "The classes of apps that are allowed to click-to-open a phone number, for making phone calls or sending text messages."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# managedAppPhoneNumberRedirectLevel enum type

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

The classes of apps that are allowed to click-to-open a phone number, for making phone calls or sending text messages.

## Members
|Member|Value|Description|
|:---|:---|:---|
|allApps|0|Sharing is allowed to all apps.|
|managedApps|1|Sharing is allowed to all managed apps.|
|customApp|2|Sharing is allowed to a custom app.|
|blocked|3|Sharing between apps is blocked.|