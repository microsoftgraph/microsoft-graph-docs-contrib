---
title: "cloudPC: bulkResize"
description: "Bulk resize a set of Cloud PC."
author: "Aria Zhang (yuzhang3)"
ms.localizationpriority: medium
ms.prod: "cloud-pc"
doc_type: apiPageType
---

# cloudPC: bulkResize

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Perform bulk resize for a set of [cloudPC](../resources/cloudpc.md) which passed BulkResizePreview (cloudPC: validateBulkResize). If some devices cannot be resized, then they will be marked as resize `failed`, while others will proceed to be `provisioned`.

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
POST /deviceManagement/virtualEndpoint/cloudPCs/bulkResize
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the parameters.

The following table shows the parameters that can be used with this action.

|Property|Type|Description|
|:---|:---|:---|
|cloudPcIds|String collection|The Cloud PC id list for selected Cloud PC devices to be set as pending resize.|
|targetServicePlanId|String|The target service plan id of the resize configuration with new vCPU and storage size.|

## Response

If successful, this method returns a `200 OK` response code and the requested [cloudPcRemoteActionResult](../resources/cloudpcremoteactionresult.md) object collection in the response body.

## Examples

### Request

The following is an example of a request.

<!-- {
  "blockType": "request",
  "name": "cloudpc.bulkResize"
}
-->
``` http
POST https://graph.microsoft.com/beta/deviceManagement/virtualEndpoint/cloudPCs/bulkResize
Content-Type: application/json

{
  "cloudPcIds": [
    "30d0e128-de93-41dc-89ec-33d84bb662a0", 
    "7c82a3e3-9459-44e4-94d9-b92f93bf78dd"
  ],
  "targetServicePlanId": "662009bc-7732-4f6f-8726-25883518b33e"
}
```

### Response

The following is an example of the response.

<!-- {
  "blockType": "response",
  "@odata.type": "Collection(microsoft.graph.cloudPcRemoteActionResult)",
  "name": "cloudpc.bulkResize"
}
-->

``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "value": [
      {
        "@odata.type":"https://graph.microsoft.com/beta/$metadata#microsoft.graph.cloudPcBulkRemoteActionResult",
        "actionName": "Resize",
        "actionState": "pending",
        "startDateTime": "2021-06-23T09:28:32.8260335Z",
        "lastUpdatedDateTime": "2021-06-23T09:28:32.8260338Z",
        "cloudPcId": "30d0e128-de93-41dc-89ec-33d84bb662a0",
        "managedDeviceId": "bdc8e6dd-0455-4412-83d9-c818664fe1f1",
        "statusDetails": null
      },
      {
        "@odata.type":"https://graph.microsoft.com/beta/$metadata#microsoft.graph.cloudPcBulkRemoteActionResult",
        "actionName": "Resize",
        "actionState": "failed",
        "startDateTime": "2021-06-23T09:28:32.8260335Z",
        "lastUpdatedDateTime": "2021-06-23T09:28:32.8260338Z",
        "cloudPcId": "7c82a3e3-9459-44e4-94d9-b92f93bf78dd",
        "managedDeviceId": "e87f50c7-fa7f-4687-aade-dd45f3d65970",
        "statusDetails": null
      }
    ]
}
```