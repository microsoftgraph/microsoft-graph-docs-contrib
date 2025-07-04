---
title: "deviceManagementComparisonResult enum type"
description: "Setting comparison result type"
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# deviceManagementComparisonResult enum type

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Setting comparison result type

## Members
|Member|Value|Description|
|:---|:---|:---|
|unknown|0|Unknown setting comparison|
|equal|1|The setting values are equal|
|notEqual|2|The setting values are not equal|
|added|3|The setting is added|
|removed|4|The setting is removed|