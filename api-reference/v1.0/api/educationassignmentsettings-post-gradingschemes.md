---
title: "Create educationGradingScheme"
description: "Create a new educationGradingScheme on an educationClass."
ms.localizationpriority: medium
author: "GatadiMegha"
ms.subservice: "education"
doc_type: apiPageType
ms.date: 09/19/2025
---

# Create educationGradingScheme

Namespace: microsoft.graph

Create a new [educationGradingScheme](../resources/educationgradingscheme.md) on an [educationClass](../resources/educationclass.md). Only teachers can perform this operation.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "educationassignmentsettings-post-gradingschemes-permissions" } -->
[!INCLUDE [permissions-table](../includes/permissions/educationassignmentsettings-post-gradingschemes-permissions.md)]

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /education/classes/{id}/assignmentSettings/gradingSchemes
```

## Request headers

| Header       | Value |
|:---------------|:--------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| Content-Type  | application/json  |

## Request body

In the request body, supply a JSON representation of an [educationGradingScheme](../resources/educationgradingscheme.md) object.

## Response

If successful, this method returns a `201 Created` response code and an [educationGradingScheme](../resources/educationgradingscheme.md) object in the response body.

## Examples

### Request

The following example shows the request.

<!-- {
  "blockType": "request",
  "name": "create_educationgradingscheme"
}-->
```http
POST https://graph.microsoft.com/v1.0/education/classes/de45722a-c202-43a9-9dd5-d82c45bcef91/assignmentSettings/gradingSchemes
Content-Type: application/json
 
{
  "displayName": "PassFailScheme",
  "grades": [
    {
      "displayName": "Pass",
      "minPercentage": 70.0,
      "defaultPercentage": 90.0
    },
    {
      "displayName": "Fail",
      "minPercentage": 0.0,
      "defaultPercentage": 50.0
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
} -->
```http
HTTP/1.1 201 Created
Content-type: application/json

{
  "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#education/classes('de45722a-c202-43a9-9dd5-d82c45bcef91')/assignmentSettings/gradingSchemes/$entity",
  "id": "acdbd23c-004e-4965-8e57-fa08c7d2020d",
  "displayName": "PassFailScheme",
  "hidePointsDuringGrading": false,
  "grades": [
    {
      "displayName": "Pass",
      "minPercentage": 70.0,
      "defaultPercentage": 90.0
    },
    {
      "displayName": "Fail",
      "minPercentage": 0.0,
      "defaultPercentage": 50.0
    }
  ]
}
```
