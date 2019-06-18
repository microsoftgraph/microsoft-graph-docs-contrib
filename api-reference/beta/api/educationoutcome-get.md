---
title: "Get educationOutcome"
description: "Retrieve the properties and relationships of educationoutcome object."
localization_priority: Normal
author: ""
ms.prod: ""
doc_type: "apiPageType"
---

# Get educationOutcome

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve the properties and relationships of educationoutcome object.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
| Delegated (work or school account)     | EduAssignments.ReadBasic, EduAssignments.ReadWriteBasic, EduAssignments.Read, EduAssignments.ReadWrite |
| Delegated (personal Microsoft account) | Not supported. |
| Application                            | Not supported. |

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
GET /education/me/assignments/{id}/submissions/{id}/outcomes/{id}
GET /education/users/{id}/assignments/{id}/submissions/{id}/outcomes/{id}
GET /education/classes/{id}/assignments/{id}/submissions/{id}/outcomes/{id}
```

## Request headers

| Name      |Description|
|:----------|:----------|
| Authorization | Bearer {code} |

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and the requested [educationOutcome](../resources/educationoutcome.md) object in the response body.

## Examples

### Request

The following is an example of the request.
<!-- {
  "blockType": "request",
  "name": "get_educationoutcome"
}-->

```http
GET https://graph.microsoft.com/beta/education/me/assignments/{id}/submissions/{id}/outcomes/{id}
```

### Response

The following is an example of the response.

> [!NOTE]
> The response object shown here might be shortened for readability. All the properties will be returned from an actual call.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.educationOutcome"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "lastModifiedBy": {
    "application": {
      "id": "id-value",
      "displayName": "displayName-value"
    },
    "device": {
      "id": "id-value",
      "displayName": "displayName-value"
    },
    "user": {
      "id": "id-value",
      "displayName": "displayName-value"
    }
  },
  "lastModifiedDateTime": "datetime-value",
  "id": "id-value"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Get educationOutcome",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->