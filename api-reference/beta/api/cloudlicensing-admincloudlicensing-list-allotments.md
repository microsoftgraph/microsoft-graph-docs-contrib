---
title: "List allotments"
description: "Get a list of the allotment objects and their properties."
author: "patrick-starrin"
ms.date: 07/18/2025
ms.localizationpriority: medium
ms.subservice: "cloud-licensing"
doc_type: apiPageType
---

# List allotments

Namespace: microsoft.graph.cloudLicensing

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [allotment](../resources/cloudlicensing-allotment.md) objects and their properties.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "cloudlicensing-admincloudlicensing-list-allotments-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/cloudlicensing-admincloudlicensing-list-allotments-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /admin/cloudLicensing/allotments
```

## Optional query parameters

This method supports the `$select`, `$top`, `$expand`, `$apply`, and `$filter` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [microsoft.graph.cloudLicensing.allotment](../resources/cloudlicensing-allotment.md) objects in the response body.

## Examples

### Example 1: Get allotments
The following example shows how to get [allotment](../resources/cloudlicensing-allotment.md) objects.
#### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_admin_assignment_allotment"
}
-->
``` http
GET https://graph.microsoft.com/beta/admin/cloudLicensing/allotments
```

#### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.cloudLicensing.allotment)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
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
  ]
}
```

### Example 2: Get allotments with waitingMembers
The following example shows how to get [allotment](../resources/cloudlicensing-allotment.md) objects, including their **waitingMembers**.
#### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_admin_assignment_allotment_with_waitingmembers"
}
-->
``` http
GET https://graph.microsoft.com/beta/admin/cloudLicensing/allotments?$select=id,allottedUnits,consumedUnits,assignableTo&$expand=waitingMembers($select=id,waitingSinceDateTime)
```

#### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.cloudLicensing.allotment)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.cloudLicensing.allotment",
      "id": "551f1755-0184-9e51-0bc7-f32bae5a1afb",
      "allottedUnits": 250,
      "assignableTo": "user,group",
      "consumedUnits": 224,
      "waitingMembers": [
        {
          "@odata.type": "#microsoft.graph.cloudLicensing.waitingMember",
          "id": "49caea1b-ad15-64f1-70c5-5c5e3563d19c",
          "waitingSinceDateTime": "2024-11-22T17:11:10.6635939+00:00"
        }
      ]
    }
  ]
}
```

### Example 3: Get allotments and aggregate allotted units

The following example shows how to get [allotment](../resources/cloudlicensing-allotment.md) objects and aggregate allotted units.

#### Request
The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_admin_assignment_allotment_and_aggregate_allotted_units"
}
-->
``` http
GET https://graph.microsoft.com/beta/admin/cloudLicensing/allotments?$apply=groupby((skuId,skuPartNumber), aggregate(allottedUnits with sum as totalAllottedUnits, consumedUnits with sum as totalConsumedUnits))
```

#### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.cloudLicensing.allotment)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "skuId": "6fd2c87f-b296-42f0-b197-1e91e994b900",
      "skuPartNumber": "ENTERPRISEPACK",
      "totalAllottedUnits": 500,
      "totalConsumedUnits": 425
    },
    {
      "skuId": "c7df2760-2c81-4ef7-b578-5b5392b571df",
      "skuPartNumber": "ENTERPRISEPREMIUM",
      "totalAllottedUnits": 200,
      "totalConsumedUnits": 150
    },
    {
      "skuId": "a4585165-0533-458a-97e3-c400570268c4",
      "skuPartNumber": "SHAREPOINTSTANDARD",
      "totalAllottedUnits": 300,
      "totalConsumedUnits": 275
    }
  ]
}
```
