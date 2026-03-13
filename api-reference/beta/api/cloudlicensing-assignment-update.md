---
title: "Update assignment"
description: "Update an assignment object to enable or disable services."
author: "patrick-starrin"
ms.date: 07/18/2025
ms.localizationpriority: medium
ms.subservice: "cloud-licensing"
doc_type: apiPageType
---

# Update assignment

Namespace: microsoft.graph.cloudLicensing

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update an [assignment](../resources/cloudlicensing-assignment.md) object to enable or disable services. Any service contained in its allotment which isn't listed in the **disabledServicePlanIds** array is enabled.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

Permissions to update an **assignment** for an admin:

<!-- { "blockType": "ignored"} -->
``` http
PATCH /admin/cloudLicensing/assignments/{assignmentId}
PATCH /admin/cloudLicensing/allotments/{allotmentId}/assignments/{assignmentId}
```

<!-- { "blockType": "permissions", "name": "cloudlicensing_assignment_update", "requestUrls": ["PATCH /admin/cloudLicensing/assignments/{id}", "PATCH /admin/cloudLicensing/allotments/{allotmentId}/assignments/{id}"] } -->
[!INCLUDE [permissions-table](../includes/permissions/cloudlicensing-assignment-update-permissions.md)]

Permissions to update an **assignment** for a user:

<!-- { "blockType": "ignored"} -->
``` http
PATCH /me/cloudLicensing/allotments/{allotmentId}/assignments/{assignmentId}
PATCH /users/{userId}/cloudLicensing/assignments/{assignmentId}
```

<!-- { "blockType": "permissions", "name": "cloudlicensing_assignment_update_user", "requestUrls": ["PATCH /me/cloudLicensing/allotments/{id}/assignments/{id}", "PATCH /users/{id}/cloudLicensing/assignments/{id}"] } -->
[!INCLUDE [permissions-table](../includes/permissions/cloudlicensing-assignment-update-2-permissions.md)]

Permissions to update an **assignment** for a group:

<!-- { "blockType": "ignored"} -->
``` http
PATCH /groups/{groupId}/cloudLicensing/assignments/{assignmentId}
```

<!-- { "blockType": "permissions", "name": "cloudlicensing_assignment_update_group", "requestUrls": ["PATCH /groups/{id}/cloudLicensing/assignments/{id}"] } -->
[!INCLUDE [permissions-table](../includes/permissions/cloudlicensing-assignment-update-3-permissions.md)]

## HTTP request

To update an assignment for the signed-in user using delegated (`/me`) permissions:
<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /me/cloudLicensing/allotments/{allotmentId}/assignments/{assignmentId}
```

To update an assignment using either delegated or application permissions:
<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /admin/cloudLicensing/assignments/{assignmentId}
PATCH /admin/cloudLicensing/allotments/{allotmentId}/assignments/{assignmentId}
PATCH /groups/{groupId}/cloudLicensing/assignments/{assignmentId}
PATCH /users/{userId}/cloudLicensing/assignments/{assignmentId}
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
|disabledServicePlanIds|GUID collection|The list of disabled service plans for this assignment. An empty list indicates that all services are enabled. Required.|

## Response

If successful, this method returns a `200 OK` response code and an updated [microsoft.graph.cloudLicensing.assignment](../resources/cloudlicensing-assignment.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "update_assignment"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/me/cloudLicensing/assignments/0b1a424d-3b9b-4446-80b9-6917dd521e03
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.cloudLicensing.assignment",
  "disabledServicePlanIds": [
    "bed136c6-b799-4462-824d-fc045d3a9d25"
  ],
  "allotment@odata.bind": "https://graph.microsoft.com/beta/admin/cloudLicensing/allotments/rkocgef3dgjhnu3gmu2mqhbdbmwcymnf6fk3k6a7zbui5e7gfpmi",
  "assignedTo@odata.bind": "https://graph.microsoft.com/beta/users/6d645c5f-089f-40d8-b0e7-136fb5c56d5b"
}
```


### Response

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
  "@odata.type": "#microsoft.graph.cloudLicensing.assignment",
  "disabledServicePlanIds": [
    "bed136c6-b799-4462-824d-fc045d3a9d25"
  ],
  "id": "405ee855-dd74-f695-8d7e-be35a6788fe8"
}
```

