---
title: "cloudPC: retrieveSnapshots"
description: "List all snapshots of a Cloud PC."
author: "doudoujinjin"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: apiPageType
---

# cloudPC: retrieveSnapshots

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

List all [cloudPcSnapshot](../resources/cloudpcsnapshot.md) resources for a Cloud PC.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|CloudPC.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|CloudPC.ReadWrite.All|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

``` http
GET /cloudPCs/{cloudPCId}/retrieveSnapshots
```

## Request headers

|Name        |Description         |
|:---------- |:------------------ |
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a list of [cloudPcSnapshot](../resources/cloudpcsnapshot.md) object in the response body.

## Examples

### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "cloudpc.retrieveSnapshots"
}
-->

``` http
GET https://graph.microsoft.com/beta/cloudPCs/b0a9cde2-e170-4dd9-97c3-ad1d3328a711/retrieveSnapshots
```

### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.cloudPcSnapshot)"
}
-->

``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#Collection(microsoft.graph.cloudPcSnapshot)",
  "value": [
    {
        "id": "CPC_d4cfdeb2-d409-4e97-87ce-618b704d75f1_d95c0bde-485d-400e-9bef-083905e1b768",
        "cloudPcId": "d8b39ec3-03c9-457f-824e-25f48197cec6",
        "status": "ready",
        "createdDateTime": "2024-08-19T14:05:17.2480723Z",
        "lastRestoredDateTime": null,
        "snapshotType": "automatic",
        "expirationDateTime": null
    },
    {
        "id": "CPC_d4cfdeb2-d409-4e97-87ce-618b704d75f1_423e5d9d-06e0-4b3b-8f0c-80f5a5215a10",
        "cloudPcId": "d8b39ec3-03c9-457f-824e-25f48197cec6",
        "status": "ready",
        "createdDateTime": "2024-08-19T02:05:15.624315Z",
        "lastRestoredDateTime": null,
        "snapshotType": "automatic",
        "expirationDateTime": null
    }
  ]
}
```
