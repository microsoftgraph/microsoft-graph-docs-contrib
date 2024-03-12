---
title: "Update educationGradingScheme"
description: "Update the properties of an educationGradingScheme object."
author: "v-rmanda"
ms.localizationpriority: medium
ms.subservice: "education"
doc_type: apiPageType
---

# Update educationGradingScheme

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of an [educationGradingScheme](../resources/educationgradingscheme.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "educationgradingscheme_update" } -->
[!INCLUDE [permissions-table](../includes/permissions/educationgradingscheme-update-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /education/classes/{educationClassId}/assignmentSettings/gradingSchemes/{educationGradingSchemeId}
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]


|Property|Type|Description|
|:---|:---|:---|
|displayName|String|The name of the grading scheme.|
|grades|[educationGradingSchemeGrade](../resources/educationgradingschemegrade.md) collection|The name of the grading scheme.|
|hidePointsDuringGrading|Boolean|The display setting for the UI. Indicates whether teachers can grade with points in addition to letter grades.|



## Response

If successful, this method returns a `200 OK` response code and an updated [educationGradingScheme](../resources/educationgradingscheme.md) object in the response body.

## Examples

## Example 1: Update educationGradingScheme
### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "update_educationgradingscheme"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/education/classes/37d99af7-cfc5-4e3b-8566-f7d40e4a2070/assignmentSettings/gradingschemes/d0c2769f-cd0f-4e30-8d1d-9312270de5c4
Content-Type: application/json

{
    "displayName": "New GradingScheme name"
}
```

### Response
The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.educationGradingScheme"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#education/classes('37d99af7-cfc5-4e3b-8566-f7d40e4a2070')/assignmentSettings/gradingSchemes/$entity",
    "id": "d0c2769f-cd0f-4e30-8d1d-9312270de5c4",
    "displayName": "New GradingScheme name",
    "hidePointsDuringGrading": false,
    "grades": [
        {
            "displayName": "Great",
            "minPercentage": 82,
            "defaultPercentage": null
        },
        {
            "displayName": "Good",
            "minPercentage": 70,
            "defaultPercentage": null
        },
        {
            "displayName": "Okay",
            "minPercentage": 0,
            "defaultPercentage": null
        }
    ]
}
```

## Example 2: Update educationGradingScheme by using delta payload
### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "update_educationgradingscheme_deltaPayload"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/education/classes/37d99af7-cfc5-4e3b-8566-f7d40e4a2070/assignmentSettings/gradingschemes/
Content-Type: application/json

{
    "@context": "#$delta",
    "value": [
        {
            "id": "e445acb2-145e-466f-a070-f677d4178f93",
            "displayName": "New Pass - fail Scheme created",
            "hidePointsDuringGrading": true
        },
        {
            "displayName": "New Qualitative Scheme",
            "grades": [
                {
                    "displayName": "Great",
                    "minPercentage": 82
                },
                {
                    "displayName": "Good",
                    "minPercentage": 70
                },
                {
                    "displayName": "Okay",
                    "minPercentage": 0
                }
            ]
        },        
        {
            "@removed": {
                "reason": "deleted"
            },
            "id": "d99ee8a9-a3f2-4f93-9183-4d86b8d4930b"
        }
    ]
}
```

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.educationGradingScheme"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#education/classes('37d99af7-cfc5-4e3b-8566-f7d40e4a2070')/assignmentSettings/gradingSchemes/$delta",
    "value": [
        {
            "id": "d0c2769f-cd0f-4e30-8d1d-9312270de5c4",
            "displayName": "New Qualitative Scheme",
            "hidePointsDuringGrading": false,
            "grades": [
                {
                    "displayName": "Great",
                    "minPercentage": 82,
                    "defaultPercentage": null
                },
                {
                    "displayName": "Good",
                    "minPercentage": 70,
                    "defaultPercentage": null
                },
                {
                    "displayName": "Okay",
                    "minPercentage": 0,
                    "defaultPercentage": null
                }
            ]
        },
        {
            "id": "e445acb2-145e-466f-a070-f677d4178f93",
            "displayName": "New Pass - fail Scheme created",
            "hidePointsDuringGrading": true,
            "grades": [
                {
                    "displayName": "Great",
                    "minPercentage": 82,
                    "defaultPercentage": null
                },
                {
                    "displayName": "Good",
                    "minPercentage": 70,
                    "defaultPercentage": null
                },
                {
                    "displayName": "Okay",
                    "minPercentage": 0,
                    "defaultPercentage": null
                }
            ]
        }
    ]
}
```
