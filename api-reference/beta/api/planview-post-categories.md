---
title: "Create categoryDefinition"
description: "Create a new categoryDefinition object."
author: "EshaSugla"
ms.date: 09/10/2026
ms.localizationpriority: medium
ms.subservice: "planner"
doc_type: apiPageType
---

# Create categoryDefinition

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new categoryDefinition object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "planview-post-categories-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/planview-post-categories-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /planView/categories
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [categoryDefinition](../resources/categorydefinition.md) object.

You can specify the following properties when creating a **categoryDefinition**.

|Property|Type|Description|
|:---|:---|:---|
|displayName|String|Name of the category. Required.|
|extensions|[extensionFieldCollection](../resources/extensionfieldcollection.md)|Custom extension field values set on the entity. Supports $select. Optional.|



## Response

If successful, this method returns a `201 Created` response code and a [categoryDefinition](../resources/categorydefinition.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "create_categorydefinition_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/planView/categories
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.categoryDefinition",
  "displayName": "Marketing",
  "extensions": {
    "@odata.type": "microsoft.graph.extensionFieldCollection"
  }
}
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.categoryDefinition"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.categoryDefinition",
  "id": "6b52004e-a959-a35e-0bc4-3421d8033b1d",
  "displayName": "String",
  "capabilities": {
    "@odata.type": "microsoft.graph.categoryDefinitionCapability"
  },
  "extensions": {
    "@odata.type": "microsoft.graph.extensionFieldCollection"
  }
}
```

