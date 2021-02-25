---
title: "approval resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# approval resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List approvals](../api/approval-list.md)|[approval](../resources/approval.md) collection|Get a list of the [approval](../resources/approval.md) objects and their properties.|
|[Create approval](../api/approval-create.md)|[approval](../resources/approval.md)|Create a new [approval](../resources/approval.md) object.|
|[Get approval](../api/approval-get.md)|[approval](../resources/approval.md)|Read the properties and relationships of an [approval](../resources/approval.md) object.|
|[Update approval](../api/approval-update.md)|[approval](../resources/approval.md)|Update the properties of an [approval](../resources/approval.md) object.|
|[Delete approval](../api/approval-delete.md)|None|Deletes an [approval](../resources/approval.md) object.|
|[filterByCurrentUser](../api/approval-filterbycurrentuser.md)|[approval](../resources/approval.md) collection|**TODO: Add Description**|
|[List request](../api/approval-list-request.md)|[request](../resources/request.md) collection|Get the request resources from the request navigation property.|
|[Add request](../api/approval-post-request.md)|[request](../resources/request.md)|Add request by posting to the request collection.|
|[List steps](../api/approval-list-steps.md)|[approvalStep](../resources/approvalstep.md) collection|Get the approvalStep resources from the steps navigation property.|
|[Create approvalStep](../api/approval-post-steps.md)|[approvalStep](../resources/approvalstep.md)|Create a new approvalStep object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description**|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|request|[request](../resources/request.md)|**TODO: Add Description**|
|steps|[approvalStep](../resources/approvalstep.md) collection|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.approval",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.approval",
  "id": "String (identifier)"
}
```

