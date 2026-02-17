---
title: "Get allotment for assignment"
description: "Get the allotment that is the source of the licenses used in the assignment."
author: "patrick-starrin"
ms.date: 07/18/2025
ms.localizationpriority: medium
ms.subservice: "cloud-licensing"
doc_type: apiPageType
---

# Get allotment for assignment

Namespace: microsoft.graph.cloudLicensing

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the [allotment](../resources/cloudlicensing-allotment.md) that is the source of the licenses used in the assignment.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

Permissions to get an **allotment** for an admin:

<!-- { "blockType": "ignored"} -->
``` http
GET /admin/cloudLicensing/assignments/{assignmentId}/allotment
```

<!-- { "blockType": "permissions", "name": "cloudlicensing_assignment_get_allotment_permissions_admin", "requestUrls": ["GET /admin/cloudLicensing/assignments/{id}/allotment"] } -->
[!INCLUDE [permissions-table](../includes/permissions/cloudlicensing-assignment-get-allotment-permissions.md)]

Permissions to get an **allotment** for a user:

<!-- { "blockType": "ignored"} -->
``` http
GET /users/{userId}/cloudLicensing/assignments/{assignmentId}/allotment
```

<!-- { "blockType": "permissions", "name": "cloudlicensing_assignment_get_allotment_permissions_user", "requestUrls": ["GET /users/{id}/cloudLicensing/assignments/{id}/allotment"] } -->
[!INCLUDE [permissions-table](../includes/permissions/cloudlicensing-assignment-get-allotment-2-permissions.md)]


Permissions to get an **allotment** for a group:

<!-- { "blockType": "ignored"} -->
``` http
GET /groups/{groupId}/cloudLicensing/assignments/{assignmentId}/allotment
```

<!-- { "blockType": "permissions", "name": "cloudlicensing_assignment_get_allotment_permissions_group", "requestUrls": ["GET /groups/{id}/cloudLicensing/assignments/{id}/allotment"] } -->
[!INCLUDE [permissions-table](../includes/permissions/cloudlicensing-assignment-get-allotment-3-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /admin/cloudLicensing/assignments/{assignmentId}/allotment
GET /users/{userId}/cloudLicensing/assignments/{assignmentId}/allotment
GET /groups/{groupId}/cloudLicensing/assignments/{assignmentId}/allotment
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
  "name": "get_assignment_allotment",
  "sampleKeys": ["405ee855-dd74-f695-8d7e-be35a6788fe8"]
}
-->
``` http
GET https://graph.microsoft.com/beta/admin/cloudLicensing/assignments/405ee855-dd74-f695-8d7e-be35a6788fe8/allotment
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
    "id": "551f1755-0184-9e51-0bc7-f32bae5a1afb",
    "allottedUnits": 250,
    "assignableTo": "user,group",
    "consumedUnits": 224,
    "services": [
      {
        "@odata.type": "microsoft.graph.cloudLicensing.service",
        "assignableTo": "user,group",
        "planId": "9aaf7827-d63c-4b61-89c3-182f06f82e5c",
        "planName": "EXCHANGE_S_STANDARD"
      },
      {
        "@odata.type": "microsoft.graph.cloudLicensing.service",
        "assignableTo": "none",
        "planId": "6f23d6a9-adbf-481c-8538-b4c095654487",
        "planName": "M365_LIGHTHOUSE_CUSTOMER_PLAN1"
      },
      {
        "@odata.type": "microsoft.graph.cloudLicensing.service",
        "assignableTo": "none",
        "planId": "882e1d05-acd1-4ccb-8708-6ee03664b117",
        "planName": "INTUNE_O365"
      },
      {
        "@odata.type": "microsoft.graph.cloudLicensing.service",
        "assignableTo": "user,group",
        "planId": "5e62787c-c316-451f-b873-1d05acd4d12c",
        "planName": "BPOS_S_TODO_1"
      }
    ],
    "skuId": "4b9405b0-7788-4568-add1-99614e613b69",
    "skuPartNumber": "EXCHANGESTANDARD"
  }
}
```
