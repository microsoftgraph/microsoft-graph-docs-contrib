---
title: "assignmentFilterOperator enum type"
description: "Represents the different type of operators which can be used to craft the AssignmentFilter rule."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# assignmentFilterOperator enum type

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Represents the different type of operators which can be used to craft the AssignmentFilter rule.

## Members
|Member|Value|Description|
|:---|:---|:---|
|notSet|0|Indicates operator is not set|
|equals|1|Indicates the devices whose property value equals the configured input in Assignment Filters.|
|notEquals|2|Indicates the devices whose property value not equals the configured input in Assignment Filters.|
|startsWith|3|Indicates the devices whose property value starts with the configured input in Assignment Filters.|
|notStartsWith|4|Indicates the devices whose property value does not start with the configured input in Assignment Filters.|
|contains|5|Indicates the devices whose property value contains the configured input in Assignment Filters.|
|notContains|6|Indicates the devices whose property value does not contain the configured input in Assignment Filters.|
|in|7|Indicates the devices whose property value equals one of the configured input in Assignment Filters.|
|notIn|8|Indicates the devices whose property value does not equals any of the configured input in Assignment Filters.|
|endsWith|9|Indicates the devices whose property value ends with the configured input in Assignment Filters.|
|notEndsWith|10|Indicates the devices whose property value does not end with the configured input in Assignment Filters.|
|greaterThan|11|Indicates the devices whose property value is greater than the configured input in Assignment Filters.|
|greaterThanOrEquals|12|`Indicates the devices whose property value is greater than or equal to the configured input in Assignment Filters.|
|lessThan|13|Indicates the devices whose property value is less than the configured input in Assignment Filters.|
|lessThanOrEquals|14|Indicates the devices whose property value is less than or equal to the configured input in Assignment Filters.|
|unknownFutureValue|15|Evolvable enumeration sentinel value. Do not use.|