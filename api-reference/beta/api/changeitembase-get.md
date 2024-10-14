---
title: "Get changeItemBase"
description: "Read the properties and relationships of a changeItemBase object."
author: "garretraziel"
ms.localizationpriority: medium
ms.subservice: "service-communications"
doc_type: apiPageType
---

# Get changeItemBase

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [changeItemBase](../resources/changeitembase.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "changeitembase-get-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/changeitembase-get-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identity/productChanges/{id}
```

## Optional query parameters

This method supports the `$select` [OData query parameter](/graph/query-parameters) to help customize the response.

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [changeItemBase](../resources/changeitembase.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "get_changeitembase"
}
-->
``` http
GET https://graph.microsoft.com/beta/identity/productChanges/{id}
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
  "value": {
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
}
```
