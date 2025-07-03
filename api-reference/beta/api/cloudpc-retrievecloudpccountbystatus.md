---
title: "cloudPC: retrieveCloudPcCountByStatus"
description: "Retrieve the Cloud PC count grouped by status."
author: "ziqifu9527"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: apiPageType
ms.date: 06/05/2025
---

# cloudPC: retrieveCloudPcCountByStatus

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve the [Cloud PC](../resources/cloudpc.md) count grouped by status.

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /deviceManagement/virtualEndpoint/cloudPCs/retrieveCloudPcCountByStatus?customFilter={customFilter}
```

## Function parameters

In the request URL, provide the following parameter with a valid value.

| Parameter | Type   | Description                              |
| :-------- | :----- | :--------------------------------------- |
|customFilter|String| Tailors responses in the same way as the `$filter` query parameter. For more information about how to use the `$filter` query parameter to filter a collection of objects, see [Use the $filter query parameter](/graph/filter-query-parameter).

## Request headers

| Name          | Description               |
| :------------ | :------------------------ |
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [cloudPcStatusSummary](../resources/cloudpcstatussummary.md) objects in the response body.

## Examples

### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "cloudpc_retrievecloudpccountbystatus"
}
-->
``` http
GET https://graph.microsoft.com/beta/deviceManagement/virtualEndpoint/cloudPCs/retrieveCloudPcCountByStatus?customFilter=contains(tolower(managedDeviceName), 'a') or contains(tolower(imageDisplayName), 'a') or contains(tolower(userPrincipalName), 'a')
```

### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.cloudPcStatusSummary)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#Collection(microsoft.graph.cloudPcStatusSummary)",
  "value": [
    {
      "status": "provisioned",
      "count": 22
    },
    {
      "status": "failed",
      "count": 11
    }
  ]
}
```
