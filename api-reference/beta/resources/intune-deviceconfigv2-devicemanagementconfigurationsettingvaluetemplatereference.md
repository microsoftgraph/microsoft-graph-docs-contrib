---
title: "deviceManagementConfigurationSettingValueTemplateReference resource type"
description: "Setting value template reference information"
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 09/12/2024
---

# deviceManagementConfigurationSettingValueTemplateReference resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Setting value template reference information

## Properties
|Property|Type|Description|
|:---|:---|:---|
|settingValueTemplateId|String|Setting value template id|
|useTemplateDefault|Boolean|Indicates whether to update policy setting value to match template setting default value|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.deviceManagementConfigurationSettingValueTemplateReference"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceManagementConfigurationSettingValueTemplateReference",
  "settingValueTemplateId": "String",
  "useTemplateDefault": true
}
```
