---
title: "caseIndexOperation resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# caseIndexOperation resource type

Namespace: microsoft.graph

**TODO: Add Description**

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List lastIndexOperation](../api/custodian-list-lastindexoperation.md)|[caseIndexOperation](../resources/caseindexoperation.md) collection|Get the caseIndexOperation resources from the lastIndexOperation navigation property.|
|[Add lastIndexOperation](../api/custodian-post-lastindexoperation.md)|[caseIndexOperation](../resources/caseindexoperation.md)|Add lastIndexOperation by posting to the lastIndexOperation collection.|
|[Remove lastIndexOperation](../api/custodian-delete-lastindexoperation.md)|None|Remove a [caseIndexOperation](../resources/caseindexoperation.md) object.|
|[List caseIndexOperations](../api/caseindexoperation-list.md)|[caseIndexOperation](../resources/caseindexoperation.md) collection|Get a list of the [caseIndexOperation](../resources/caseindexoperation.md) objects and their properties.|
|[Create caseIndexOperation](../api/caseindexoperation-create.md)|[caseIndexOperation](../resources/caseindexoperation.md)|Create a new [caseIndexOperation](../resources/caseindexoperation.md) object.|
|[Get caseIndexOperation](../api/caseindexoperation-get.md)|[caseIndexOperation](../resources/caseindexoperation.md)|Read the properties and relationships of a [caseIndexOperation](../resources/caseindexoperation.md) object.|
|[Update caseIndexOperation](../api/caseindexoperation-update.md)|[caseIndexOperation](../resources/caseindexoperation.md)|Update the properties of a [caseIndexOperation](../resources/caseindexoperation.md) object.|
|[Delete caseIndexOperation](../api/caseindexoperation-delete.md)|None|Deletes a [caseIndexOperation](../resources/caseindexoperation.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|action|caseAction|**TODO: Add Description**. Possible values are: `contentExport`, `tag`, `convertToPdf`, `index`, `search`, `addDataToReviewSet`.|
|completedDateTime|DateTimeOffset|**TODO: Add Description**|
|createdDateTime|DateTimeOffset|**TODO: Add Description**|
|displayName|String|**TODO: Add Description**|
|id|String|**TODO: Add Description**|
|percentProgress|Int32|**TODO: Add Description**|
|status|caseOperationStatus|**TODO: Add Description**. Possible values are: `notStarted`, `submissionFailed`, `running`, `succeeded`, `partiallySucceeded`, `failed`.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.caseIndexOperation",
  "baseType": "",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.caseIndexOperation",
  "createdDateTime": "String (timestamp)",
  "completedDateTime": "String (timestamp)",
  "percentProgress": "Integer",
  "status": "String",
  "action": "String",
  "id": "String (identifier)",
  "displayName": "String"
}
```

