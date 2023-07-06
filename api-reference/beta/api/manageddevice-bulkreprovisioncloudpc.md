---
title: "managedDevice: bulkReprovisionCloudPc"
description: "Bulk reprovision a set of Cloud PC devices with Intune managed device IDs."
author: "RuiHou105"
ms.localizationpriority: medium
ms.prod: "cloud-pc"
doc_type: apiPageType
---

# managedDevice: bulkReprovisionCloudPc

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Bulk reprovision a set of Cloud PC devices with Intune [managed device](../resources/cloudpc.md) IDs.

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
POST /deviceManagement/managedDevices/bulkReprovisionCloudPc
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the IDs of the Intune managed devices.

The following table shows the properties that are required when you bulk reprovision a set of Cloud PC devices.

|Property|Type|Description|
|:---|:---|:---|
|managedDeviceIds|Collection(String)|The IDs of the Cloud PC devices.|

## Response

If successful, this action returns a `200 OK` response code and a [cloudPcBulkRemoteActionResult](../resources/cloudpcbulkremoteactionresult.md) object in the response body.

## Examples

### Request


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "managedDevice_bulkReprovisionCloudPc"
}
-->

``` http
POST https://graph.microsoft.com/beta/deviceManagement/managedDevices/bulkReprovisionCloudPc
Content-Type: application/json

{
  managedDeviceIds: ["30d0e128-de93-41dc-89ec-33d84bb662a0", "7c82a3e3-9459-44e4-94d9-b92f93bf78dd"] 
}
```

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/manageddevice-bulkreprovisioncloudpc-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/manageddevice-bulkreprovisioncloudpc-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.cloudPcBulkRemoteActionResult"
}
-->

``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "microsoft.graph.cloudPcBulkRemoteActionResult",
    "successfulDeviceIds": [
        "30d0e128-de93-41dc-89ec-33d84bb662a0"
    ],
    "failedDeviceIds": [
        "7c82a3e3-9459-44e4-94d9-b92f93bf78dd"
    ],
    "notFoundDeviceIds": [
    ],
    "notSupportedDeviceIds": [
    ]
  }
}
```
