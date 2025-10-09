---
title: "Get cloudPcExternalPartner"
description: "Read the properties and relationships of a cloudPcExternalPartner object."
author: "XunZhangSZ"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: apiPageType
ms.date: 08/22/2025
---

# Get cloudPcExternalPartner
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [cloudPcExternalPartner](../resources/cloudpcexternalpartner.md) object.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "cloudpcexternalpartner_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/cloudpcexternalpartner-get-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /deviceManagement/virtualEndpoint/externalPartners/{cloudPcExternalPartnerId}
```

## Optional query parameters
This method supports the `$select` and `$filter` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [cloudPcExternalPartner](../resources/cloudpcexternalpartner.md) object in the response body.

## Examples

### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "get_cloudpcexternalpartner"
}
-->
``` http
GET https://graph.microsoft.com/beta/deviceManagement/virtualEndpoint/externalPartners/b3548526-e615-3785-3118-be70b3968ec5
```

### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.cloudPcExternalPartner"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.cloudPcExternalPartner",
  "id": "b3548526-e615-3785-3118-be70b3968ec5",
  "partnerId": "198d7140-80bb-4843-8cc4-811377a49a92",
  "enableConnection": true,
  "lastSyncDateTime": "2020-11-03T12:43:14Z",
  "connectionStatus": "available",
  "statusDetails": "The external partner is available"
}
```
