---
title: "caseOperation resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# caseOperation resource type

Namespace: microsoft.graph

**TODO: Add Description**


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List caseOperations](../api/caseoperation-list.md)|[caseOperation](../resources/caseoperation.md) collection|Get a list of the [caseOperation](../resources/caseoperation.md) objects and their properties.|
|[Create caseOperation](../api/caseoperation-create.md)|[caseOperation](../resources/caseoperation.md)|Create a new [caseOperation](../resources/caseoperation.md) object.|
|[Get caseOperation](../api/caseoperation-get.md)|[caseOperation](../resources/caseoperation.md)|Read the properties and relationships of a [caseOperation](../resources/caseoperation.md) object.|
|[Update caseOperation](../api/caseoperation-update.md)|[caseOperation](../resources/caseoperation.md)|Update the properties of a [caseOperation](../resources/caseoperation.md) object.|
|[Delete caseOperation](../api/caseoperation-delete.md)|None|Deletes a [caseOperation](../resources/caseoperation.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|action|caseAction|**TODO: Add Description**. Possible values are: `contentExport`, `tag`, `convertToPdf`, `index`, `search`, `addDataToReviewSet`.|
|completedDateTime|DateTimeOffset|**TODO: Add Description**|
|createdBy|[identitySet](../resources/identityset.md)|**TODO: Add Description**|
|createdDateTime|DateTimeOffset|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md)|
|percentProgress|Int32|**TODO: Add Description**|
|resultInfo|[resultInfo](../resources/resultinfo.md)|**TODO: Add Description**|
|status|caseOperationStatus|**TODO: Add Description**. Possible values are: `notStarted`, `submissionFailed`, `running`, `succeeded`, `partiallySucceeded`, `failed`.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.caseOperation",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.caseOperation",
  "id": "String (identifier)",
  "createdDateTime": "String (timestamp)",
  "completedDateTime": "String (timestamp)",
  "percentProgress": "Integer",
  "status": "String",
  "action": "String",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "resultInfo": {
    "@odata.type": "microsoft.graph.resultInfo"
  }
}
```

