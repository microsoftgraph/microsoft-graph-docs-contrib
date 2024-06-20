---
title: "cloudPC: retrieveCloudPcRemoteActionResults"
description: "Retrieve remote action results and check the status of a specific remote action performed on an associated Cloud PC device."
author: "Luoyyy"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: apiPageType
---

# cloudPC: retrieveCloudPcRemoteActionResults

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve [remote action results](../resources/cloudpcremoteactionresult.md) and check the status of a specific remote action performed on an associated Cloud PC device.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "cloudpc-retrievecloudpcremoteactionresults" } -->
[!INCLUDE [permissions-table](../includes/permissions/cloudpc-retrievecloudpcremoteactionresults-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

``` http
GET /deviceManagement/virtualEndpoint/cloudPCs/{id}/retrieveCloudPcRemoteActionResults
```

## Request headers

| Name          | Description               |
| :------------ | :------------------------ |
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [cloudPcRemoteActionResult](../resources/cloudpcremoteactionresult.md) objects in the response body.

## Examples

### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "cloudpc_retrievecloudpcremoteactionresults"
}
-->

``` http
GET https://graph.microsoft.com/beta/deviceManagement/virtualEndpoint/cloudPCs/{id}/retrieveCloudPcRemoteActionResults
```

### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.cloudPcRemoteActionResult)"
}
-->

``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#Collection(microsoft.graph.cloudPcRemoteActionResult)",
  "value": [
    {
      "actionName": "Reprovision",
      "actionState": "pending",
      "startDateTime": "2021-04-25T02:04:53.4722004Z",
      "lastUpdatedDateTime": "2021-04-25T02:04:53.4722016Z",
      "cloudPcId": "96b3203b-9dc2-48cb-b1e3-a80822ffffff",
      "managedDeviceId": "8e1a54a7-33f6-4659-86b7-dde7c2ffffff",
      "statusDetails": null,
      "statusDetail": null
    }
  ]
}
```
