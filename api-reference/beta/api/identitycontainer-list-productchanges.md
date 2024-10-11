---
title: "List changeItemBase objects"
description: "Get a list of the changeItemBase objects and their properties."
author: "garretraziel"
ms.localizationpriority: medium
ms.subservice: "service-communications"
doc_type: apiPageType
---

# List changeItemBase objects

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [changeItemBase](../resources/changeitembase.md) objects and their properties.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "identitycontainer-list-productchanges-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/identitycontainer-list-productchanges-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identity/productChanges
```

## Optional query parameters

This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [changeItemBase](../resources/changeitembase.md) objects in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_changeitembase"
}
-->
``` http
GET https://graph.microsoft.com/beta/identity/productChanges
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.changeItemBase"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.changeItemBase",
      "id": "ada02185-1f43-3fc0-f795-c747017c0f44",
      "changeItemState": "String",
      "changeItemService": "String",
      "tags": [
        "String"
      ],
      "systemTags": [
        "String"
      ],
      "documentationUrls": [
        "String"
      ],
      "shortDescription": "String",
      "title": "String",
      "description": "String"
    }
  ]
}
```

