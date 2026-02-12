---
title: "Get allotment"
description: "Read the properties and relationships of an allotment object."
author: "patrick-starrin"
ms.date: 07/18/2025
ms.localizationpriority: medium
ms.subservice: "cloud-licensing"
doc_type: apiPageType
---

# Get allotment

Namespace: microsoft.graph.cloudLicensing

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of an [allotment](../resources/cloudlicensing-allotment.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

Permissions to get an **allotment** as an admin:

<!-- { "blockType": "permissions", "name": "cloudlicensing_allotment_get_admin" } -->
[!INCLUDE [permissions-table](../includes/permissions/cloudlicensing-allotment-get-permissions.md)]


<!-- { "blockType": "ignored"} -->
``` http
GET /admin/cloudLicensing/allotments/{allotmentId}
GET /admin/cloudLicensing/assignments/{assignmentId}/allotment
```

Permissions to get an **allotment** for a user:

<!-- { "blockType": "ignored"} -->
``` http
GET /users/{userId}/cloudLicensing/assignments/{assignmentId}/allotment
GET /me/cloudLicensing/assignments/{assignmentId}/allotment
GET /users/{userId}/cloudLicensing/waitingMembers/{waitingMemberId}/allotment
GET /me/cloudLicensing/waitingMembers/{waitingMemberId}/allotment
```

<!-- { "blockType": "permissions", "name": "cloudlicensing_allotment_get_user", "requestUrls": ["GET /users/{id}/cloudLicensing/assignments/{id}/allotment", "GET /users/{id}/cloudLicensing/waitingMembers/{id}/allotment", "GET /me/cloudLicensing/assignments/{assignmentId}/allotment", "GET /me/cloudLicensing/waitingMembers/{waitingMemberId}/allotment"] } -->
[!INCLUDE [permissions-table](../includes/permissions/cloudlicensing-allotment-get-2-permissions.md)]

Permissions to get an **allotment** for a group:

<!-- { "blockType": "ignored"} -->
``` http
GET /groups/{groupId}/cloudLicensing/assignments/{assignmentId}/allotment
```

<!-- { "blockType": "permissions", "name": "cloudlicensing_allotment_get_group", "requestUrls": ["GET /users/{id}/cloudLicensing/assignments/{id}/allotment"] } -->
[!INCLUDE [permissions-table](../includes/permissions/cloudlicensing-allotment-get-3-permissions.md)]

## HTTP request

To get an allotment for the signed-in user using delegated (`/me`) permissions:
<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /me/cloudLicensing/assignments/{assignmentId}/allotment
GET /me/cloudLicensing/waitingMembers/{waitingMemberId}/allotment
```

To get an allotment using either delegated or application permissions:
<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /admin/cloudLicensing/allotments/{allotmentId}
GET /admin/cloudLicensing/assignments/{assignmentId}/allotment
GET /groups/{groupId}/cloudLicensing/assignments/{assignmentId}/allotment
GET /users/{userId}/cloudLicensing/assignments/{assignmentId}/allotment
GET /users/{userId}/cloudLicensing/waitingMembers/{waitingMemberId}/allotment
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

If successful, this method returns a `200 OK` response code and a [microsoft.graph.cloudLicensing.allotment](../resources/cloudlicensing-allotment.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "get_allotment"
}
-->
``` http
GET https://graph.microsoft.com/beta/admin/cloudLicensing/allotments/rkocgef3dgjhnu3gmu2mqhbdbmwcymnf6fk3k6a7zbui5e7gfpmi
```

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.cloudLicensing.allotment"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.cloudLicensing.allotment",
    "id": "fde42873-30b6-436b-b361-21af5a6b84ae",
    "allottedUnits": 100,
    "assignableTo": "user,group",
    "consumedUnits": 84,
    "services": [
      {
        "@odata.type": "#microsoft.graph.cloudLicensing.service",
        "assignableTo": "user,group",
        "planId": "f4f2f6de-6830-442b-a433-e92249faebe2",
        "planName": "TeamsEss"
      }
    ],
    "skuId": "f245ecc8-75af-4f8e-b61f-27d8114de5f3",
    "skuPartNumber": "Teams_Ess",
    "subscriptions": [
      {
        "@odata.type": "#microsoft.graph.cloudLicensing.subscription",
        "subscriptionId": "f196adf8-75fa-8e4f-c61d-42d8114de4f4",
        "nextLifecycleDate": "2025-09-30T00:00:00.000Z",
        "startDate": "2025-07-18T00:00:00.000Z",
        "state": "active",
        "tags": "none"
      }
    ]
  }
}
```
