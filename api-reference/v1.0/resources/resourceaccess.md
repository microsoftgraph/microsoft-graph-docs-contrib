---
title: "resourceAccess resource type"
description: "Specifies an OAuth 2.0 permission scope or an app role that an application requires."
ms.localizationpriority: medium
doc_type: resourcePageType
ms.prod: "identity-and-sign-in"
author: "psignoret"
---

# resourceAccess resource type

Namespace: microsoft.graph

Object used to specify an OAuth 2.0 permission scope or an app role that an application requires, through the **resourceAccess** property of the [requiredResourceAccess](requiredresourceaccess.md) resource type.

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|id|GUID|The unique identifier for one of the [oauth2PermissionScope](permissionscope.md) or [appRole](approle.md) instances that the resource application exposes.|
|type|String|Specifies whether the **id** property references an [oauth2PermissionScope](permissionscope.md) or an [appRole](approle.md). The possible values are: `Scope` (for OAuth 2.0 permission scopes) or `Role` (for app roles).|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.resourceAccess"
}-->

```json
{
  "id": "GUID",
  "type": "String"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "resourceAccess resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->

