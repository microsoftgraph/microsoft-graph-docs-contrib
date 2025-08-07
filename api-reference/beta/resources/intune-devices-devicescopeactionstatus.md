---
title: "deviceScopeActionStatus enum type"
description: "Indicates the status of the attempted device scope action"
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# deviceScopeActionStatus enum type

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Indicates the status of the attempted device scope action

## Members
|Member|Value|Description|
|:---|:---|:---|
|failed|0|Indicates the device scope action failed to trigger.|
|succeeded|1|Indicates the device scope action was successfully triggered.|
|unknownFutureValue|2|Placeholder value for future expansion.|