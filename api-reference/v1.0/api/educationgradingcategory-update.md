---
title: "Update gradingCategory"
description: "Update a single gradingCategory."
author: "AshwaniBansal1"
ms.localizationpriority: medium
ms.prod: "education"
doc_type: apiPageType
---

# Update gradingCategory

Namespace: microsoft.graph

Update a single [gradingCategory](../resources/educationgradingcategory.md) on the [educationAssignmentSettings](../resources/educationassignmentsettings.md). Only teachers can perform this operation.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "educationgradingcategory_update" } -->
[!INCLUDE [permissions-table](../includes/permissions/educationgradingcategory-update-permissions.md)]

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
PATCH /education/classes/{classId}/assignmentSettings/gradingCategories/{gradingCategoryId}
```

## Request headers
| Header       | Value |
|:---------------|:--------|
| Authorization  | Bearer {token}. Required.  |

## Request body

In the request body, supply the values for relevant fields that should be updated. Existing properties that are not included in the request body will maintain their previous values or be recalculated based on changes to other property values. For best performance, don't include existing values that haven't changed.

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|displayName|String|The new name for a grading category.|

## Response
If successful, this method returns a `200 OK` response code and an updated [gradingCategory](../resources/educationgradingcategory.md) object in the response body.

## Example

### Request
The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "sampleKeys": ["37d99af7-cfc5-4e3b-8566-f7d40e4a2070", "8bfb6d7f-8634-4f3b-9b6a-b6b6ff663f01"],
  "name": "update_gradingCategoties"
}-->
```http
PATCH https://graph.microsoft.com/v1.0/education/classes/37d99af7-cfc5-4e3b-8566-f7d40e4a2070//assignmentSettings/gradingCategories/a5ca6dda-f220-43ca-81e4-02396b99f398
Content-type: application/json

{
    "displayName": "Test updated"
}
```

### Response
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
    "@odata.context": "https://canary.graph.microsoft.com/testprodv1.0eduasg_grading_categories_v1/$metadata#education/classes('37d99af7-cfc5-4e3b-8566-f7d40e4a2070')/assignmentSettings/gradingCategories/$entity",
    "id": "a5ca6dda-f220-43ca-81e4-02396b99f398",
    "displayName": "Test updated",
    "percentageWeight": 30
}
```
