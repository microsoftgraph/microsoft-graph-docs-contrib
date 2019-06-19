---
title: "Update educationrubric"
description: "Update the properties of educationrubric object."
localization_priority: Normal
author: ""
ms.prod: ""
doc_type: "apiPageType"
---

# Update educationrubric

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of educationrubric object.

Patching a rubric attached to an assignment (PATCH /education/me/assignments/{id}/rubric) is only possible before the assignment is published, and what is patched is actually the original rubric that exists under /education/users/{id}/rubrics. Once the assignment is published, an immutable copy of the rubric is made that is attached to that specific assignment. That rubric can be retrieved using [GET /education/me/assignments/{id}/rubric](educationrubric-get.md), but it cannot be patched.

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
PATCH /education/me/rubrics/{id}
PATCH /education/users/{id}/rubrics/{id}
PATCH /education/me/assignments/{id}/rubric
```

## Request headers

| Name       | Description|
|:-----------|:-----------|
| Authorization | Bearer {code} |

## Request body

In the request body, supply the values for relevant fields that should be updated. Existing properties that are not included in the request body will maintain their previous values or be recalculated based on changes to other property values. For best performance, don't include existing values that haven't changed.

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|columnHeaders|rubricLevel collection||
|description|itemBody||
|displayName|String||
|grading|educationAssignmentGradeType||
|levels|rubricLevel collection||
|qualities|rubricQuality collection||

## Response

If successful, this method returns a `200 OK` response code and an updated [educationRubric](../resources/educationrubric.md) object in the response body.

## Examples

### Request

The following is an example of the request.
<!-- {
  "blockType": "request",
  "name": "update_educationrubric"
}-->

```http
PATCH https://graph.microsoft.com/beta/education/me/rubrics/{id}
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
      "weight": 100,
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
      "weight": 100,
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
  "description": "Update educationrubric",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->