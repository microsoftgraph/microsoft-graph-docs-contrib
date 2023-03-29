---
title: "Update educationAssignmentSettings"
description: "Update the properties of an educationAssignmentSettings object."
author: "dipakboyed"
ms.localizationpriority: medium
ms.prod: "education"
doc_type: apiPageType
---

# Update educationAssignmentSettings
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of an [educationAssignmentSettings](../resources/educationassignmentsettings.md) object. Only Teachers can update these settings.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|EduAssignments.ReadWriteBasic, EduAssignments.ReadWrite|
|Delegated (personal Microsoft account)|Not supported.|
|Application|Not supported.|

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
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [educationAssignmentSettings](../resources/educationassignmentsettings.md) object.

The following table shows the properties that are required when you update the [educationAssignmentSettings](../resources/educationassignmentsettings.md).

|Property|Type|Description|
|:---|:---|:---|
|submissionAnimationDisabled|Boolean|Indicates whether turn-in celebration animation will be shown. A value of `true` indicates that the animation will not be shown. Default value is `false`.|



## Response

If successful, this method returns a `200 OK` response code and an updated [educationAssignmentSettings](../resources/educationassignmentsettings.md) object in the response body.

## Examples

### Example 1: Update submissionAnimationDisabled

#### Request

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

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-educationassignmentsettings-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/update-educationassignmentsettings-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/update-educationassignmentsettings-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/update-educationassignmentsettings-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/update-educationassignmentsettings-php-snippets.md)]
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
  "submissionAnimationDisabled": true
}
```
### Example 2: Create grading categories
### Request
The following is an example of the request.


<!-- {
  "blockType": "request",
  "sampleKeys": ["37d99af7-cfc5-4e3b-8566-f7d40e4a2070"],
  "name": "update_gradingCategoties"
}-->
```http
PATCH https://graph.microsoft.com/beta/education/classes/37d99af7-cfc5-4e3b-8566-f7d40e4a2070/assignmentSettings
Content-type: application/json

{
"gradingCategories": [
        {
            "id": "8bfb6d7f-8634-4f3b-9b6a-b6b6ff663f01",
            "displayName": "Quiz-1",
            "percentageWeight": 10
        },
        {
            "id": "6fd19981-588f-495c-91a8-712a645c95b7",
            "displayName": "Cat2",
            "percentageWeight": 80
        },
        {
            "id": "54f637a5-2cef-4e48-a88e-028854ca8089",
            "displayName": "cat3",
            "percentageWeight": 10
        }
    ]
}
```

### Response
The following is an example of the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.gradingCategory"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
    {
    "@odata.context": "https://canary.graph.microsoft.com/testprodbetaeduasg_wus2gradingcategories/$metadata#education/classes('37d99af7-cfc5-4e3b-8566-f7d40e4a2070')/assignmentSettings/$entity",
    "submissionAnimationDisabled": false,
    "gradingCategories@odata.context": "https://canary.graph.microsoft.com/testprodbetaeduasg_wus2gradingcategories/$metadata#education/classes('37d99af7-cfc5-4e3b-8566-f7d40e4a2070')/assignmentSettings/gradingCategories",
    "gradingCategories": [
        {
            "id": "8bfb6d7f-8634-4f3b-9b6a-b6b6ff663f01",
            "displayName": "Quiz-1",
            "percentageWeight": 10
        },
        {
            "id": "6fd19981-588f-495c-91a8-712a645c95b7",
            "displayName": "Cat2",
            "percentageWeight": 80
        },
        {
            "id": "54f637a5-2cef-4e48-a88e-028854ca8089",
            "displayName": "cat3",
            "percentageWeight": 10
        }
    ]
}
}
```
