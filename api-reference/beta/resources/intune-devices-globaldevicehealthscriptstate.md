---
title: "globalDeviceHealthScriptState enum type"
description: "Indicates whether global device health scripts are enabled and are in which state"
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# globalDeviceHealthScriptState enum type

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Indicates whether global device health scripts are enabled and are in which state

## Members
|Member|Value|Description|
|:---|:---|:---|
|notConfigured|0|Global device health scripts are not configured|
|pending|1|Global device health scripts are configured but not fully enabled|
|enabled|2|Global device health scripts are enabled and ready to use|