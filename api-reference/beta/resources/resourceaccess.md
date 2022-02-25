---
title: "resourceAccess resource type"
description: "Specifies an OAuth 2.0 permission scope or an app role that an application requires."
ms.localizationpriority: medium
doc_type: resourcePageType
ms.prod: "applications"
author: "psignoret"
---

# resourceAccess resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Object used to specify an OAuth 2.0 permission scope or an app role that an application requires, through the **resourceAccess** property of the [requiredResourceAccess](requiredresourceaccess.md) resource type.

## Properties

| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|id|Guid|The unique identifier of an [app role](approle.md) or [delegated permission](permissionScope.md) exposed by the resource application. For delegated permissions, this should match the **id** property of one of the [delegated permissions](permissionscope.md) in the **oauth2PermissionScopes** collection of the resource application's [service principal](serviceprincipal.md). For app roles (application permissions), this should match the **id** property of an [app role](approle.md) in the **appRoles** collection of the resource application's [service principal](serviceprincipal.md).|
|type|String|Specifies whether the **id** property references a [delegated permission](permissionscope.md) or an [app role](approle.md) (application permission). The possible values are: `Scope` (for delegated permissions) or `Role` (for app roles).|

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
  "id": "Guid",
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


