---
title: "b2bManagementPolicy resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
ms.date: 10/27/2025
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS subservice. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
doc_type: resourcePageType
---

# b2bManagementPolicy resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [stsPolicy](../resources/stspolicy.md).


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/policyroot-list-b2bmanagementpolicies.md)|[b2bManagementPolicy](../resources/b2bmanagementpolicy.md) collection|Get a list of the b2bManagementPolicy objects and their properties.|
|[Create](../api/policyroot-post-b2bmanagementpolicies.md)|[b2bManagementPolicy](../resources/b2bmanagementpolicy.md)|Create a new b2bManagementPolicy object.|
|[Get](../api/b2bmanagementpolicy-get.md)|[b2bManagementPolicy](../resources/b2bmanagementpolicy.md)|Read the properties and relationships of [b2bManagementPolicy](../resources/b2bmanagementpolicy.md) object.|
|[Update](../api/b2bmanagementpolicy-update.md)|[b2bManagementPolicy](../resources/b2bmanagementpolicy.md)|Update the properties of a b2bManagementPolicy object.|
|[Delete](../api/policyroot-delete-b2bmanagementpolicies.md)|None|Delete a b2bManagementPolicy object.|
|[List appliesTo](../api/b2bmanagementpolicy-list-appliesto.md)|[directoryObject](../resources/directoryobject.md) collection|**TODO: Add a useful description.**|
|[Add appliesTo](../api/b2bmanagementpolicy-post-appliesto.md)|[directoryObject](../resources/directoryobject.md)|Add appliesTo by posting to the appliesTo collection.|
|[Remove appliesTo](../api/b2bmanagementpolicy-delete-appliesto.md)|None|Remove a [directoryObject](../resources/directoryobject.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|definition|String collection|**TODO: Add Description** Inherited from [stsPolicy](../resources/stspolicy.md).|
|deletedDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [directoryObject](../resources/directoryobject.md).|
|description|String|**TODO: Add Description** Inherited from [policyBase](../resources/policybase.md).|
|displayName|String|**TODO: Add Description** Inherited from [policyBase](../resources/policybase.md).|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md). Inherits from [entity](../resources/entity.md)|
|isOrganizationDefault|Boolean|**TODO: Add Description** Inherited from [stsPolicy](../resources/stspolicy.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|appliesTo|[directoryObject](../resources/directoryobject.md) collection|**TODO: Add Description** Inherited from [microsoft.graph.stsPolicy](../resources/stspolicy.md)|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.b2bManagementPolicy",
  "baseType": "microsoft.graph.stsPolicy",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.b2bManagementPolicy",
  "id": "String (identifier)",
  "deletedDateTime": "String (timestamp)",
  "description": "String",
  "displayName": "String",
  "definition": [
    "String"
  ],
  "isOrganizationDefault": "Boolean"
}
```

