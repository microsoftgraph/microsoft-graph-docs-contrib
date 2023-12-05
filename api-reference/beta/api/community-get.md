---
title: "Get community"
description: "Read the properties and relationships of a community object."
author: "aditijha4"
ms.localizationpriority: medium
ms.prod: "employee-engagement"
doc_type: apiPageType
---

# Get community

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [community](../resources/community.md) object.

## Permissions

<!-- {
  "blockType": "permissions",
  "name": "community-get-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/community-get-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /employeeExperience/communities/{communityId}
```

## Optional query parameters

This method supports the `$select` and `$expand` [OData query parameters](/graph/query-parameters) to help customize the response.

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [community](../resources/community.md) object in the response body.

## Examples

### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "get_community",
  "sampleKeys": ["eyJfdHlwZSI6Ikdyb3VwIiwiaWQiOiI4MzIxMjc1In0"]
}
-->
``` http
GET https://graph.microsoft.com/beta/employeeExperience/communities/eyJfdHlwZSI6Ikdyb3VwIiwiaWQiOiI4MzIxMjc1In0
```

### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.community"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.community",
    "@odata.id": "https://graph.microsoft.com/beta/employeeExperience/communities('eyJfdHlwZSI6Ikdyb3VwIiwiaWQiOiI4MzIxMjc1In0')",
    "id": "eyJfdHlwZSI6Ikdyb3VwIiwiaWQiOiI4MzIxMjc1In0",
    "displayName": "Financial Advice for Software Engineers",
    "description": "A community where financial advisors who represent customers from software engineering profession can discuss advice and suggestions for there clients.",
    "privacy": "public",
    "groupId": "9ea43988-ce34-4693-be66-1d43e1f2ff2f"
  }
}
```
