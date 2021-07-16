---
title: "deviceDetail resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# deviceDetail resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Properties
|Property|Type|Description|
|:---|:---|:---|
|browser|String|**TODO: Add Description**|
|browserId|String|**TODO: Add Description**|
|deviceId|String|**TODO: Add Description**|
|displayName|String|**TODO: Add Description**|
|isCompliant|Boolean|**TODO: Add Description**|
|isManaged|Boolean|**TODO: Add Description**|
|operatingSystem|String|**TODO: Add Description**|
|trustType|String|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.deviceDetail"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceDetail",
  "deviceId": "String",
  "displayName": "String",
  "operatingSystem": "String",
  "browser": "String",
  "browserId": "String",
  "isCompliant": "Boolean",
  "isManaged": "Boolean",
  "trustType": "String"
}
```

