---
title: "deviceScopeOperator enum type"
description: "Device scope configuration query operator. Possible values are: equals, notEquals, contains, notContains, greaterThan, lessThan. Default value: equals."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# deviceScopeOperator enum type

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Device scope configuration query operator. Possible values are: equals, notEquals, contains, notContains, greaterThan, lessThan. Default value: equals.

## Members
|Member|Value|Description|
|:---|:---|:---|
|none|0|No operator set for the device scope configuration.|
|equals|1|Operator for the device configuration query to be used (Equals).|
|unknownFutureValue|2|Placeholder value for future expansion enums such as notEquals, contains, notContains, greaterThan, lessThan.|