---
title: "Update educationRubric"
description: "Update the properties of educationRubric object."
ms.localizationpriority: medium
author: "cristobal-buenrostro"
ms.subservice: "education"
doc_type: "apiPageType"
ms.date: 07/30/2024
---

# Update educationRubric

Namespace: microsoft.graph

Update the properties of an [educationRubric](../resources/educationrubric.md) object. Only teachers can perform this operation.

Updating a rubric attached to an assignment (`PATCH /education/classes/{class-id}/assignments/{assignment-id}/rubric`) is only possible before the assignment is published, and what is updated is actually the original rubric that exists under `/education/users/{id}/rubrics`. After the assignment is published, an immutable copy of the rubric is made that is attached to that specific assignment. That rubric can be retrieved using [GET /education/classes/{class-id}/assignments/{assignment-id}/rubric](educationrubric-get.md), but it can't be updated.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "educationrubric_update" } -->
[!INCLUDE [permissions-table](../includes/permissions/educationrubric-update-permissions.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
PATCH /education/me/rubrics/{id}
PATCH /education/classes/{id}/assignments/{id}/rubric
```

## Request headers

| Name       | Description|
|:-----------|:-----------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

In the request body, supply the values for relevant fields that should be updated. Existing properties that aren't included in the request body maintain their previous values or are recalculated based on changes to other property values. For best performance, don't include existing values that haven't changed.

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|description|itemBody|The description of this rubric.|
|displayName|String|The name of this rubric.|
|grading|[educationAssignmentGradeType](../resources/educationassignmentgradetype.md)|The grading type of the rubric. `null` for a no-points rubric and [educationAssignmentPointsGradeType](../resources/educationassignmentpointsgradetype.md) for a rubric with points.|
|levels|rubricLevel collection|The collection of levels making up this rubric.|
|qualities|rubricQuality collection|The collection of qualities making up this rubric.|

## Response

If successful, this method returns a `200 OK` response code and an updated [educationRubric](../resources/educationrubric.md) object in the response body.

## Examples

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_educationrubric"
}-->

```http
PATCH https://graph.microsoft.com/v1.0/education/me/rubrics/5f650796-a600-4d20-87ef-c46ae34da3bb
Content-type: application/json

{
  "displayName": "Example Credit Rubric after display name patch"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/update-educationrubric-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/update-educationrubric-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/update-educationrubric-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-educationrubric-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/update-educationrubric-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/update-educationrubric-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/update-educationrubric-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.educationRubric"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#education/me/rubrics/$entity",
    "displayName": "Example Credit Rubric after display name patch",
    "createdDateTime": "2024-07-17T00:21:14.4479093Z",
    "lastModifiedDateTime": "2024-07-17T15:00:08.5062776Z",
    "id": "5f650796-a600-4d20-87ef-c46ae34da3bb",
    "description": {
        "content": "New Rubric",
        "contentType": "text"
    },
    "qualities": [
        {
            "qualityId": "bdde7fc5-9a0b-4db7-9103-aeb6d4d20fbd",
            "displayName": null,
            "weight": 33.33,
            "description": {
                "content": "First quality",
                "contentType": "text"
            },
            "criteria": [
                {
                    "description": {
                        "content": "First quality is excellent",
                        "contentType": "text"
                    }
                },
                {
                    "description": {
                        "content": "First quality is good",
                        "contentType": "text"
                    }
                },
                {
                    "description": {
                        "content": "First quality is fair",
                        "contentType": "text"
                    }
                },
                {
                    "description": {
                        "content": "First quality is poor",
                        "contentType": "text"
                    }
                }
            ]
        }
    ],
    "levels": [
        {
            "levelId": "f0b16138-3ab2-4712-bbe0-b0a2653017a1",
            "displayName": "Excellent",
            "description": {
                "content": "",
                "contentType": "text"
            },
            "grading": {
                "@odata.type": "#microsoft.graph.educationAssignmentPointsGradeType",
                "maxPoints": 4
            }
        },
        {
            "levelId": "f5b1cc98-a22e-44d6-8e20-a29fb7de4860",
            "displayName": "Good",
            "description": {
                "content": "",
                "contentType": "text"
            },
            "grading": {
                "@odata.type": "#microsoft.graph.educationAssignmentPointsGradeType",
                "maxPoints": 3
            }
        },
        {
            "levelId": "352dfa9f-0ad3-42c5-a7b7-843dc78d83f9",
            "displayName": "Fair",
            "description": {
                "content": "",
                "contentType": "text"
            },
            "grading": {
                "@odata.type": "#microsoft.graph.educationAssignmentPointsGradeType",
                "maxPoints": 2
            }
        },
        {
            "levelId": "b1d9ac8f-fb57-4172-9863-4a4994bc31fa",
            "displayName": "Poor",
            "description": {
                "content": "",
                "contentType": "text"
            },
            "grading": {
                "@odata.type": "#microsoft.graph.educationAssignmentPointsGradeType",
                "maxPoints": 1
            }
        }
    ],
    "grading": {
        "@odata.type": "#microsoft.graph.educationAssignmentPointsGradeType",
        "maxPoints": 100
    },
    "createdBy": {
        "application": null,
        "device": null,
        "user": {
            "id": "fffafb29-e8bc-4de3-8106-be76ed2ad499",
            "displayName": null
        }
    },
    "lastModifiedBy": {
        "application": null,
        "device": null,
        "user": {
            "id": "fffafb29-e8bc-4de3-8106-be76ed2ad499",
            "displayName": null
        }
    }
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


