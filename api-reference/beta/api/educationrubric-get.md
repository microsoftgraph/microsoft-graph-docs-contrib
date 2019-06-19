---
title: "Get educationRubric"
description: "Retrieve the properties and relationships of educationrubric object."
localization_priority: Normal
author: ""
ms.prod: ""
doc_type: "apiPageType"
---

# Get educationRubric

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve the properties and relationships of educationrubric object.

Note that when getting the rubric of an assignment (GET /education/me/assignments/{id}/rubric), what is returned is an immutable copy of the original rubric that exists under /education/users/{id}/rubrics; the copy is associated with that specific assignment.

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
GET /education/me/rubrics/{id}
GET /education/users/{id}/rubrics/{id}
GET /education/me/assignments/{id}/rubric
```

## Optional query parameters

This method supports some of the OData query parameters to help customize the response. For general information, see [OData Query Parameters](/graph/query-parameters)

## Request headers

| Name      |Description|
|:----------|:----------|
| Authorization | Bearer {code} |

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and the requested [educationRubric](../resources/educationrubric.md) object in the response body.

## Examples

### Request

The following is an example of the request.
<!-- {
  "blockType": "request",
  "name": "get_educationrubric"
}-->

```http
GET https://graph.microsoft.com/beta/education/me/rubrics/{id}
```

### Response

The following is an example of the response.

> [!NOTE]
> The response object shown here might be shortened for readability. All the properties will be returned from an actual call.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.educationRubric"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "displayName": "displayName-value",
  "description": {
    "contentType": "contentType-value",
    "content": "content-value"
  },
  "qualities": [
    {
      "qualityId": "qualityId-value",
      "displayName": "displayName-value",
      "description": {
        "contentType": "contentType-value",
        "content": "content-value"
      },
      "weight": "Single",
      "criteria": [
        {
          "id": "id-value",
          "description": {
            "contentType": "contentType-value",
            "content": "content-value"
          }
        }
      ]
    }
  ],
  "levels": [
    {
      "levelId": "levelId-value",
      "displayName": "displayName-value",
      "description": {
        "contentType": "contentType-value",
        "content": "content-value"
      },
      "grading": {
      }
    }
  ],
  "columnHeaders": [
    {
      "levelId": "levelId-value",
      "displayName": "displayName-value",
      "description": {
        "contentType": "contentType-value",
        "content": "content-value"
      },
      "grading": {
      }
    }
  ]
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Get educationRubric",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->