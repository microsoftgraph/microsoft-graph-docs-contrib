---
title: "delegatedPermissionClassification resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# delegatedPermissionClassification resource type

Namespace: microsoft.graph

**TODO: Add Description**


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List delegatedPermissionClassifications](../api/delegatedpermissionclassification-list.md)|[delegatedPermissionClassification](../resources/delegatedpermissionclassification.md) collection|Get a list of the [delegatedPermissionClassification](../resources/delegatedpermissionclassification.md) objects and their properties.|
|[Create delegatedPermissionClassification](../api/delegatedpermissionclassification-create.md)|[delegatedPermissionClassification](../resources/delegatedpermissionclassification.md)|Create a new [delegatedPermissionClassification](../resources/delegatedpermissionclassification.md) object.|
|[Get delegatedPermissionClassification](../api/delegatedpermissionclassification-get.md)|[delegatedPermissionClassification](../resources/delegatedpermissionclassification.md)|Read the properties and relationships of a [delegatedPermissionClassification](../resources/delegatedpermissionclassification.md) object.|
|[Update delegatedPermissionClassification](../api/delegatedpermissionclassification-update.md)|[delegatedPermissionClassification](../resources/delegatedpermissionclassification.md)|Update the properties of a [delegatedPermissionClassification](../resources/delegatedpermissionclassification.md) object.|
|[Delete delegatedPermissionClassification](../api/delegatedpermissionclassification-delete.md)|None|Deletes a [delegatedPermissionClassification](../resources/delegatedpermissionclassification.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|classification|permissionClassificationType|**TODO: Add Description**. Possible values are: `low`, `medium`, `high`, `unknownFutureValue`.|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md)|
|permissionId|String|**TODO: Add Description**|
|permissionName|String|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.delegatedPermissionClassification",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.delegatedPermissionClassification",
  "id": "String (identifier)",
  "permissionId": "String",
  "permissionName": "String",
  "classification": "String"
}
```

