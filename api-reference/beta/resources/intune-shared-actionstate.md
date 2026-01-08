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
> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

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
