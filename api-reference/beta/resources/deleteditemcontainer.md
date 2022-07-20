---
title: "deletedItemContainer resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# deletedItemContainer resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List deletedItemContainers](../api/identitygovernance-lifecycleworkflowscontainer-list-deleteditems.md)|[deletedItemContainer](../resources/deleteditemcontainer.md) collection|Get a list of the [deletedItemContainer](../resources/deleteditemcontainer.md) objects and their properties.|
|[Create deletedItemContainer](../api/identitygovernance-lifecycleworkflowscontainer-post-deleteditems.md)|[deletedItemContainer](../resources/deleteditemcontainer.md)|Create a new [deletedItemContainer](../resources/deleteditemcontainer.md) object.|
|[Get deletedItemContainer](../api/deleteditemcontainer-get.md)|[deletedItemContainer](../resources/deleteditemcontainer.md)|Read the properties and relationships of a [deletedItemContainer](../resources/deleteditemcontainer.md) object.|
|[Update deletedItemContainer](../api/deleteditemcontainer-update.md)|[deletedItemContainer](../resources/deleteditemcontainer.md)|Update the properties of a [deletedItemContainer](../resources/deleteditemcontainer.md) object.|
|[Delete deletedItemContainer](../api/identitygovernance-lifecycleworkflowscontainer-delete-deleteditems.md)|None|Deletes a [deletedItemContainer](../resources/deleteditemcontainer.md) object.|
|[List workflows](../api/deleteditemcontainer-list-workflows.md)|[workflow](../resources/identitygovernance-workflow.md) collection|Get the workflow resources from the workflows navigation property.|
|[Create workflow](../api/deleteditemcontainer-post-workflows.md)|[workflow](../resources/identitygovernance-workflow.md)|Create a new workflow object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|workflows|[workflow](../resources/identitygovernance-workflow.md) collection|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.deletedItemContainer",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deletedItemContainer",
  "id": "String (identifier)"
}
```

