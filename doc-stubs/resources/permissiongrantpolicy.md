---
title: "permissionGrantPolicy resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# permissionGrantPolicy resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [policyBase](../resources/policybase.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List permissionGrantPolicies](../api/permissiongrantpolicy-list.md)|[permissionGrantPolicy](../resources/permissiongrantpolicy.md) collection|Get a list of the [permissionGrantPolicy](../resources/permissiongrantpolicy.md) objects and their properties.|
|[Create permissionGrantPolicy](../api/permissiongrantpolicy-create.md)|[permissionGrantPolicy](../resources/permissiongrantpolicy.md)|Create a new [permissionGrantPolicy](../resources/permissiongrantpolicy.md) object.|
|[Get permissionGrantPolicy](../api/permissiongrantpolicy-get.md)|[permissionGrantPolicy](../resources/permissiongrantpolicy.md)|Read the properties and relationships of a [permissionGrantPolicy](../resources/permissiongrantpolicy.md) object.|
|[Update permissionGrantPolicy](../api/permissiongrantpolicy-update.md)|[permissionGrantPolicy](../resources/permissiongrantpolicy.md)|Update the properties of a [permissionGrantPolicy](../resources/permissiongrantpolicy.md) object.|
|[Delete permissionGrantPolicy](../api/permissiongrantpolicy-delete.md)|None|Deletes a [permissionGrantPolicy](../resources/permissiongrantpolicy.md) object.|
|[List excludes](../api/permissiongrantpolicy-list-excludes.md)|[permissionGrantConditionSet](../resources/permissiongrantconditionset.md) collection|Get the permissionGrantConditionSet resources from the excludes navigation property.|
|[Create permissionGrantConditionSet](../api/permissiongrantpolicy-post-excludes.md)|[permissionGrantConditionSet](../resources/permissiongrantconditionset.md)|Create a new permissionGrantConditionSet object.|
|[List includes](../api/permissiongrantpolicy-list-includes.md)|[permissionGrantConditionSet](../resources/permissiongrantconditionset.md) collection|Get the permissionGrantConditionSet resources from the includes navigation property.|
|[Create permissionGrantConditionSet](../api/permissiongrantpolicy-post-includes.md)|[permissionGrantConditionSet](../resources/permissiongrantconditionset.md)|Create a new permissionGrantConditionSet object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|deletedDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [directoryObject](../resources/directoryobject.md).|
|description|String|**TODO: Add Description** Inherited from [policyBase](../resources/policybase.md).|
|displayName|String|**TODO: Add Description** Inherited from [policyBase](../resources/policybase.md).|
|id|String|**TODO: Add Description** Inherited from [directoryObject](../resources/directoryobject.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|excludes|[permissionGrantConditionSet](../resources/permissiongrantconditionset.md) collection|**TODO: Add Description**|
|includes|[permissionGrantConditionSet](../resources/permissiongrantconditionset.md) collection|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.permissionGrantPolicy",
  "baseType": "Microsoft.DirectoryServices.policyBase",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.permissionGrantPolicy",
  "id": "String (identifier)",
  "deletedDateTime": "String (timestamp)",
  "description": "String",
  "displayName": "String"
}
```

