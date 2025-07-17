---
title: "deletedItemContainer resource type"
description: "A container for deleted lifecycle workflow objects during the period before they're permanently deleted."
author: "AlexFilipin"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
ms.date: 05/23/2024
---

# deletedItemContainer resource type

Namespace: microsoft.graph

A container for deleted lifecycle workflow objects during the period before they're permanently deleted. Microsoft Entra ID Governance may permanently delete the workflows after 30 days, or you may [permanently delete the workflows](../api/identitygovernance-deletedItemcontainer-delete.md), or you may [restore the deleted workflow and its associated objects](../api/identitygovernance-workflow-restore.md).

Inherits from [entity](../resources/entity.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List deleted workflows](../api/identitygovernance-lifecycleworkflowscontainer-list-deleteditems.md)|[deletedItemContainer](../resources/deleteditemcontainer.md) collection|Get a list of the [deletedItemContainer](../resources/deleteditemcontainer.md) objects and their properties.|
|[Get a deleted workflow](../api/identitygovernance-deleteditemcontainer-get.md)|[deletedItemContainer](../resources/deleteditemcontainer.md)|Read the properties and relationships of a [deletedItemContainer](../resources/deleteditemcontainer.md) object.|
|[Restore](../api/identitygovernance-workflow-restore.md)|[workflow](../resources/identitygovernance-workflow.md)|Restore a deleted [lifecycle workflow](../resources/identitygovernance-workflow.md) from the [deletedItemContainer](../resources/deleteditemcontainer.md) object.|
|[Permanently delete a workflow](../api/identitygovernance-deletedItemcontainer-delete.md)|None|Permanently delete a deleted [lifecycle workflow](../resources/identitygovernance-workflow.md) from the [lifecycleWorkflowsContainer](../resources/identitygovernance-lifecycleworkflowscontainer.md) object.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier of the [workflow](../resources/identitygovernance-workflow.md) that was deleted. Inherited from [entity](../resources/entity.md).|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|workflows|[microsoft.graph.identityGovernance.workflow](../resources/identitygovernance-workflow.md) collection|Deleted workflows that end up in the deletedItemsContainer.|

## JSON representation

The following JSON representation shows the resource type.
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
