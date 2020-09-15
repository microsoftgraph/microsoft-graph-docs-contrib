---
title: "permissionGrantConditionSet resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# permissionGrantConditionSet resource type

Namespace: microsoft.graph

**TODO: Add Description**


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List excludes](../api/permissiongrantpolicy-list-excludes.md)|[permissionGrantConditionSet](../resources/permissiongrantconditionset.md) collection|Get the permissionGrantConditionSet resources from the excludes navigation property.|
|[Create excludes](../api/permissiongrantpolicy-post-excludes.md)|[permissionGrantConditionSet](../resources/permissiongrantconditionset.md)|Create a new permissionGrantConditionSet object.|
|[Update excludes](../api/permissiongrantpolicy-update-excludes.md)|[permissionGrantConditionSet](../resources/permissiongrantconditionset.md)|Update the properties of an excludes object.|
|[Get excludes](../api/permissiongrantpolicy-get-permissiongrantconditionset.md)|[permissionGrantConditionSet](../resources/permissiongrantconditionset.md)|Read the properties and relationships of a [permissionGrantConditionSet](../resources/permissiongrantconditionset.md) object.|
|[Delete excludes](../api/permissiongrantpolicy-delete-excludes.md)|None|Delete a [permissionGrantConditionSet](../resources/permissiongrantconditionset.md) object.|
|[List permissionGrantConditionSets](../api/permissiongrantconditionset-list.md)|[permissionGrantConditionSet](../resources/permissiongrantconditionset.md) collection|Get a list of the [permissionGrantConditionSet](../resources/permissiongrantconditionset.md) objects and their properties.|
|[Create permissionGrantConditionSet](../api/permissiongrantconditionset-create.md)|[permissionGrantConditionSet](../resources/permissiongrantconditionset.md)|Create a new [permissionGrantConditionSet](../resources/permissiongrantconditionset.md) object.|
|[Get permissionGrantConditionSet](../api/permissiongrantconditionset-get.md)|[permissionGrantConditionSet](../resources/permissiongrantconditionset.md)|Read the properties and relationships of a [permissionGrantConditionSet](../resources/permissiongrantconditionset.md) object.|
|[Update permissionGrantConditionSet](../api/permissiongrantconditionset-update.md)|[permissionGrantConditionSet](../resources/permissiongrantconditionset.md)|Update the properties of a [permissionGrantConditionSet](../resources/permissiongrantconditionset.md) object.|
|[Delete permissionGrantConditionSet](../api/permissiongrantconditionset-delete.md)|None|Deletes a [permissionGrantConditionSet](../resources/permissiongrantconditionset.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|clientApplicationIds|String collection|**TODO: Add Description**|
|clientApplicationPublisherIds|String collection|**TODO: Add Description**|
|clientApplicationsFromVerifiedPublisherOnly|Boolean|**TODO: Add Description**|
|clientApplicationTenantIds|String collection|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md)|
|permissionClassification|String|**TODO: Add Description**|
|permissions|String collection|**TODO: Add Description**|
|permissionType|permissionType|**TODO: Add Description**. Possible values are: `delegatedUserConsentable`, `delegated`, `application`.|
|resourceApplication|String|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.permissionGrantConditionSet",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.permissionGrantConditionSet",
  "id": "String (identifier)",
  "permissionClassification": "String",
  "permissionType": "String",
  "resourceApplication": "String",
  "permissions": [
    "String"
  ],
  "clientApplicationIds": [
    "String"
  ],
  "clientApplicationTenantIds": [
    "String"
  ],
  "clientApplicationPublisherIds": [
    "String"
  ],
  "clientApplicationsFromVerifiedPublisherOnly": "Boolean"
}
```

