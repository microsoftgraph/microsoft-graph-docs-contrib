---
title: "Get educationAssignmentSettings"
description: "Read the properties and relationships of an educationAssignmentSettings object."
author: "dipakboyed"
ms.localizationpriority: medium
ms.subservice: "education"
doc_type: apiPageType
---

# Get educationAssignmentSettings
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of an [educationAssignmentSettings](../resources/educationassignmentsettings.md) object. Only teachers can perform this operation.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "educationassignmentsettings_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/educationassignmentsettings-get-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /education/classes/{id}/assignmentSettings
```

## Optional query parameters
This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and an [educationAssignmentSettings](../resources/educationassignmentsettings.md) object in the response body.

## Examples

## Example 1: Get an assignment settings object
### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_educationassignmentsettings",
  "sampleKeys": ["37d99af7-cfc5-4e3b-8566-f7d40e4a2070"]
}
-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/education/classes/37d99af7-cfc5-4e3b-8566-f7d40e4a2070/assignmentSettings
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-educationassignmentsettings-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/get-educationassignmentsettings-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-educationassignmentsettings-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-educationassignmentsettings-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-educationassignmentsettings-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-educationassignmentsettings-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-educationassignmentsettings-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-educationassignmentsettings-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
**Note:** The response object shown here might be shortened for readability.
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
        }
    ]
}
```

## Example 2: Get the default grading scheme for the assignment
### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_educationassignmentsettings_defaultGradingScheme",
  "sampleKeys": ["37d99af7-cfc5-4e3b-8566-f7d40e4a2070"]
}
-->
``` http
GET https://graph.microsoft.com/beta/education/classes/37d99af7-cfc5-4e3b-8566-f7d40e4a2070/assignmentSettings?$expand=defaultGradingScheme
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-educationassignmentsettings-defaultgradingscheme-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/get-educationassignmentsettings-defaultgradingscheme-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-educationassignmentsettings-defaultgradingscheme-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-educationassignmentsettings-defaultgradingscheme-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-educationassignmentsettings-defaultgradingscheme-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-educationassignmentsettings-defaultgradingscheme-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-educationassignmentsettings-defaultgradingscheme-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-educationassignmentsettings-defaultgradingscheme-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
**Note:** The response object shown here might be shortened for readability.
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
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#education/classes('37d99af7-cfc5-4e3b-8566-f7d40e4a2070')/assignmentSettings(defaultGradingScheme())/$entity",
    "@microsoft.graph.tips": "Use $select to choose only the properties your app needs, as this can lead to performance improvements. For example: GET education/classes('<guid>')/assignmentSettings?$select=submissionAnimationDisabled",
    "submissionAnimationDisabled": true,
    "gradingCategories@odata.context": "https://graph.microsoft.com/beta/$metadata#education/classes('37d99af7-cfc5-4e3b-8566-f7d40e4a2070')/assignmentSettings/gradingCategories",
    "gradingCategories": [],
    "gradingSchemes@odata.context": "https://graph.microsoft.com/beta/$metadata#education/classes('37d99af7-cfc5-4e3b-8566-f7d40e4a2070')/assignmentSettings/gradingSchemes",
    "gradingSchemes": [
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
            "id": "641a8d5e-38cb-4530-9af8-9e5e4dde9aa7",
            "displayName": "New GradingScheme 02",
            "hidePointsDuringGrading": false,
            "grades": [
                {
                    "displayName": "Only grade",
                    "minPercentage": 0,
                    "defaultPercentage": null
                }
            ]
        }
    ],
    "defaultGradingScheme": {
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
    }
}
```

