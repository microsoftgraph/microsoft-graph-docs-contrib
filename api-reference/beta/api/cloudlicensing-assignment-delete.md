---
title: "Delete assignment"
description: "Delete an assignment object."
author: "patrick-starrin"
ms.date: 07/18/2025
ms.localizationpriority: medium
ms.subservice: "cloud-licensing"
doc_type: apiPageType
---

# Delete assignment

Namespace: microsoft.graph.cloudLicensing

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Delete an [assignment](../resources/cloudlicensing-assignment.md) object.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

Permissions to delete an **assignment** for an admin:

<!-- { "blockType": "ignored"} -->
``` http
DELETE /admin/cloudLicensing/assignments/{assignmentId}
DELETE /admin/cloudLicensing/allotments/{allotmentId}/assignments/{assignmentId}
```

<!-- { "blockType": "permissions", "name": "cloudlicensing_assignment_delete_admin", "requestUrls": ["DELETE /admin/cloudLicensing/assignments/{id}", "DELETE /admin/cloudLicensing/allotments/{id}/assignments/{id}"] } -->
[!INCLUDE [permissions-table](../includes/permissions/cloudlicensing-assignment-delete-permissions.md)]

Permissions to delete an **assignment** for a user:

<!-- { "blockType": "ignored"} -->
``` http
DELETE /me/cloudLicensing/assignments/{assignmentId}
DELETE /users/{userId}/cloudLicensing/assignments/{assignmentId}
```

<!-- { "blockType": "permissions", "name": "cloudlicensing_assignment_delete_user", "requestUrls": ["DELETE /me/cloudLicensing/assignments/{id}", "DELETE /users/{id}/cloudLicensing/assignments/{id}"] } -->
[!INCLUDE [permissions-table](../includes/permissions/cloudlicensing-assignment-delete-2-permissions.md)]

Permissions to delete an **assignment** for a group:

<!-- { "blockType": "ignored"} -->
``` http
DELETE /groups/{groupId}/cloudLicensing/assignments/{assignmentId}
```

<!-- { "blockType": "permissions", "name": "cloudlicensing_assignment_delete_group", "requestUrls": ["DELETE /groups/{id}/cloudLicensing/assignments/{id}"] } -->
[!INCLUDE [permissions-table](../includes/permissions/cloudlicensing-assignment-delete-3-permissions.md)]

## HTTP request

To delete an assignment for the signed-in user using delegated (`/me`) permissions:
<!-- {
  "blockType": "ignored"
}
-->
``` http
DELETE /me/cloudLicensing/assignments/{assignmentId}
```

To delete an assignment using either delegated or application permissions:
<!-- {
  "blockType": "ignored"
}
-->
``` http
DELETE /admin/cloudLicensing/assignments/{assignmentId}
DELETE /admin/cloudLicensing/allotments/{allotmentId}/assignments/{assignmentId}
DELETE /groups/{groupId}/cloudLicensing/assignments/{assignmentId}
DELETE /users/{userId}/cloudLicensing/assignments/{assignmentId}
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "delete_assignment"
}
-->
``` http
DELETE https://graph.microsoft.com/beta/admin/cloudLicensing/assignments/0b1a424d-3b9b-4446-80b9-6917dd521e03
```

### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```
