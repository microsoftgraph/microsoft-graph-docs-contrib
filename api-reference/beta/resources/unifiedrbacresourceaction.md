---
title: "unifiedRbacResourceAction resource type"
description: "Represents an operation that an authorized principal is allowed to perform."
author: "DougKirschner"
ms.reviewer: msodsrbac
ms.localizationpriority: medium
ms.subservice: "entra-directory-management"
doc_type: resourcePageType
toc.title: Resource action
ms.date: 06/12/2024
---

# unifiedRbacResourceAction resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an operation that an authorized principal is allowed to perform.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/unifiedrbacresourcenamespace-list-resourceactions.md)|[unifiedRbacResourceAction](../resources/unifiedrbacresourceaction.md) collection|Get a list of the [unifiedRbacResourceAction](../resources/unifiedrbacresourceaction.md) objects and their properties.|
|[Get](../api/unifiedrbacresourceaction-get.md)|[unifiedRbacResourceAction](../resources/unifiedrbacresourceaction.md)|Read the properties and relationships of an [unifiedRbacResourceAction](../resources/unifiedrbacresourceaction.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|actionVerb|String|HTTP method for the action, such as `DELETE`, `GET`, `PATCH`, `POST`, `PUT`, or `null`. Supports `$filter` (`eq`) but not for `null` values. |
|description|String|Description for the action. Supports `$filter` (`eq`). |
|id|String|Unique identifier for an action within the resource namespace, such as `microsoft.insights-programs-update-patch`. can't include slash character (`/`). Case insensitive. Required. Supports `$filter` (`eq`). |
|isPrivileged|Boolean|Flag indicating if the action is a sensitive resource action. Applies only for actions in the `microsoft.directory` resource namespace. Read-only. Supports `$filter` (`eq`).|
|name|String|Name for the action within the resource namespace, such as `microsoft.insights/programs/update`. Can include slash character (`/`). Case insensitive. Required. Supports `$filter` (`eq`). |
|resourceScopeId|String|Not implemented.|

## Relationships

None.

<!-- The resourceScope relationship hasn't been implemented but is in the public schema. To unhide this and its related entities and methods once it's implemented.
|Relationship|Type|Description|
|:---|:---|:---|
|resourceScope| [unifiedRbacResourceScope](unifiedrbacresourcescope.md) |Not implemented.|
-->

## JSON representation
The following JSON representation shows the resource type.
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
  "isPrivileged": "Boolean",
  "name": "String",
  "resourceScopeId": "String"
}
```
