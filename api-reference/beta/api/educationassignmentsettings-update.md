---
title: "Update educationAssignmentSettings"
description: "Update the properties of an educationAssignmentSettings object."
author: "dipakboyed"
ms.localizationpriority: medium
ms.subservice: "education"
doc_type: apiPageType
---

# Update educationAssignmentSettings
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of an [educationAssignmentSettings](../resources/educationassignmentsettings.md) object. Only teachers can update these settings.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "educationassignmentsettings_update" } -->
[!INCLUDE [permissions-table](../includes/permissions/educationassignmentsettings-update-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /education/classes/{id}/assignmentSettings
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [educationAssignmentSettings](../resources/educationassignmentsettings.md) object.

The following table shows the properties that are required when you update the [educationAssignmentSettings](../resources/educationassignmentsettings.md).

|Property|Type|Description|
|:---|:---|:---|
|submissionAnimationDisabled|Boolean|Indicates whether to show the turn-in celebration animation. A value of `true` indicates to skip the animation. Default value is `false`.|


## Response

If successful, this method returns a `200 OK` response code and an updated [educationAssignmentSettings](../resources/educationassignmentsettings.md) object in the response body.

## Examples

### Example 1: Update submissionAnimationDisabled

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_educationassignmentsettings"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/education/classes/{id}/assignmentSettings
Content-Type: application/json

{
  "submissionAnimationDisabled": true
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/update-educationassignmentsettings-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/update-educationassignmentsettings-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/update-educationassignmentsettings-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/update-educationassignmentsettings-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-educationassignmentsettings-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/update-educationassignmentsettings-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/update-educationassignmentsettings-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/update-educationassignmentsettings-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.educationAssignmentSettings"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "submissionAnimationDisabled": true
}
```

### Example 2: Create grading categories
#### Request
The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "sampleKeys": ["37d99af7-cfc5-4e3b-8566-f7d40e4a2070"],
  "name": "update_gradingCategories"
}-->
```http
PATCH https://graph.microsoft.com/beta/education/classes/37d99af7-cfc5-4e3b-8566-f7d40e4a2070/assignmentSettings
Content-type: application/json

{
  "gradingCategories": [
        {
            "displayName": "Lab",
            "percentageWeight": 10
        },
        {
            "displayName": "Homework",
            "percentageWeight": 80
        },
        {
            "displayName": "Test",
            "percentageWeight": 10
        }
    ]
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/update-gradingcategories-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/update-gradingcategories-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/update-gradingcategories-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/update-gradingcategories-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-gradingcategories-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/update-gradingcategories-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/update-gradingcategories-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/update-gradingcategories-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.educationGradingCategory",
  "isCollection": false
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/education/classes('37d99af7-cfc5-4e3b-8566-f7d40e4a2070')/assignmentSettings/$entity",
  "submissionAnimationDisabled": false,
  "gradingCategories@odata.context": "https://graph.microsoft.com/beta/$metadata#education/classes('37d99af7-cfc5-4e3b-8566-f7d40e4a2070')/assignmentSettings/gradingCategories",
  "gradingCategories": [
      {
          "id": "8bfb6d7f-8634-4f3b-9b6a-b6b6ff663f01",
          "displayName": "Lab",
          "percentageWeight": 10
      },
      {
          "id": "6fd19981-588f-495c-91a8-712a645c95b7",
          "displayName": "Homework",
          "percentageWeight": 80
      },
      {
          "id": "54f637a5-2cef-4e48-a88e-028854ca8089",
          "displayName": "Test",
          "percentageWeight": 10
      }
  ]
}
```

### Example 3: Delta payload to delete, modify, and add grading categories

#### Request
The following example shows a request.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "sampleKeys": ["37d99af7-cfc5-4e3b-8566-f7d40e4a2070"],
  "name": "update_gradingCategories_delta"
}-->
```http
PATCH https://graph.microsoft.com/beta/education/classes/37d99af7-cfc5-4e3b-8566-f7d40e4a2070/assignmentSettings
Content-type: application/json

{
    "gradingCategories@delta": [
        {
            // Change this grading category's name
            "id": "fb859cd3-943b-4cd6-9bbe-fe1c39eace0e",
            "displayName": "Lab Test"
        },
        {
            // Delete this grading category
            "@odata.context": "https://graph.microsoft.com/beta/$metadata#gradingCategories/$deletedEntity",
            "id": "e2a86277-24f9-4f29-8196-8c83fc69d00d",
            "reason": "deleted"
        },
        {
            // Add a new grading category
            "displayName": "Lab Practice",
            "percentageWeight": 30
        },
        {
            "displayName": "Lab Theory",
            "percentageWeight": 10
        }
    ]
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/update-gradingcategories-delta-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/update-gradingcategories-delta-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/update-gradingcategories-delta-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-gradingcategories-delta-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/update-gradingcategories-delta-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/update-gradingcategories-delta-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/update-gradingcategories-delta-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.educationGradingCategory"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#education/classes('37d99af7-cfc5-4e3b-8566-f7d40e4a2070')/assignmentSettings/$entity",
    "submissionAnimationDisabled": false,
    "gradingCategories@odata.context": "https://graph.microsoft.com/beta/$metadata#education/classes('37d99af7-cfc5-4e3b-8566-f7d40e4a2070')/assignmentSettings/gradingCategories",
    "gradingCategories": [
        {
            "id": "fb4a4009-3cc4-4dea-9991-e0a0763659e3",
            "displayName": "Homework",
            "percentageWeight": 30
        },
        {
            "id": "fb859cd3-943b-4cd6-9bbe-fe1c39eace0e",
            "displayName": "Lab Test",
            "percentageWeight": 30
        },
        {
            "id": "d47d7a3f-44a1-47e1-8aec-68b028f64b2e",
            "displayName": "Lab Practice",
            "percentageWeight": 30
        },
        {
            "id": "021db844-0f03-4483-929d-1c1dbfd4fcb4",
            "displayName": "Lab Theory",
            "percentageWeight": 10
        }
    ]
}
```

### Example 4: Create grading schemas

#### Request
The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "sampleKeys": ["37d99af7-cfc5-4e3b-8566-f7d40e4a2070"],
  "name": "creating_some_new_gradingSchemes"
}-->
```http
PATCH https://graph.microsoft.com/beta/education/classes/37d99af7-cfc5-4e3b-8566-f7d40e4a2070/assignmentSettings
Content-type: application/json

{
    "gradingSchemes": [
        {
            "displayName": "Pass/fail",
            "grades": [
                {
                    "displayName": "Pass",
                    "minPercentage": 60,
                    "defaultPercentage": 100
                },
                {
                    "displayName": "Fail",
                    "minPercentage": 0,
                    "defaultPercentage": 0
                }
            ]
        },
        {
            "displayName": "Letters",
            "grades": [
                {
                    "displayName": "A",
                    "minPercentage": 90
                },
                {
                    "displayName": "B",
                    "minPercentage": 80
                },
                {
                    "displayName": "C",
                    "minPercentage": 70
                },
                {
                    "displayName": "D",
                    "minPercentage": 60
                },
                {
                    "displayName": "F",
                    "minPercentage": 0
                }
            ]
        }
    ]
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/creating-some-new-gradingschemes-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/creating-some-new-gradingschemes-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/creating-some-new-gradingschemes-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/creating-some-new-gradingschemes-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/creating-some-new-gradingschemes-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/creating-some-new-gradingschemes-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/creating-some-new-gradingschemes-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.educationGradingScheme"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#education/classes('37d99af7-cfc5-4e3b-8566-f7d40e4a2070')/assignmentSettings/$entity",
    "@microsoft.graph.tips": "Use $select to choose only the properties your app needs, as this can lead to performance improvements. For example: GET education/classes('<guid>')/assignmentSettings?$select=submissionAnimationDisabled",
    "submissionAnimationDisabled": true,
    "gradingCategories@odata.context": "https://graph.microsoft.com/beta/$metadata#education/classes('37d99af7-cfc5-4e3b-8566-f7d40e4a2070')/assignmentSettings/gradingCategories",
    "gradingCategories": [
        {
            "id": "21ca44c0-c44b-4fda-8f6a-dd56e86650e9",
            "displayName": "Lab",
            "percentageWeight": 10
        },
        {
            "id": "f216fee5-870b-42de-b847-c38e810dffb7",
            "displayName": "Homework",
            "percentageWeight": 80
        },
        {
            "id": "db8f13e7-b71a-4c91-9934-b915f4ac49b7",
            "displayName": "Test",
            "percentageWeight": 10
        }
    ],
    "gradingSchemes@odata.context": "https://graph.microsoft.com/beta/$metadata#education/classes('37d99af7-cfc5-4e3b-8566-f7d40e4a2070')/assignmentSettings/gradingSchemes",
    "gradingSchemes": [
        {
            "id": "69911dea-bc5c-406a-8743-81d06225a3a1",
            "displayName": "Points",
            "hidePointsDuringGrading": false,
            "grades": []
        },
        {
            "id": "696290ba-1925-490e-a5d2-026bad0dbdc1",
            "displayName": "New name for Pass/Fail Scheme",
            "hidePointsDuringGrading": false,
            "grades": [
                {
                    "displayName": "Pass",
                    "minPercentage": 60,
                    "defaultPercentage": 100
                },
                {
                    "displayName": "Fail",
                    "minPercentage": 0,
                    "defaultPercentage": 0
                }
            ]
        },
        {
            "id": "291f9918-b52c-4cf0-b94f-55982a82995f",
            "displayName": "Letters",
            "hidePointsDuringGrading": false,
            "grades": [
                {
                    "displayName": "A",
                    "minPercentage": 90,
                    "defaultPercentage": null
                },
                {
                    "displayName": "B",
                    "minPercentage": 80,
                    "defaultPercentage": null
                },
                {
                    "displayName": "C",
                    "minPercentage": 70,
                    "defaultPercentage": null
                },
                {
                    "displayName": "D",
                    "minPercentage": 60,
                    "defaultPercentage": null
                },
                {
                    "displayName": "F",
                    "minPercentage": 0,
                    "defaultPercentage": null
                }
            ]
        }
    ]
}
```


<!-- uuid: 37d99af7-cfc5-4e3b-8566-f7d40e4a2070
2023-04-18 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "Update educationAssignmentSettings",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
