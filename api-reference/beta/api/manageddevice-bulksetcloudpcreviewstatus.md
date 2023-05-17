---
title: "managedDevice: bulkSetCloudPcReviewStatus"
description: "Set the review status of multiple Cloud PC devices with a single request that includes the IDs of Intune managed devices."
author: "yayang3"
ms.localizationpriority: medium
ms.prod: "cloud-pc"
doc_type: apiPageType
---

# managedDevice: bulkSetCloudPcReviewStatus

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Set the review status of multiple Cloud PC devices with a single request that includes the IDs of Intune managed devices.

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
POST /deviceManagement/managedDevices/bulkSetCloudPcReviewStatus
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the parameters.

The following table shows the parameters that can be used with this action.

|Parameter|Type|Description|
|:---|:---|:---|
|managedDeviceIds|String collection|The managed device IDs of the Cloud PC devices.|
|reviewStatus|[cloudPcReviewStatus](../resources/cloudpcreviewstatus.md)|The new review status of the Cloud PC devices. |


## Response

If successful, this action returns a `200 OK` response code and a [cloudPcBulkRemoteActionResult](../resources/cloudpcbulkremoteactionresult.md) object in the response body.

## Examples

### Request

The following is an example of a request.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "manageddevicethis.bulksetcloudpcreviewstatus"
}
-->
``` http
POST https://graph.microsoft.com/beta/deviceManagement/managedDevices/bulkSetCloudPcReviewStatus
Content-Type: application/json

{
  "managedDeviceIds": [
    "30d0e128-de93-41dc-89ec-33d84bb662a0",
    "7c82a3e3-9459-44e4-94d9-b92f93bf78dd"
  ],
  "reviewStatus": {
    "inReview": true,
    "userAccessLevel": "restricted",
    "azureStorageAccountId": "/subscriptions/f68bd846-16ad-4b51-a7c6-c84944a3367c/resourceGroups/Review/providers/Microsoft.Storage/storageAccounts/snapshotsUnderReview"
  }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/manageddevicethisbulksetcloudpcreviewstatus-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/manageddevicethisbulksetcloudpcreviewstatus-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/manageddevicethisbulksetcloudpcreviewstatus-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/manageddevicethisbulksetcloudpcreviewstatus-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/manageddevicethisbulksetcloudpcreviewstatus-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/manageddevicethisbulksetcloudpcreviewstatus-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following is an example of the response.

<!-- {
  "blockType": "response",
  "@odata.type": "microsoft.graph.cloudPcBulkRemoteActionResult",
  "name": "manageddevicethis.bulksetcloudpcreviewstatus"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "microsoft.graph.cloudPcBulkRemoteActionResult",
  "successfulDeviceIds": [
    "30d0e128-de93-41dc-89ec-33d84bb662a0"
  ],
  "failedDeviceIds": [
    "7c82a3e3-9459-44e4-94d9-b92f93bf78dd"
  ],
  "notFoundDeviceIds": [],
  "notSupportedDeviceIds": []
}
```

