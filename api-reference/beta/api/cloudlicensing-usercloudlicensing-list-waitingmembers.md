---
title: "List waitingMembers for user"
description: "Get a list of the waitingMember objects granted to a user."
author: "patrick-starrin"
ms.localizationpriority: medium
ms.subservice: "cloud-licensing"
doc_type: apiPageType
ms.date: 10/22/2024
---

# List waitingMembers for user

Namespace: microsoft.graph.cloudLicensing

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [waitingMember](../resources/cloudlicensing-waitingmember.md) objects granted to a user. This API returns details about licenses that are directly assigned to a user and those licenses transitively assigned through membership in licensed groups.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "cloudlicensing_usercloudlicensing_list_waitingMember" } -->
[!INCLUDE [permissions-table](../includes/permissions/cloudlicensing-usercloudlicensing-list-waitingmembers-permissions.md)]

## HTTP request

To get all waiting members for the signed-in user using delegated (`/me`) permissions:

<!-- { "blockType": "ignored" }
-->
``` http
GET /me/cloudLicensing/waitingMembers
```

To get all waiting members for a specific user using either delegated or application permissions:

<!-- { "blockType": "ignored" }
-->
``` http
GET /users/{userId}/cloudLicensing/waitingMembers
```

## Optional query parameters

This method supports the `$select` OData query parameter to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [microsoft.graph.cloudLicensing.waitingMember](../resources/cloudlicensing-waitingmember.md) objects in the response body.

## Examples

The following example shows how to get all waiting members granted to a user.

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "cloudlicensing-userwaitingmember-list-example-1"
}
-->
``` http
GET https://graph.microsoft.com/beta/users/48fbdf70-9e09-40df-9dbe-17af483ab113/cloudLicensing/waitingMembers?$expand=allotment($select=id,skuId,skuPartNumber)
```

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.cloudLicensing.waitingMember)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.cloudLicensing.waitingMember",
      "id": "49caea1b-ad15-64f1-70c5-5c5e3563d19c",
      "waitingSinceDateTime": "2024-11-22T17:11:10.6635939+00:00",
      "allotment":
        {
          "@odata.type": "#microsoft.graph.cloudLicensing.allotment",
          "id": "551f1755-0184-9e51-0bc7-f32bae5a1afb",
          "skuId": "4b9405b0-7788-4568-add1-99614e613b69",
          "skuPartNumber": "EXCHANGESTANDARD"
        }  
    }
  ]
}
```
