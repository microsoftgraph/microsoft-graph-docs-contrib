---
title: "List waitingMembers"
description: "Get a list of over-assigned users who are in the waiting room due to license capacity limits."
author: "patrick-starrin"
ms.date: 07/18/2025
ms.localizationpriority: medium
ms.subservice: "cloud-licensing"
doc_type: apiPageType
---

# List waitingMembers

Namespace: microsoft.graph.cloudLicensing

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of over-assigned [users](../resources/cloudlicensing-waitingmember.md) who are in the waiting room due to license capacity limits. Use `/admin/cloudLicensing/allotments/{allotmentId}/waitingMembers` to retrieve all [waitingMember](../resources/cloudlicensing-waitingmember.md) objects for a specific allotment. Use `/users/{userId}/cloudLicensing/waitingMembers` to retrieve all allotments that a specific user is waiting for.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "cloudlicensing-allotment-list-waitingmembers-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/cloudlicensing-allotment-list-waitingmembers-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /admin/cloudLicensing/allotments/{allotmentId}/waitingMembers
GET /users/{userId}/cloudLicensing/waitingMembers
```

## Optional query parameters

This method supports the `$select`, `$top`, and `$expand` OData query parameters to customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [microsoft.graph.cloudLicensing.waitingMember](../resources/cloudlicensing-waitingmember.md) objects in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_waitingmember",
  "sampleKeys": ["rkocgef3dgjhnu3gmu2mqhbdbmwcymnf6fk3k6a7zbui5e7gfpmi"]
}
-->
``` http
GET https://graph.microsoft.com/beta/admin/cloudLicensing/allotments/rkocgef3dgjhnu3gmu2mqhbdbmwcymnf6fk3k6a7zbui5e7gfpmi/waitingMembers
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
      "waitingSinceDateTime": "2024-09-22T17:11:10.6635939+00:00"
    }
  ]
}
```
