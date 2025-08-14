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

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Indicates whether global device health scripts are enabled and are in which state

## Members
|Member|Value|Description|
|:---|:---|:---|
|notConfigured|0|Global device health scripts are not configured|
|pending|1|Global device health scripts are configured but not fully enabled|
|enabled|2|Global device health scripts are enabled and ready to use|