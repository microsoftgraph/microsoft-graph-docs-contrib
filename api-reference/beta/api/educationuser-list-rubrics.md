---
title: "List rubrics"
description: "Retrieve a list of educationrubric objects."
localization_priority: Normal
author: ""
ms.prod: ""
doc_type: "apiPageType"
---

# List rubrics

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve a list of educationrubric objects.

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
GET /education/me/rubrics
GET /education/users/{id}/rubrics
GET /education/schools/{id}/users/{id}/rubrics
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

If successful, this method returns a `200 OK` response code and a collection of [educationRubric](../resources/educationrubric.md) objects in the response body.

## Examples

### Request

The following is an example of the request.
<!-- {
  "blockType": "request",
  "name": "get_rubrics"
}-->

```http
GET https://graph.microsoft.com/beta/education/me/rubrics
```

### Response

The following is an example of the response.

> [!NOTE]
> The response object shown here might be shortened for readability. All the properties will be returned from an actual call.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.educationRubric",
  "isCollection": true
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "value": [
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
  ]
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "List rubrics",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->