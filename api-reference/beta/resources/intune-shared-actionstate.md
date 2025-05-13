---
title: "actionState enum type"
description: "State of the action on the device"
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# actionState enum type

Namespace: microsoft.graph
> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.


State of the action on the device

## Members
|Member|Value|Description|
|:---|:---|:---|
|none|0|Not a valid action state|
|pending|1|Action is pending|
|canceled|2|Action has been cancelled.|
|active|3|Action is active.|
|done|4|Action completed without errors.|
|failed|5|Action failed|
|notSupported|6|Action is not supported.|
