---
title: "winGetAppNotification enum type"
description: "Contains value for notification status."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# winGetAppNotification enum type

Namespace: microsoft.graph
> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.


Contains value for notification status.

## Members
|Member|Value|Description|
|:---|:---|:---|
|showAll|0|Show all notifications.|
|showReboot|1|Only show restart notification and suppress other notifications.|
|hideAll|2|Hide all notifications.|
|unknownFutureValue|3|Unknown future value, reserved for future usage as expandable enum.|
