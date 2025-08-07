---
title: "autoRestartNotificationDismissalMethod enum type"
description: "Auto restart required notification dismissal method"
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# autoRestartNotificationDismissalMethod enum type

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Auto restart required notification dismissal method

## Members
|Member|Value|Description|
|:---|:---|:---|
|notConfigured|0|Not configured|
|automatic|1|Auto dismissal Indicates that the notification is automatically dismissed without user intervention|
|user|2|User dismissal. Allows the user to dismiss the notification|
|unknownFutureValue|3|Evolvable enum member|