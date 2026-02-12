---
title: "List assignments"
description: "Get a list of license assignment objects within an organization."
author: "patrick-starrin"
ms.date: 07/18/2025
ms.localizationpriority: medium
ms.subservice: "cloud-licensing"
doc_type: apiPageType
---

# List assignments

Namespace: microsoft.graph.cloudLicensing

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of license [assignment](../resources/cloudlicensing-assignment.md) objects within an organization.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

Permissions to get a list of **assignments** for an admin:

<!-- { "blockType": "ignored"} -->
``` http
GET /admin/cloudLicensing/assignments
```

<!-- { "blockType": "permissions", "name": "cloudlicensing-admincloudlicensing-list-assignments-user-permissions", "requestUrls": ["GET /admin/cloudLicensing/assignments"] } -->
[!INCLUDE [permissions-table](../includes/permissions/cloudlicensing-admincloudlicensing-list-assignments-permissions.md)]

Permissions to get a list of **assignments** for a user:

<!-- { "blockType": "ignored"} -->
``` http
GET /users/{userId}/cloudLicensing/assignments
```

<!-- { "blockType": "permissions", "name": "cloudlicensing-admincloudlicensing-list-assignments-user-permissions_2", "requestUrls": ["GET /users/{id}/cloudLicensing/assignments"] } -->
[!INCLUDE [permissions-table](../includes/permissions/cloudlicensing-admincloudlicensing-list-assignments-2-permissions.md)]

Permissions to get a list of **assignments** for a group:

<!-- { "blockType": "ignored"} -->
``` http
GET /groups/{groupId}/cloudLicensing/assignments
```

<!-- { "blockType": "permissions", "name": "cloudlicensing-admincloudlicensing-list-assignments-user-permissions_3", "requestUrls": ["GET /groups/{id}/cloudLicensing/assignments"] } -->
[!INCLUDE [permissions-table](../includes/permissions/cloudlicensing-admincloudlicensing-list-assignments-3-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /admin/cloudLicensing/assignments
GET /users/{userId}/cloudLicensing/assignments
GET /groups/{groupId}/cloudLicensing/assignments
```

## Optional query parameters

This method supports the `$select`, `$top`, `$expand`, and `$filter` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [microsoft.graph.cloudLicensing.assignment](../resources/cloudlicensing-assignment.md) objects in the response body.

## Examples

### Example 1: Get assignments

The following example shows how to get a list of [assignment](../resources/cloudlicensing-assignment.md) objects.

#### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_admin_assignments"
}
-->
``` http
GET https://graph.microsoft.com/beta/admin/cloudLicensing/assignments
```

#### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.cloudLicensing.assignment)"
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

### Example 2: Get assignments with their allotments

The following example shows how to get a list of [assignment](../resources/cloudlicensing-assignment.md) objects with their allotments using the `expand` query parameter.

#### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_admin_assignments_with_allotments"
}
-->
``` http
GET https://graph.microsoft.com/beta/admin/cloudLicensing/assignments?$expand=assignedTo,allotment
```

#### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.cloudLicensing.assignment)"
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
      ],
      "assignedTo": {
        "@odata.type": "#microsoft.graph.user",
        "id": "a6c034b8-621b-dee3-6abb-52cbce801fe9",
        "displayName": "Steve Fred",
        "userPrincipalName": "stevefred@contoso.com"
      },
      "allotment": {
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
        "skuPartNumber": "Teams_Ess"
      }
    }
  ]
}
```

### Example 3: Get assignments filtered by skuId

The following example shows how to get a list of [assignment](../resources/cloudlicensing-assignment.md) objects filtered by the **skuId** property.

#### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_admin_assignments_filtered_skudId"
}
-->
``` http
GET https://graph.microsoft.com/beta/admin/cloudLicensing/assignments?$expand=allotment($filter=skuId in (639dec6b-bb19-468b-871c-c5c441c4b0cb, a403ebcc-fae0-4ca2-8c8c-7a907fd6c235))
```

#### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.cloudLicensing.assignment)"
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
      ],
      "allotment": {
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
        "skuId": "a403ebcc-fae0-4ca2-8c8c-7a907fd6c235",
        "skuPartNumber": "EXCHANGESTANDARD"
      }
    }
  ]
}
```
