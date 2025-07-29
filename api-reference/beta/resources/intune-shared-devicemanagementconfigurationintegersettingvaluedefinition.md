---
title: "deviceManagementConfigurationIntegerSettingValueDefinition resource type"
description: "Not yet documented"
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# deviceManagementConfigurationIntegerSettingValueDefinition resource type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Not yet documented


Inherits from [deviceManagementConfigurationSettingValueDefinition](../resources/intune-shared-devicemanagementconfigurationsettingvaluedefinition.md)

## Properties
|Property|Type|Description|
|:---|:---|:---|
|maximumValue|Int64|Maximum allowed value of the integer|
|minimumValue|Int64|Minimum allowed value of the integer|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.deviceManagementConfigurationIntegerSettingValueDefinition"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceManagementConfigurationIntegerSettingValueDefinition",
  "maximumValue": 1024,
  "minimumValue": 1024
}
```
