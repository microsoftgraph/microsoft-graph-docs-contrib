---
title: "deviceManagementConfigurationSettingDependedOnBy resource type"
description: "Intune Deviceconfigv2 Devicemanagementconfigurationsettingdependedonby Resources ."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# deviceManagementConfigurationSettingDependedOnBy resource type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.



## Properties
|Property|Type|Description|
|:---|:---|:---|
|dependedOnBy|String|Identifier of child setting that is dependent on the current setting|
|required|Boolean|Value that determines if the child setting is required based on the parent setting's selection|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.deviceManagementConfigurationSettingDependedOnBy"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceManagementConfigurationSettingDependedOnBy",
  "dependedOnBy": "String",
  "required": true
}
```