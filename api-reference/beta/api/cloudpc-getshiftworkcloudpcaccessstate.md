---
title: "cloudPC: getShiftWorkCloudPcAccessState"
description: "Get the access state of a shift work Cloud PC. Callers can get the latest shift work Cloud PC accessState and determine if the shift work Cloud PC is accessible to the user."
author: "ningjingbogithub"
ms.localizationpriority: medium
ms.prod: "cloud-pc"
doc_type: apiPageType
---

# cloudPC: getShiftWorkCloudPcAccessState
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the [shiftWorkCloudPcAccessState](../resources/cloudpc.md#shiftworkcloudpcaccessstate-values) of a shift work Cloud PC. This API only supports shared-use licenses.
For more information, see [cloudPcProvisioningPolicy] (../resources/cloudpcprovisioningpolicy.md#cloudpcprovisioningtype-values)
Shared-use licenses allow three users per license, with one user logged in at a time. Callers can get the latest shift work Cloud PC accessState and determine if the shift work Cloud PC is accessible to the user. 
If a web client needs to connect to a shift work Cloud PC, the sharedCloudPcAccessState validates the bookmark scenario. If sharedCloudPcAccessState is not active/activating/hibernated, the web client shows a "bad bookmark".

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|CloudPC.Read.All, CloudPC.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|Not supported.|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /me/cloudPCs/{cloudPCId}/getShiftWorkCloudPcAccessState
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this function returns a `200 OK` response code and a [shiftWorkCloudPcAccessState](../resources/cloudpc.md#shiftworkcloudpcaccessstate-values) object in the response body.
If the Cloud PC has been provisioned as a dedicated device, this method returns  `400 Bad request`.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "cloudpc.getShiftWorkCloudPcAccessState"
}
-->
``` http
GET https://graph.microsoft.com/beta/me/cloudPCs/{cloudPCId}/getShiftWorkCloudPcAccessState
```

### Response
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "string"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context":"https://graph.microsoft.com/beta/$metadata#Edm.String",
    "value": "noLicensesAvailable"
}
```

