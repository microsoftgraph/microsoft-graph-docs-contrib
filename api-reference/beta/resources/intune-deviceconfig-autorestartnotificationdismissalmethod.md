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

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Auto restart required notification dismissal method

## Members
|Member|Value|Description|
|:---|:---|:---|
|notConfigured|0|Not configured|
|automatic|1|Auto dismissal Indicates that the notification is automatically dismissed without user intervention|
|user|2|User dismissal. Allows the user to dismiss the notification|
|unknownFutureValue|3|Evolvable enum member|