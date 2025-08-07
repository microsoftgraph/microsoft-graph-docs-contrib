---
title: "androidDeviceOwnerKioskCustomizationStatusBar enum type"
description: "An enum representing possible values for kiosk customization system navigation."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# androidDeviceOwnerKioskCustomizationStatusBar enum type

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

An enum representing possible values for kiosk customization system navigation.

## Members
|Member|Value|Description|
|:---|:---|:---|
|notConfigured|0|Not configured; this value defaults to STATUS_BAR_UNSPECIFIED.|
|notificationsAndSystemInfoEnabled|1|System info and notifications are shown on the status bar in kiosk mode.|
|systemInfoOnly|2|Only system info is shown on the status bar in kiosk mode.|