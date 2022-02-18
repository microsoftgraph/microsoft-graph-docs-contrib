---
title: "unifiedRbacResourceAction resource type"
description: "Represents an operation that an authorized principal is allowed to perform."
author: "abhijeetsinha"
ms.localizationpriority: medium
ms.prod: "directory-management"
doc_type: resourcePageType
---

# unifiedRbacResourceAction resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an operation that an authorized principal is allowed to perform.

Inherits from [entity](entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List unifiedRbacResourceActions](../api/unifiedrbacresourcenamespace-list-unifiedrbacresourceaction.md)|[unifiedRbacResourceAction](../resources/unifiedrbacresourceaction.md) collection|Get a list of the [unifiedRbacResourceAction](../resources/unifiedrbacresourceaction.md) objects and their properties.|
|[Get unifiedRbacResourceAction](../api/unifiedrbacresourceaction-get.md)|[unifiedRbacResourceAction](../resources/unifiedrbacresourceaction.md)|Read the properties and relationships of an [unifiedRbacResourceAction](../resources/unifiedrbacresourceaction.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|actionVerb|String|HTTP method for the action, such as `DELETE`, `GET`, `PATCH`, `POST`, `PUT`, or `null`. Supports `$filter` (`eq`) but not for `null` values. |
|description|String|Description for the action. Supports `$filter` (`eq`). |
|id|String|Unique identifier for an action within the directory resource namespace, such as `microsoft.insights-programs-update-patch`. Cannot include slash character (`/`). Case insensitive. Required. Supports `$filter` (`eq`). |
|name|String|Name for the action within the directory resource namespace, such as `microsoft.insights/programs/update`. Can include slash character (`/`). Case insensitive. Required. Supports `$filter` (`eq`). |
|resourceScopeId|String|Not implemented.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|resourceScope|[unifiedRbacResourceScope](../resources/unifiedrbacresourcescope.md)|Not implemented.|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.unifiedRbacResourceAction",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.unifiedRbacResourceAction",
  "id": "String (identifier)",
  "actionVerb": "String",
  "description": "String",
  "name": "String",
  "resourceScopeId": "String"
}
```
