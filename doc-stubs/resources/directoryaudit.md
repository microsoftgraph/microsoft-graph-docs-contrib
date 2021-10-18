---
title: "directoryAudit resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# directoryAudit resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List directoryAudits](../api/directoryaudit-list.md)|[directoryAudit](../resources/directoryaudit.md) collection|Get a list of the [directoryAudit](../resources/directoryaudit.md) objects and their properties.|
|[Create directoryAudit](../api/auditlogroot-post-directoryaudits.md)|[directoryAudit](../resources/directoryaudit.md)|Create a new [directoryAudit](../resources/directoryaudit.md) object.|
|[Get directoryAudit](../api/directoryaudit-get.md)|[directoryAudit](../resources/directoryaudit.md)|Read the properties and relationships of a [directoryAudit](../resources/directoryaudit.md) object.|
|[Update directoryAudit](../api/directoryaudit-update.md)|[directoryAudit](../resources/directoryaudit.md)|Update the properties of a [directoryAudit](../resources/directoryaudit.md) object.|
|[Delete directoryAudit](../api/directoryaudit-delete.md)|None|Deletes a [directoryAudit](../resources/directoryaudit.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|activityDateTime|DateTimeOffset|**TODO: Add Description**|
|activityDisplayName|String|**TODO: Add Description**|
|additionalDetails|[keyValue](../resources/keyvalue.md) collection|**TODO: Add Description**|
|category|String|**TODO: Add Description**|
|correlationId|String|**TODO: Add Description**|
|id|String|**TODO: Add Description**|
|initiatedBy|[auditActivityInitiator](../resources/auditactivityinitiator.md)|**TODO: Add Description**|
|loggedByService|String|**TODO: Add Description**|
|operationType|String|**TODO: Add Description**|
|result|operationResult|**TODO: Add Description**. The possible values are: `success`, `failure`, `timeout`, `unknownFutureValue`.|
|resultReason|String|**TODO: Add Description**|
|targetResources|[targetResource](../resources/targetresource.md) collection|**TODO: Add Description**|
|userAgent|String|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.directoryAudit",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.directoryAudit",
  "id": "String (identifier)",
  "category": "String",
  "correlationId": "String",
  "result": "String",
  "resultReason": "String",
  "activityDisplayName": "String",
  "activityDateTime": "String (timestamp)",
  "loggedByService": "String",
  "operationType": "String",
  "initiatedBy": {
    "@odata.type": "microsoft.graph.auditActivityInitiator"
  },
  "targetResources": [
    {
      "@odata.type": "microsoft.graph.targetResource"
    }
  ],
  "userAgent": "String",
  "additionalDetails": [
    {
      "@odata.type": "microsoft.graph.keyValue"
    }
  ]
}
```

