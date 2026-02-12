---
title: "Get assignment"
description: "Read the properties and relationships of an assignment object."
author: "patrick-starrin"
ms.date: 07/18/2025
ms.localizationpriority: medium
ms.subservice: "cloud-licensing"
doc_type: apiPageType
---

# Get assignment

Namespace: microsoft.graph.cloudLicensing

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of an [assignment](../resources/cloudlicensing-assignment.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

Permissions to get an **assignment** for an admin:

<!-- { "blockType": "ignored"} -->
``` http
GET /admin/cloudLicensing/assignments/{assignmentId}
GET /admin/cloudLicensing/allotments/{allotmentId}/assignments/{assignmentId}
```

<!-- { "blockType": "permissions", "name": "cloudlicensing_assignment_get", "requestUrls": ["GET /admin/cloudLicensing/assignments/{id}", "GET /admin/cloudLicensing/allotments/{id}/assignments/{id}"] } -->
[!INCLUDE [permissions-table](../includes/permissions/cloudlicensing-assignment-get-permissions.md)]

Permissions to get an **assignment** for a user:

<!-- { "blockType": "ignored"} -->
``` http
GET /me/cloudLicensing/assignments/{assignmentId}
GET /users/{userId}/cloudLicensing/assignments/{assignmentId}
```

<!-- { "blockType": "permissions", "name": "cloudlicensing_assignment_get_user", "requestUrls": ["GET /me/cloudLicensing/assignments/{id}"], "GET /users/{id}/cloudLicensing/assignments/{id}" } -->
[!INCLUDE [permissions-table](../includes/permissions/cloudlicensing-assignment-get-2-permissions.md)]

Permissions to get an **assignment** for a group:

<!-- { "blockType": "ignored"} -->
``` http
GET /groups/{groupId}/cloudLicensing/assignments/{assignmentId}
```

<!-- { "blockType": "permissions", "name": "cloudlicensing_assignment_get_group", "requestUrls": ["GET /groups/{id}/cloudLicensing/assignments/{id}"] } -->
[!INCLUDE [permissions-table](../includes/permissions/cloudlicensing-assignment-get-3-permissions.md)]

## HTTP request

To get an assignment for the signed-in user using delegated (`/me`) permissions:
<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /me/cloudLicensing/assignments/{assignmentId}
```

To get an assignment using either delegated or application permissions:
<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /admin/cloudLicensing/assignments/{assignmentId}
GET /admin/cloudLicensing/allotments/{allotmentId}/assignments/{assignmentId}
GET /groups/{groupId}/cloudLicensing/assignments/{assignmentId}
GET /users/{userId}/cloudLicensing/assignments/{assignmentId}
```

## Optional query parameters

This method supports the `$select` and `$expand` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [microsoft.graph.cloudLicensing.assignment](../resources/cloudlicensing-assignment.md) object in the response body.

## Examples

### Example 1: Get an assignment

The following example shows how to get an [assignment](../resources/cloudlicensing-assignment.md) object.

#### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "get_assignment",
  "sampleKeys": ["405ee855-dd74-f695-8d7e-be35a6788fe8"]
}
-->
``` http
GET https://graph.microsoft.com/beta/me/cloudLicensing/assignments/405ee855-dd74-f695-8d7e-be35a6788fe8
```

#### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.cloudLicensing.assignment"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.cloudLicensing.assignment",
    "disabledServicePlanIds": [
      "9aaf7827-d63c-4b61-89c3-182f06f82e5c"
    ],
    "id": "405ee855-dd74-f695-8d7e-be35a6788fe8"
  }
}
```

### Example 2: Get an assignment and its assignee

The following example shows how to get an [assignment](../resources/cloudlicensing-assignment.md) object and its assignee by using the `$expand` query parameter.

#### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "get_assignment_with_assignee"
}
-->
``` http
GET https://graph.microsoft.com/beta/admin/cloudLicensing/assignments/405ee855-dd74-f695-8d7e-be35a6788fe8?$expand=assignedTo
```

#### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.cloudLicensing.assignment"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.cloudLicensing.assignment",
    "id": "405ee855-dd74-f695-8d7e-be35a6788fe8",
    "disabledServicePlanIds": [
      "5e62787c-c316-451f-b873-1d05acd4d12c"
    ],
    "assignedTo": {
      "@odata.type": "#microsoft.graph.user",
      "id": "a6c034b8-621b-dee3-6abb-52cbce801fe9",
      "displayName": "Steve Fred",
      "userPrincipalName": "stevefred@contoso.com"
    }
  }
}
```
