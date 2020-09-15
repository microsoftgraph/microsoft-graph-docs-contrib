---
title: "permissionGrantPolicy resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# permissionGrantPolicy resource type

Namespace: microsoft.graph

**TODO: Add Description**


Inherits from [policyBase](../resources/policybase.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List permissionGrantPolicies](../api/policyroot-list-permissiongrantpolicies.md)|[permissionGrantPolicy](../resources/permissiongrantpolicy.md) collection|Get the permissionGrantPolicy resources from the permissionGrantPolicies navigation property.|
|[Create permissionGrantPolicies](../api/policyroot-post-permissiongrantpolicies.md)|[permissionGrantPolicy](../resources/permissiongrantpolicy.md)|Create a new permissionGrantPolicy object.|
|[Update permissionGrantPolicies](../api/policyroot-update-permissiongrantpolicies.md)|[permissionGrantPolicy](../resources/permissiongrantpolicy.md)|Update the properties of a permissionGrantPolicies object.|
|[Get permissionGrantPolicies](../api/policyroot-get-permissiongrantpolicy.md)|[permissionGrantPolicy](../resources/permissiongrantpolicy.md)|Read the properties and relationships of a [permissionGrantPolicy](../resources/permissiongrantpolicy.md) object.|
|[Delete permissionGrantPolicies](../api/policyroot-delete-permissiongrantpolicies.md)|None|Delete a [permissionGrantPolicy](../resources/permissiongrantpolicy.md) object.|
|[List permissionGrantPolicies](../api/permissiongrantpolicy-list.md)|[permissionGrantPolicy](../resources/permissiongrantpolicy.md) collection|Get a list of the [permissionGrantPolicy](../resources/permissiongrantpolicy.md) objects and their properties.|
|[Create permissionGrantPolicy](../api/permissiongrantpolicy-create.md)|[permissionGrantPolicy](../resources/permissiongrantpolicy.md)|Create a new [permissionGrantPolicy](../resources/permissiongrantpolicy.md) object.|
|[Get permissionGrantPolicy](../api/permissiongrantpolicy-get.md)|[permissionGrantPolicy](../resources/permissiongrantpolicy.md)|Read the properties and relationships of a [permissionGrantPolicy](../resources/permissiongrantpolicy.md) object.|
|[Update permissionGrantPolicy](../api/permissiongrantpolicy-update.md)|[permissionGrantPolicy](../resources/permissiongrantpolicy.md)|Update the properties of a [permissionGrantPolicy](../resources/permissiongrantpolicy.md) object.|
|[Delete permissionGrantPolicy](../api/permissiongrantpolicy-delete.md)|None|Deletes a [permissionGrantPolicy](../resources/permissiongrantpolicy.md) object.|
|[List excludes](../api/permissiongrantpolicy-list-excludes.md)|[permissionGrantConditionSet](../resources/permissiongrantconditionset.md) collection|Get the permissionGrantConditionSet resources from the excludes navigation property.|
|[Create excludes](../api/permissiongrantpolicy-post-excludes.md)|[permissionGrantConditionSet](../resources/permissiongrantconditionset.md)|Create a new permissionGrantConditionSet object.|
|[Get excludes](../api/permissiongrantpolicy-get-permissiongrantconditionset.md)|[permissionGrantConditionSet](../resources/permissiongrantconditionset.md)|Read the properties and relationships of a [permissionGrantConditionSet](../resources/permissiongrantconditionset.md) object.|
|[Update excludes](../api/permissiongrantpolicy-update-excludes.md)|[permissionGrantConditionSet](../resources/permissiongrantconditionset.md)|Update the properties of an excludes object.|
|[Delete excludes](../api/permissiongrantpolicy-delete-excludes.md)|None|Delete a [permissionGrantConditionSet](../resources/permissiongrantconditionset.md) object.|
|[List includes](../api/permissiongrantpolicy-list-includes.md)|[permissionGrantConditionSet](../resources/permissiongrantconditionset.md) collection|Get the permissionGrantConditionSet resources from the includes navigation property.|
|[Create includes](../api/permissiongrantpolicy-post-includes.md)|[permissionGrantConditionSet](../resources/permissiongrantconditionset.md)|Create a new permissionGrantConditionSet object.|
|[Get includes](../api/permissiongrantpolicy-get-permissiongrantconditionset.md)|[permissionGrantConditionSet](../resources/permissiongrantconditionset.md)|Read the properties and relationships of a [permissionGrantConditionSet](../resources/permissiongrantconditionset.md) object.|
|[Update includes](../api/permissiongrantpolicy-update-includes.md)|[permissionGrantConditionSet](../resources/permissiongrantconditionset.md)|Update the properties of an includes object.|
|[Delete includes](../api/permissiongrantpolicy-delete-includes.md)|None|Delete a [permissionGrantConditionSet](../resources/permissiongrantconditionset.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|deletedDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [directoryObject](../resources/directoryobject.md)|
|description|String|**TODO: Add Description** Inherited from [policyBase](../resources/policybase.md)|
|displayName|String|**TODO: Add Description** Inherited from [policyBase](../resources/policybase.md)|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md)|

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
  "baseType": "microsoft.graph.policyBase",
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

