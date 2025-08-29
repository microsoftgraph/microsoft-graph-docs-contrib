---
title: "List externalPartners"
description: "Get a list of cloudPcExternalPartner objects and their properties."
author: "XunZhangSZ"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: apiPageType
ms.date: 08/22/2025
---

# List externalPartners
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [cloudPcExternalPartner](../resources/cloudpcexternalpartner.md) objects and their properties.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "virtualendpoint_list_externalpartners" } -->
[!INCLUDE [permissions-table](../includes/permissions/virtualendpoint-list-externalpartners-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /deviceManagement/virtualEndpoint/externalPartners
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

If successful, this method returns a `200 OK` response code and a collection of [cloudPcExternalPartner](../resources/cloudpcexternalpartner.md) objects in the response body.

## Examples

### Example 1: Get all external partners

#### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "list_cloudpcexternalpartner_and_properties"
}
-->
``` http
GET https://graph.microsoft.com/beta/deviceManagement/virtualEndpoint/externalPartners
```

#### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.cloudPcExternalPartner",
  "isCollection": true
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#deviceManagement/virtualEndpoint/externalPartners",
  "value": [
    {
      "id": "b3548526-e615-3785-3118-be70b3968ec5",
      "partnerId": "198d7140-80bb-4843-8cc4-811377a49a92",
      "enableConnection": true,
      "lastSyncDateTime": "2020-11-03T12:43:14Z",
      "connectionStatus": "available",
      "statusDetails": "The external partner is available"
    },
    {
      "id": "dc6422cb-3001-45a7-9dcd-21207eea6b0e",
      "partnerId": "459a0e56-da26-4ba1-a729-8eeef733425b",
      "enableConnection": true,
      "lastSyncDateTime": "2020-11-03T12:43:14Z",
      "connectionStatus": "available",
      "statusDetails": "The external partner is available"
    }
  ]
}
```

### Example 2: Use $select to get all external partners

#### Request

The following example shows a request.


<!-- {
  "blockType": "request",
  "name": "list_cloudpcexternalpartner_usingselect"
}
-->
``` http
GET https://graph.microsoft.com/beta/deviceManagement/virtualEndpoint/externalPartners?$select=id,partnerId,enableConnection
```

#### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.cloudPcExternalPartner",
  "isCollection": true
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#deviceManagement/virtualEndpoint/externalPartners(id,partnerId,enableConnection)",
  "value": [
    {
      "id": "b3548526-e615-3785-3118-be70b3968ec5",
      "partnerId": "198d7140-80bb-4843-8cc4-811377a49a92",
      "enableConnection": true
    },
    {
      "id": "dc6422cb-3001-45a7-9dcd-21207eea6b0e",
      "partnerId": "459a0e56-da26-4ba1-a729-8eeef733425b",
      "enableConnection": true
    }
  ]
}
```
