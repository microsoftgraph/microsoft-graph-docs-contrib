---
title: "setting resource type"
description: "Represents a setting that is used within a baseline."
author: "idwilliams"
ms.localizationpriority: medium
ms.subservice: "m365-lighthouse"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# setting resource type

Namespace: microsoft.graph.managedTenants

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a setting that is used within a baseline.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|The display name for the setting. Required. Read-only.|
|jsonValue|String|The value for the setting serialized as string of JSON. Required. Read-only.|
|overwriteAllowed|Boolean|A flag indicating whether the setting can be override existing configurations when applied. Required. Read-only.|
|valueType|managementParameterValueType|The data type for the setting. The possible values are: `string`, `integer`, `boolean`, `guid`, `stringCollection`, `integerCollection`, `booleanCollection`, `guidCollection`, `unknownFutureValue`. Required. Read-only.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.managedTenants.setting"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.managedTenants.setting",
  "displayName": "String",
  "overwriteAllowed": "Boolean",
  "valueType": "String",
  "jsonValue": "String"
}
```
