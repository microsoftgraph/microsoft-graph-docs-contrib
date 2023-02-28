---
title: "cloudPC: getShiftWorkCloudPcAccessState"
description: "This API is used to get the access state of a shift work Cloud PC, caller can use this API to get the latest shift work Cloud PC accessState and determine if this shift work CloudPC is accessible for the user."
author: "ningjingbogithub"
ms.localizationpriority: medium
ms.prod: "cloud-pc"
doc_type: apiPageType
---

# cloudPC: getShiftWorkCloudPcAccessState
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the [shiftWorkCloudPcAccessState](../resources/cloudpc.md#shiftworkcloudpcaccessstate-values) for the shift work cloudPc. This API is only validate for flex(with 'shared' license) Cloud PC.
Shift work Cloud PC is a new type of Cloud PC with new license type "shared" to enable customers' front line. LicenseType see provisioningType property of cloudPcProvisioningPolicy {https://github.com/microsoftgraph/microsoft-graph-docs/blob/2b0ecb6af6272289b8e5c93ee77c364189a426a9/api-reference/beta/resources/cloudpcprovisioningpolicy.md#cloudpcprovisioningtype-values}
When 'shared' license purchased, allows three users per license with one user logged in at a time. This API is used to get the access state of a shift work Cloud PC, caller can use this API to get the latest shift work Cloud PC accessState and determine if this shift work CloudPC is accessible for the user, for accessState, see shiftWorkCloudPcAccessState in cloudpc. 
Current usage: Web Client needs to support shift work Cloud PC connect. SharedCloudPcAccessState is used to validate the bookmark scenario. If the tab is launched and the sharedCloudPcAccessState is not active/activating/hibernated, web client will pop the "Bad bookmark" UI to go back to IWPortal to access the Cloud PC.

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
Fail with 400 when calling it with dedicated Cloud PC.

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

