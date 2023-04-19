---
title: "managedDevice: getCloudPcRemoteActionResults"
description: "Check the Cloud PC-specified remote action status for a Cloud PC device."
author: "RuiHou105"
ms.localizationpriority: medium
ms.prod: "cloud-pc"
doc_type: apiPageType
---

# managedDevice: getCloudPcRemoteActionResults

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Check the [Cloud PC-specified remote action results](../resources/cloudpcremoteactionresult.md) for a Cloud PC device. Cloud PC supports reprovision and resize remote actions.

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
GET /deviceManagement/managedDevices/{managedDeviceId}/getCloudPcRemoteActionResults
```

## Request headers

| Name          | Description               |
| :------------ | :------------------------ |
| Authorization | Bearer {token}. Required. |

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [cloudPcRemoteActionResult](../resources/cloudpcremoteactionresult.md) object in the response body.

## Examples

#### Request


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "managedDevice_getCloudPcRemoteActionResults"
}
-->

``` http
GET https://graph.microsoft.com/beta/deviceManagement/managedDevices/{managedDeviceId}/getCloudPcRemoteActionResults
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/manageddevice-getcloudpcremoteactionresults-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/manageddevice-getcloudpcremoteactionresults-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/manageddevice-getcloudpcremoteactionresults-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/manageddevice-getcloudpcremoteactionresults-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/manageddevice-getcloudpcremoteactionresults-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.cloudPcRemoteActionResult"
}
-->

``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#Collection(microsoft.graph.cloudPcRemoteActionResult)",
    "value": [{
        "actionName": "Reprovision",
        "actionState": "pending",
        "startDateTime": "2021-04-25T02:04:53.4722004Z",
        "lastUpdatedDateTime": "2021-04-25T02:04:53.4722016Z",
        "cloudPcId": "96b3203b-9dc2-48cb-b1e3-a80822ffffff",
        "managedDeviceId": "8e1a54a7-33f6-4659-86b7-dde7c2ffffff",
        "statusDetails": null
    }]
}
```
