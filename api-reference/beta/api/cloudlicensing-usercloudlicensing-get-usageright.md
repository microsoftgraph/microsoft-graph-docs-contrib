---
title: "Get user usageRight"
description: "Get the properties and relationships of a usageRight object granted to a user."
author: "patrick-starrin"
ms.localizationpriority: medium
doc_type: apiPageType
---

# Get user usageRight

Namespace: microsoft.graph.cloudLicensing

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the properties and relationships of a [usageRight](../resources/cloudlicensing-usageright.md) object granted to a user.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "cloudlicensing_userusageright_get"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/cloudlicensing-userusageright-get-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /me/cloudLicensing/usageRights/{usageRightId}
GET /users/{userId}/cloudLicensing/usageRights/{usageRightId}
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

If successful, this method returns a `200 OK` response code and a [microsoft.graph.cloudLicensing.usageRight](../resources/cloudlicensing-usageright.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "cloudlicensing-userusageright-get-example",
  "sampleKeys": ["48fbdf70-9e09-40df-9dbe-17af483ab113","i6sq63x2vd3esbkifv7m42xdaugc6lfpqf3ozgvdlvk3ttnamby3"]
}
-->
``` http
GET https://graph.microsoft.com/beta/users/48fbdf70-9e09-40df-9dbe-17af483ab113/cloudLicensing/usageRights/i6sq63x2vd3esbkifv7m42xdaugc6lfpqf3ozgvdlvk3ttnamby3
```

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.cloudLicensing.usageRight"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.cloudLicensing.usageRight",
  "id": "1e373a1d-1f05-28cf-bfc0-ee0ecfd3db15",
  "skuId": "639dec6b-bb19-468b-871c-c5c441c4b0cb",
  "skuPartNumber": "Microsoft_365_Copilot",
  "services": [
    {
      "@odata.type": "microsoft.graph.cloudLicensing.service",
      "assignableTo": "user,group",
      "planId": "fe6c28b3-d468-44ea-bbd0-a10a5167435c",
      "planName": "COPILOT_STUDIO_IN_COPILOT_FOR_M365"
    }
  ]
}
```
