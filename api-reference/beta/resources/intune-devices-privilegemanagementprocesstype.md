---
title: "privilegeManagementProcessType enum type"
description: "Indicates the type of elevated process"
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# privilegeManagementProcessType enum type

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Indicates the type of elevated process

## Members
|Member|Value|Description|
|:---|:---|:---|
|undefined|0|Default. If the type was unknown on the client for some reasons|
|parent|1|The elevated process is a parent process|
|child|2|The elevated process is a child process|
|unknownFutureValue|3|Evolvable emuneration sentinel value. Do not use|