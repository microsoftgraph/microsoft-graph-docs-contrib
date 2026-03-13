---
title: "List assignments for usageRight"
description: "Get a list of assignment objects which combine to form this usageRight."
author: "patrick-starrin"
ms.date: 07/18/2025
ms.localizationpriority: medium
ms.subservice: "cloud-licensing"
doc_type: apiPageType
---

# List assignments for usageRight

Namespace: microsoft.graph.cloudLicensing

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of [assignment](../resources/cloudlicensing-assignment.md) objects which combine to form this [usageRight](../resources/cloudlicensing-usageright.md), including both direct assignments and assignments inherited through group membership.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

Permissions to list **usageRight** assignments for a user:

<!-- { "blockType": "ignored"} -->
``` http
GET /me/cloudLicensing/usageRights/{usageRightId}/assignments
GET /users/{userId}/cloudLicensing/usageRights/{usageRightId}/assignments
```

<!-- { "blockType": "permissions", "name": "cloudlicensing_usageright_list_assignments_permissions_user", "requestUrls": ["GET /me/cloudLicensing/usageRights/{id}/assignments", "GET /users/{id}/cloudLicensing/usageRights/{id}/assignments"] } -->
[!INCLUDE [permissions-table](../includes/permissions/cloudlicensing-usageright-list-assignments-permissions.md)]

Permissions to list **usageRight** assignments for a group:

<!-- { "blockType": "ignored"} -->
``` http
GET /groups/{groupId}/cloudLicensing/usageRights/{usageRightId}/assignments
```

<!-- { "blockType": "permissions", "name": "cloudlicensing_usageright_list_assignments_permissions_group", "requestUrls": ["GET /groups/{id}/cloudLicensing/usageRights/{id}/assignments"] } -->
[!INCLUDE [permissions-table](../includes/permissions/cloudlicensing-usageright-list-assignments-2-permissions.md)]

## HTTP request

To list assignments for the signed-in user using delegated (`/me`) permissions:
<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /me/cloudLicensing/usageRights/{usageRightId}/assignments
```

To list assignments using either delegated or application permissions:
<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /groups/{groupId}/cloudLicensing/usageRights/{usageRightId}/assignments
GET /users/{userId}/cloudLicensing/usageRights/{usageRightId}/assignments
```

## Optional query parameters

This method supports the `$select`, `$top`, and `$expand` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [microsoft.graph.cloudLicensing.assignment](../resources/cloudlicensing-assignment.md) objects in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_usageright_assignments"
}
-->
``` http
GET https://graph.microsoft.com/beta/me/cloudLicensing/usageRights/7e452304-0a58-40d6-8fd2-2afe92d26a3a/assignments
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
  "value": [
    {
      "@odata.type": "#microsoft.graph.cloudLicensing.assignment",
      "id": "405ee855-dd74-f695-8d7e-be35a6788fe8",
      "disabledServicePlanIds": [
        "5e62787c-c316-451f-b873-1d05acd4d12c"
      ]
    }
  ]
}
```
