---
title: "List customObjectDefinition objects"
description: "Get a list of the customObjectDefinition objects and their properties."
author: "biodero"
ms.date: 09-22-2026
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: apiPageType
---

# List customObjectDefinition objects

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the customObjectDefinition objects and their properties.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "customdatacontainer-list-definitions-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/customdatacontainer-list-definitions-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identityGovernance/customData/definitions
```

## Optional query parameters

This method supports `$select`, `$top`, and `$skiptoken`. The default response includes only **id** and **displayName**. Use `$select` to request one or more of `id`, `displayName`, `objectType`, `description`, `fields`, `createdDateTime`, and `lastModifiedDateTime`. An unsupported or empty `$select` returns `400 Bad Request`. This method doesn't support `$filter`, `$orderby`, `$count`, `$expand`, `$search`, or `$skip`. Pagination preserves the selection and `$top` value.

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [customObjectDefinition](../resources/customobjectdefinition.md) objects in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_customobjectdefinition"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/customData/definitions?$top=50
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.customObjectDefinition"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#identityGovernance/customData/definitions(id,displayName)",
  "value": [
    {
      "@odata.type": "#microsoft.graph.customObjectDefinition",
      "id": "1f9e2d04-bc62-49f8-ae15-4b5de0d1bca1",
      "displayName": "Department"
    }
  ]
}
```
