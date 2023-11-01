---
title: "cloudPC: getFrontlineCloudPcAccessState"
description: "Get the access state of a frontline Cloud PC."
author: "ningjingbogithub"
ms.localizationpriority: medium
ms.prod: "cloud-pc"
doc_type: apiPageType
---

# cloudPC: getFrontlineCloudPcAccessState
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the [frontlineCloudPcAccessState](../resources/cloudpc.md#frontlinecloudpcaccessstate-values) of a frontline Cloud PC. 

This API only supports shared-use licenses. For more information, see [cloudPcProvisioningPolicy](../resources/cloudpcprovisioningpolicy.md#cloudpcprovisioningtype-values). Shared-use licenses allow three users per license, with one user signed in at a time. Callers can get the latest frontline Cloud PC **accessState** and determine whether the frontline Cloud PC is accessible to a user. 

If a web client needs to connect to a frontline Cloud PC, the **sharedCloudPcAccessState** validates the bookmark scenario. If **sharedCloudPcAccessState** isn't active/activating/standbyMode, the web client shows a "bad bookmark".

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|CloudPC.Read.All, CloudPC.ReadWrite.All, CloudPC.ReadWrite|
|Delegated (personal Microsoft account)|Not supported.|
|Application|Not supported.|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /me/cloudPCs/{cloudPCId}/getFrontlineCloudPcAccessState
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Don't supply a request body for this method.

## Response

If successful, this function returns a `200 OK` response code and a [frontlineCloudPcAccessState](../resources/cloudpc.md#frontlinecloudpcaccessstate-values) object in the response body.

If the Cloud PC was provisioned as a dedicated device, this method returns a `400 Bad Request` response code.

## Examples

### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "cloudpc.getFrontlineCloudPcAccessState"
}
-->
``` http
GET https://graph.microsoft.com/beta/me/cloudPCs/{cloudPCId}/getFrontlineCloudPcAccessState
```

### Response

The following example shows the response.

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
