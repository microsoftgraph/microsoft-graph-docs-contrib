---
title: "Create educationRubric"
description: "Use this API to create a new educationRubric."
localization_priority: Normal
author: ""
ms.prod: ""
doc_type: "apiPageType"
---

# Create educationRubric

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Use this API to create a new educationRubric.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
| Delegated (work or school account)     | EduAssignments.ReadWriteBasic, EduAssignments.ReadWrite |
| Delegated (personal Microsoft account) | Not supported. |
| Application                            | Not supported. |

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
POST /education/me/rubrics
POST /education/users/{id}/rubrics
POST /education/schools/{id}/users/{id}/rubrics
```

## Request headers

| Name          | Description   |
|:--------------|:--------------|
| Authorization | Bearer {code} |

## Request body

In the request body, supply a JSON representation of [educationRubric](../resources/educationrubric.md) object.

## Response

If successful, this method returns `201, Created` response code and a new [educationRubric](../resources/educationrubric.md) object in the response body.

## Examples

### Request

The following is an example of the request.
<!-- {
  "blockType": "request",
  "name": "create_educationrubric_from_educationuser"
}-->

```http
POST https://graph.microsoft.com/beta/education/me/rubrics
Content-type: application/json

{
  "displayName": "displayName-value",
  "description": {
    "contentType": "contentType-value",
    "content": "content-value"
  },
  "qualities": [
    {
      "displayName": "displayName-value",
      "description": {
        "contentType": "contentType-value",
        "content": "content-value"
      },
      "weight": "weight-value",
      "criteria": [
        {
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
HTTP/1.1 201 Created
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
      "weight": "weight-value",
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
  "description": "Create educationRubric",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->