---
title: "privilegeManagementProcessType enum type"
description: "Indicates the type of elevated process"
author: "jaiprakashmb"
localization_priority: Normal
ms.subservice: "intune"
doc_type: enumPageType
---

# privilegeManagementProcessType enum type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Indicates the type of elevated process

## Members
|Member|Value|Description|
|:---|:---|:---|
|undefined|0|Default. If the type was unknown on the client for some reasons|
|parent|1|The elevated process is a parent process|
|child|2|The elevated process is a child process|
|unknownFutureValue|3|Evolvable emuneration sentinel value. Do not use|