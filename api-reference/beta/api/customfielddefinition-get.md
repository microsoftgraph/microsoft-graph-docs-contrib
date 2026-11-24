---
title: "Get custom field definition"
description: "Read the properties and relationships of customFieldDefinition object."
author: "EshaSugla"
ms.date: 09/10/2026
ms.localizationpriority: medium
ms.subservice: "planner"
doc_type: apiPageType
---

# Get custom field definition

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of [customFieldDefinition](../resources/customfielddefinition.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "customfielddefinition_get_permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/customfielddefinition-get-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /me/planner/plans_v2/{planId}/customFieldDefinitions/{customFieldDefinitionId}
GET /users/{usersId}/planner/plans_v2/{planId}/customFieldDefinitions/{customFieldDefinitionId}
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [customFieldDefinition](../resources/customfielddefinition.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "get_customfielddefinition"
}
-->
``` http
GET https://graph.microsoft.com/beta/me/planner/plans_v2/{planId}/customFieldDefinitions/{customFieldDefinitionId}
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.customFieldDefinition"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.customFieldDefinition",
  "id": "590f4e29-112d-432c-491b-21a16ed31803",
  "displayName": "Product launch"
}
```

