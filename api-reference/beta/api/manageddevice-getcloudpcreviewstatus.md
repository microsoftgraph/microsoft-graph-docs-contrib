---
title: "managedDevice: getCloudPcReviewStatus"
description: "Get the review status of a specific Cloud PC device."
author: "yayang3"
ms.localizationpriority: medium
ms.prod: "cloud-pc"
doc_type: apiPageType
---

# managedDevice: getCloudPcReviewStatus

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the review status of a specific Cloud PC device.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|CloudPC.Read.All, CloudPC.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|CloudPC.Read.All, CloudPC.ReadWrite.All|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /deviceManagement/managedDevices/{managedDeviceId}/getCloudPcReviewStatus
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this function returns a `200 OK` response code and a [cloudPcReviewStatus](../resources/cloudpcreviewstatus.md) object in the response body.

## Examples

### Request

The following is an example of a request.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "manageddevicethis.getcloudpcreviewstatus"
}
-->
``` http
GET https://graph.microsoft.com/beta/deviceManagement/managedDevices/185f01c2de954929afb129392e5d9f47/getCloudPcReviewStatus
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/manageddevicethisgetcloudpcreviewstatus-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/manageddevicethisgetcloudpcreviewstatus-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/manageddevicethisgetcloudpcreviewstatus-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/manageddevicethisgetcloudpcreviewstatus-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/manageddevicethisgetcloudpcreviewstatus-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following is an example of the response.

<!-- {
  "blockType": "response",
  "@odata.type": "microsoft.graph.cloudPcReviewStatus",
  "name": "manageddevicethis.getcloudpcreviewstatus"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.type": "microsoft.graph.cloudPcReviewStatus",
    "inReview": true,
    "userAccessLevel": "restricted",
    "reviewStartDateTime": "2022-02-15T06:52:34Z",
    "restorePointDateTime": "2022-02-15T07:05:03Z",
    "subscriptionId": "f68bd846-16ad-4b51-a7c6-c84944a3367c",
    "subscriptionName": "deschutes-INT-DR-test",
    "azureStorageAccountId": "/subscriptions/f68bd846-16ad-4b51-a7c6-c84944a3367c/resourceGroups/Review/providers/Microsoft.Storage/storageAccounts/snapshotsUnderReview",
    "azureStorageAccountName": "snapshotsUnderReview",
    "azureStorageContainerName": "snapshotsContainer"
}
```

