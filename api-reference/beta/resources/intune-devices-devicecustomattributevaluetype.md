---
title: "deviceCustomAttributeValueType enum type"
description: "Represents the expected type for a macOS custom attribute script value."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# deviceCustomAttributeValueType enum type

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Represents the expected type for a macOS custom attribute script value.

## Members
|Member|Value|Description|
|:---|:---|:---|
|integer|0|Indicates the value for a custom attribute script is an integer.|
|string|1|Indicates the value for a custom attribute script is a string.|
|dateTime|2|Indicates the value for a custom attribute script is a date conforming to ISO 8601.|