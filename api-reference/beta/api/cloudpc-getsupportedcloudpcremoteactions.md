---
title: "cloudPC: getSupportedCloudPcRemoteActions"
description: "Get a list of supported Cloud PC remote actions of a specific Cloud PC device with their action names and capabilities. One use case is to hide the actions that are not in the supported action list and gray out the ones that are currently disabled on the Cloud PC Intune device blade."
author: "Hank Chang"
ms.localizationpriority: medium
ms.prod: "cloud-pc"
doc_type: apiPageType
---

# cloudPC: getSupportedCloudPcRemoteActions

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of supported Cloud PC remote actions of a specific Cloud PC device with their action names and capabilities. One use case is to hide the actions that are not in the supported action list and gray out the ones that are currently disabled on the Cloud PC Intune device blade.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|CloudPC.Read.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|CloudPC.ReadWrite.All|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

``` http
GET /deviceManagement/virtualEndpoint/cloudPCs/{id}/getSupportedCloudPcRemoteActions
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code.

return type: Collection(microsoft.graph.cloudPcRemoteActionCapability)

## Examples

#### Request

The following is an example of a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "cloudpc_getsupportedcloudpcremoteactions"
}
-->

``` http
GET https://graph.microsoft.com/beta/deviceManagement/virtualEndpoint/cloudPCs/831dd62e-cfa1-4d49-a3b4-58d4e9920f8e/getSupportedCloudPcRemoteActions
```
---


#### Response

<!-- {
  "blockType": "response",
  "truncated": true
}
-->

``` http
HTTP/1.1 200 OK
{
    "@odata.context":"https://graph.microsoft.com/beta/$metadata#Collection(microsoft.graph.cloudPcRemoteActionCapability)",
    "value": [
        {
            "actionName": "Restart",
            "actionCapability": "disabled"
        },
        {
            "actionName": "Restore",
            "actionCapability": "disabled"
        },
        {
            "actionName": "Reprovision",
            "actionCapability": "enabled"
        },
        {
            "actionName": "Resize",
            "actionCapability": "disabled"
        },
        {
            "actionName": "PlaceUnderReview",
            "actionCapability": "disabled"
        }
    ]
}
```
