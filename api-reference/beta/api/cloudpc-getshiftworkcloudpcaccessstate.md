---
title: "cloudPC: getShiftWorkCloudPcAccessState (deprecated)"
description: "Get the access state of a shift work Cloud PC. Callers can get the latest shift work Cloud PC accessState and determine if the shift work Cloud PC is accessible to the user."
author: "ningjingbogithub"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: apiPageType
---

# cloudPC: getShiftWorkCloudPcAccessState (deprecated)
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

> [!CAUTION]
> This API is deprecated and will stop returning data on April 24, 2024. Going forward, use the [getFrontlineCloudPcAccessState](../api/cloudpc-getfrontlinecloudpcaccessstate.md) API.

Get the [shiftWorkCloudPcAccessState](../resources/cloudpc.md#shiftworkcloudpcaccessstate-values-deprecated) of a shift work Cloud PC. 

This API only supports shared-use licenses. For more information, see [cloudPcProvisioningPolicy](../resources/cloudpcprovisioningpolicy.md#cloudpcprovisioningtype-values). Shared-use licenses allow three users per license, with one user signed in at a time. Callers can get the latest shift work Cloud PC **accessState** and determine whether the shift work Cloud PC is accessible to the user. 

If a web client needs to connect to a shift work Cloud PC, the **sharedCloudPcAccessState** validates the bookmark scenario. If **sharedCloudPcAccessState** is not active/activating/standbyMode, the web client shows a "bad bookmark".

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "cloudpc_getshiftworkcloudpcaccessstate" } -->
[!INCLUDE [permissions-table](../includes/permissions/cloudpc-getshiftworkcloudpcaccessstate-permissions.md)]

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
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

## Response

If successful, this function returns a `200 OK` response code and a [shiftWorkCloudPcAccessState](../resources/cloudpc.md#shiftworkcloudpcaccessstate-values-deprecated) object in the response body.

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

