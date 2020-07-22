---
title: "policyRoot resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# policyRoot resource type

Namespace: microsoft.graph

**TODO: Add Description**


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List policyRoots](../api/policyroot-list.md)|[policyRoot](../resources/policyroot.md) collection|Get a list of the [policyRoot](../resources/policyroot.md) objects and their properties.|
|[Create policyRoot](../api/policyroot-create.md)|[policyRoot](../resources/policyroot.md)|Create a new [policyRoot](../resources/policyroot.md) object.|
|[Get policyRoot](../api/policyroot-get.md)|[policyRoot](../resources/policyroot.md)|Read the properties and relationships of a [policyRoot](../resources/policyroot.md) object.|
|[Update policyRoot](../api/policyroot-update.md)|[policyRoot](../resources/policyroot.md)|Update the properties of a [policyRoot](../resources/policyroot.md) object.|
|[Delete policyRoot](../api/policyroot-delete.md)|None|Deletes a [policyRoot](../resources/policyroot.md) object.|
|[List authenticationFlowsPolicy](../api/policyroot-list-authenticationflowspolicy.md)|[authenticationFlowsPolicy](../resources/authenticationflowspolicy.md) collection|Get the authenticationFlowsPolicies from the authenticationFlowsPolicy navigation property.|
|[Create authenticationFlowsPolicy](../api/policyroot-post-authenticationflowspolicy.md)|[authenticationFlowsPolicy](../resources/authenticationflowspolicy.md)|Create a new authenticationFlowsPolicy object.|
|[Get authenticationFlowsPolicy](../api/policyroot-get-authenticationflowspolicy.md)|[authenticationFlowsPolicy](../resources/authenticationflowspolicy.md)|Read the properties and relationships of an [authenticationFlowsPolicy](../resources/authenticationflowspolicy.md) object.|
|[Update authenticationFlowsPolicy](../api/policyroot-update-authenticationflowspolicy.md)|[authenticationFlowsPolicy](../resources/authenticationflowspolicy.md)|Update the properties of an authenticationFlowsPolicy object.|
|[Delete authenticationFlowsPolicy](../api/policyroot-delete-authenticationflowspolicy.md)|None|Delete an [authenticationFlowsPolicy](../resources/authenticationflowspolicy.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md)|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|authenticationFlowsPolicy|[authenticationFlowsPolicy](../resources/authenticationflowspolicy.md)|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.policyRoot",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.policyRoot",
  "id": "String (identifier)"
}
```

