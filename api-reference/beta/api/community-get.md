---
title: "Get community"
description: "Read the properties and relationships of a community object."
author: "aditijha4"
ms.localizationpriority: medium
ms.prod: "employee-experience"
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

This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [community](../resources/community.md) object in the response body.

## Examples

### Request

The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "get_community"
}
-->
``` http
GET https://graph.microsoft.com/beta/employeeExperience/communities/eyJfdHlwZSI6Ikdyb3VwIiwiaWQiOiI4MzIxMjc1In0
```


### Response

The following is an example of the response
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
    "@odata.id":"https://graph.microsoft.com/beta/employeeExperience/communities('eyJfdHlwZSI6Ikdyb3VwIiwiaWQiOiI4MzIxMjc1In0')",
    "id": "eyJfdHlwZSI6Ikdyb3VwIiwiaWQiOiI4MzIxMjc1In0",
    "displayName": "Financial Advice for Software Engineers",
    "description": "A community where financial advisors who represent customers from software engineering profession can discuss advice and suggestions for there clients.",
    "privacy": "public",
    "groupId": "9ea43988-ce34-4693-be66-1d43e1f2ff2f",
    "group": {
      "@odata.id": "https://graph.microsoft.com/v1.0/groups('9ea43988-ce34-4693-be66-1d43e1f2ff2f')"
    }
  }
}
```

