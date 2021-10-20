---
title: "allowedRemoteAssistanceActions enum type"
description: "Flags enumeration indicating whether a helper can establish a "View screen", "Take full control" and "Elevation" remote assistance action with a device or sharer"
author: "dougeby"
ms.localizationpriority: medium
ms.prod: "intune"
doc_type: enumPageType
---

# allowedRemoteAssistanceActions enum type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Flags enumeration indicating whether a helper can establish a "View screen", "Take full control" and "Elevation" remote assistance action with a device or sharer

## Members
|Member|Value|Description|
|:---|:---|:---|
|viewScreen|1|Helper can view the screen of the sharer's device|
|takeFullControl|2|Helper can take full control of the sharer's device|
|elevation|4|Helper can take full control of the sharer's device with elevated privileges|



