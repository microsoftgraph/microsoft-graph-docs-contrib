---
title: "Create educationGradingScheme"
description: "Create a new educationGradingScheme object."
author: "v-rmanda"
ms.localizationpriority: medium
ms.prod: "education"
doc_type: apiPageType
---

# Create educationGradingScheme

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [educationGradingScheme](../resources/educationgradingscheme.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "educationgradingscheme_post" } -->
[!INCLUDE [permissions-table](../includes/permissions/educationgradingscheme-post-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /education/classes/{educationClassId}/assignmentSettings/gradingSchemes
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [educationGradingScheme](../resources/educationgradingscheme.md) object.

You can specify the following properties when you create an **educationGradingScheme**.

|Property|Type|Description|
|:---|:---|:---|
|displayName|String|The name of the grading scheme.|
|grades|[educationGradingSchemeGrade](../resources/educationgradingschemegrade.md) collection|The name of the grading scheme.|
|hidePointsDuringGrading|Boolean|The display setting for the UI. Indicates whether teachers can grade with points in addition to letter grades.|

## Response

If successful, this method returns a `204 No Content` response code and an [educationGradingScheme](../resources/educationgradingscheme.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "set_defaultGradingScheme"
}
-->
``` http
POST https://graph.microsoft.com/beta/education/classes/37d99af7-cfc5-4e3b-8566-f7d40e4a2070/assignmentSettings/gradingSchemes
Content-Type: application/json

{
    "displayName": "New name 02",
    "grades": [
        {
            "displayName": "Only grade",
            "minPercentage": 0
        }
    ]
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
```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#education/classes('37d99af7-cfc5-4e3b-8566-f7d40e4a2070')/assignmentSettings/gradingSchemes/$entity",
    "id": "6cf7c7f5-553e-42d0-b88c-e10db227f84f",
    "displayName": "New name 02",
    "hidePointsDuringGrading": false,
    "grades": [
        {
            "displayName": "Only grade",
            "minPercentage": 0,
            "defaultPercentage": null
        }
    ]
}
```
