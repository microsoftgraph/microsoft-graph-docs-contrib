---
title: "Update educationRubric"
description: "Update the properties of educationRubric object."
ms.localizationpriority: medium
author: "cristobal-buenrostro"
ms.prod: "education"
doc_type: "apiPageType"
---

# Update educationRubric

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of an [educationRubric](../resources/educationrubric.md) object. Only teachers can perform this operation.

Updating a rubric attached to an assignment (`PATCH /education/classes/{id}/assignments/{id}/rubric`) is only possible before the assignment is published, and what is updated is actually the original rubric that exists under `/education/users/{id}/rubrics`. After the assignment is published, an immutable copy of the rubric is made that is attached to that specific assignment. That rubric can be retrieved using [GET /education/classes/{id}/assignments/{id}/rubric](educationrubric-get.md), but it cannot be updated.

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

In the request body, supply the values for relevant fields that should be updated. Existing properties that are not included in the request body will maintain their previous values or be recalculated based on changes to other property values. For best performance, don't include existing values that haven't changed.

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
PATCH https://graph.microsoft.com/beta/education/me/rubrics/53bc2906-ec10-4a18-8a48-d82e549d5360
Content-type: application/json

{
  "displayName": "Example Credit Rubric after display name patch"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/update-educationrubric-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/update-educationrubric-cli-snippets.md)]
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
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#education/me/rubrics/$entity",
    "displayName": "Example Credit Rubric after display name patch",
    "createdDateTime": "2024-02-15T16:44:09.167776Z",
    "lastModifiedDateTime": "2024-02-15T16:44:44.6414076Z",
    "id": "53bc2906-ec10-4a18-8a48-d82e549d5360",
    "grading": null,
    "description": {
        "content": "This is an example of a credit rubric (no points)",
        "contentType": "text"
    },
    "qualities": [
        {
            "qualityId": "d18657f0-5e4c-4ca3-a5e8-38ccd05fa69d",
            "displayName": null,
            "weight": null,
            "description": {
                "content": "Argument",
                "contentType": "text"
            },
            "criteria": [
                {
                    "description": {
                        "content": "The essay's argument is persuasive.",
                        "contentType": "text"
                    }
                },
                {
                    "description": {
                        "content": "The essay's argument does not make sense.",
                        "contentType": "text"
                    }
                }
            ]
        },
        {
            "qualityId": "ce3fa04f-50d2-4b78-996e-88f93d50712b",
            "displayName": null,
            "weight": null,
            "description": {
                "content": "Spelling and Grammar",
                "contentType": "text"
            },
            "criteria": [
                {
                    "description": {
                        "content": "The essay uses proper spelling and grammar with few or no errors.",
                        "contentType": "text"
                    }
                },
                {
                    "description": {
                        "content": "The essay has numerous errors in spelling and/or grammar.",
                        "contentType": "text"
                    }
                }
            ]
        }
    ],
    "levels": [
        {
            "levelId": "7d0fa2c4-8718-4333-ad52-cee410cc8856",
            "displayName": "Good",
            "grading": null,
            "description": {
                "content": "",
                "contentType": "text"
            }
        },
        {
            "levelId": "ebd28c78-ff5b-4bad-9c4f-48100ad3fbab",
            "displayName": "Poor",
            "grading": null,
            "description": {
                "content": "",
                "contentType": "text"
            }
        }
    ],
    "createdBy": {
        "application": null,
        "device": null,
        "user": {
            "id": "fadaae59-b18c-44d1-993f-fe8a281bd69c",
            "displayName": null
        }
    },
    "lastModifiedBy": {
        "application": null,
        "device": null,
        "user": {
            "id": "fadaae59-b18c-44d1-993f-fe8a281bd69c",
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


