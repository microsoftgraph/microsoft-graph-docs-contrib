---
title: "appRoleAssignment resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# appRoleAssignment resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List appRoleAssignments](../api/approleassignment-list.md)|[appRoleAssignment](../resources/approleassignment.md) collection|Get a list of the [appRoleAssignment](../resources/approleassignment.md) objects and their properties.|
|[Create appRoleAssignment](../api/approleassignment-post-approleassignments.md)|[appRoleAssignment](../resources/approleassignment.md)|Create a new [appRoleAssignment](../resources/approleassignment.md) object.|
|[Get appRoleAssignment](../api/approleassignment-get.md)|[appRoleAssignment](../resources/approleassignment.md)|Read the properties and relationships of an [appRoleAssignment](../resources/approleassignment.md) object.|
|[Update appRoleAssignment](../api/approleassignment-update.md)|[appRoleAssignment](../resources/approleassignment.md)|Update the properties of an [appRoleAssignment](../resources/approleassignment.md) object.|
|[Delete appRoleAssignment](../api/approleassignment-delete.md)|None|Deletes an [appRoleAssignment](../resources/approleassignment.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|appRoleId|Guid|**TODO: Add Description**|
|createdDateTime|DateTimeOffset|**TODO: Add Description**|
|creationTimestamp|DateTimeOffset|**TODO: Add Description**|
|id|String|**TODO: Add Description**|
|lastModifiedDateTime|DateTimeOffset|**TODO: Add Description**|
|principalDisplayName|String|**TODO: Add Description**|
|principalId|Guid|**TODO: Add Description**|
|principalType|String|**TODO: Add Description**|
|resourceDisplayName|String|**TODO: Add Description**|
|resourceId|Guid|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.appRoleAssignment",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.appRoleAssignment",
  "appRoleId": "Guid",
  "creationTimestamp": "String (timestamp)",
  "id": "String (identifier)",
  "principalDisplayName": "String",
  "principalId": "Guid",
  "principalType": "String",
  "resourceDisplayName": "String",
  "resourceId": "Guid",
  "createdDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)"
}
```

