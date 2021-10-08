---
title: "permissionGrantConditionSet resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# permissionGrantConditionSet resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List permissionGrantConditionSets](../api/permissiongrantconditionset-list.md)|[permissionGrantConditionSet](../resources/permissiongrantconditionset.md) collection|Get a list of the [permissionGrantConditionSet](../resources/permissiongrantconditionset.md) objects and their properties.|
|[Create permissionGrantConditionSet](../api/permissiongrantconditionset-create.md)|[permissionGrantConditionSet](../resources/permissiongrantconditionset.md)|Create a new [permissionGrantConditionSet](../resources/permissiongrantconditionset.md) object.|
|[Get permissionGrantConditionSet](../api/permissiongrantconditionset-get.md)|[permissionGrantConditionSet](../resources/permissiongrantconditionset.md)|Read the properties and relationships of a [permissionGrantConditionSet](../resources/permissiongrantconditionset.md) object.|
|[Update permissionGrantConditionSet](../api/permissiongrantconditionset-update.md)|[permissionGrantConditionSet](../resources/permissiongrantconditionset.md)|Update the properties of a [permissionGrantConditionSet](../resources/permissiongrantconditionset.md) object.|
|[Delete permissionGrantConditionSet](../api/permissiongrantconditionset-delete.md)|None|Deletes a [permissionGrantConditionSet](../resources/permissiongrantconditionset.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|certifiedClientApplicationsOnly|Boolean|**TODO: Add Description**|
|clientApplicationIds|String collection|**TODO: Add Description**|
|clientApplicationPublisherIds|String collection|**TODO: Add Description**|
|clientApplicationsFromVerifiedPublisherOnly|Boolean|**TODO: Add Description**|
|clientApplicationTenantIds|String collection|**TODO: Add Description**|
|id|String|**TODO: Add Description**|
|permissionClassification|String|**TODO: Add Description**|
|permissions|String collection|**TODO: Add Description**|
|permissionType|permissionType|**TODO: Add Description**. The possible values are: `application`, `delegated`, `delegatedUserConsentable`.|
|resourceApplication|String|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.permissionGrantConditionSet",
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
  "clientApplicationsFromVerifiedPublisherOnly": "Boolean",
  "certifiedClientApplicationsOnly": "Boolean"
}
```

