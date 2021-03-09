---
title: "approvalStage resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# approvalStage resource type

Namespace: microsoft.graph



**TODO: Add Description**

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List approvalStages](../api/approvalstage-list.md)|[approvalStage](../resources/approvalstage.md) collection|Get a list of the [approvalStage](../resources/approvalstage.md) objects and their properties.|
|[Create approvalStage](../api/approvalstage-create.md)|[approvalStage](../resources/approvalstage.md)|Create a new [approvalStage](../resources/approvalstage.md) object.|
|[Get approvalStage](../api/approvalstage-get.md)|[approvalStage](../resources/approvalstage.md)|Read the properties and relationships of an [approvalStage](../resources/approvalstage.md) object.|
|[Update approvalStage](../api/approvalstage-update.md)|[approvalStage](../resources/approvalstage.md)|Update the properties of an [approvalStage](../resources/approvalstage.md) object.|
|[Delete approvalStage](../api/approvalstage-delete.md)|None|Deletes an [approvalStage](../resources/approvalstage.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|assignedToMe|Boolean|**TODO: Add Description**|
|displayName|String|**TODO: Add Description**|
|id|String|**TODO: Add Description**|
|justification|String|**TODO: Add Description**|
|reviewedBy|[identity](../resources/identity.md)|**TODO: Add Description**|
|reviewedDateTime|DateTimeOffset|**TODO: Add Description**|
|reviewResult|String|**TODO: Add Description**|
|status|String|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.approvalStage",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.approvalStage",
  "id": "String (identifier)",
  "displayName": "String",
  "status": "String",
  "assignedToMe": "Boolean",
  "reviewedBy": {
    "@odata.type": "microsoft.graph.identity"
  },
  "reviewedDateTime": "String (timestamp)",
  "reviewResult": "String",
  "justification": "String"
}
```

