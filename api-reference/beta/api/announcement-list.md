---
title: "List announcement objects"
description: "Get a list of the announcement objects and their properties."
author: "garretraziel"
ms.localizationpriority: medium
ms.subservice: "service-communications"
doc_type: apiPageType
---

# List announcement objects

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [announcement](../resources/announcement.md) objects and their properties.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "announcement-list-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/announcement-list-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identity/productChanges/microsoft.changeManagement.announcement
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

If successful, this method returns a `200 OK` response code and a collection of [announcement](../resources/announcement.md) objects in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_announcement"
}
-->
``` http
GET https://graph.microsoft.com/beta** Collection URI for microsoft.graph.announcement not found
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.announcement"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.announcement",
      "id": "febb1b44-aab1-0b96-4bf7-2355ac19d5d4",
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
      "description": "String",
      "announcementDateTime": "String (timestamp)",
      "targetDateTime": "String (timestamp)",
      "impactLink": "String",
      "isCustomerActionRequired": "Boolean"
    }
  ]
}
```

