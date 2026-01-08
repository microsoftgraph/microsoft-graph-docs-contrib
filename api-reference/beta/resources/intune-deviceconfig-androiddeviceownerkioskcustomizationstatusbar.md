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

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

An enum representing possible values for kiosk customization system navigation.

## Members
|Member|Value|Description|
|:---|:---|:---|
|notConfigured|0|Not configured; this value defaults to STATUS_BAR_UNSPECIFIED.|
|notificationsAndSystemInfoEnabled|1|System info and notifications are shown on the status bar in kiosk mode.|
|systemInfoOnly|2|Only system info is shown on the status bar in kiosk mode.|