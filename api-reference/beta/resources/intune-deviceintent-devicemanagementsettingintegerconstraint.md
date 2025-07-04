---
title: "deviceManagementSettingIntegerConstraint resource type"
description: "Constraint enforcing the permitted value range for an integer setting"
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# deviceManagementSettingIntegerConstraint resource type

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Constraint enforcing the permitted value range for an integer setting


Inherits from [deviceManagementConstraint](../resources/intune-deviceintent-devicemanagementconstraint.md)

## Properties
|Property|Type|Description|
|:---|:---|:---|
|minimumValue|Int32|The minimum permitted value|
|maximumValue|Int32|The maximum permitted value|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.deviceManagementSettingIntegerConstraint"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceManagementSettingIntegerConstraint",
  "minimumValue": 1024,
  "maximumValue": 1024
}
```