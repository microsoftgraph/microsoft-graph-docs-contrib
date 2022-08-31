---
title: "monitoring resource type"
description: "The entry point entity type to access all alert related entities and APIs."
author: "zhishending"
ms.localizationpriority: medium
ms.prod: "cloud-pc"
doc_type: resourcePageType
---

# monitoring resource type

Namespace: microsoft.graph.deviceManagement

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The entry point entity type to access all alert related entities and APIs.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|id|String|The alert id Inherited from [entity](../resources/entity.md).|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|alertRecords|[microsoft.graph.deviceManagement.alertRecord](../resources/devicemanagement-alertrecord.md) collection|The collection of records of alert events.|
|alertRules|[microsoft.graph.deviceManagement.alertRule](../resources/devicemanagement-alertrule.md) collection|The collection of alert rules.|

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.deviceManagement.monitoring",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceManagement.monitoring",
  "id": "String (identifier)"
}
```
