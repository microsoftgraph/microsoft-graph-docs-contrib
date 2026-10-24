---
title: "Get driver update device status"
description: "Get a per-device rollout status for a driver or firmware update."
author: "arorariya"
ms.date: 09/21/2026
ms.localizationpriority: medium
ms.subservice: "windows-autopatch"
doc_type: apiPageType
---

# Get driver update device status

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a [driverUpdateDeviceStatus](../resources/windowsupdates-driverupdatedevicestatus.md) resource for a driver or firmware update.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "windowsupdates_driverupdatedevicestatus_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/windowsupdates-driverupdatedevicestatus-get-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /admin/windows/updates/data/drivers/{driverUpdateReportId}/deviceStatuses/{driverUpdateDeviceStatusId}
```

## Optional query parameters

This method supports the `$select` OData query parameter. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [microsoft.graph.windowsUpdates.driverUpdateDeviceStatus](../resources/windowsupdates-driverupdatedevicestatus.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "get_driverupdatedevicestatus"
}
-->
``` http
GET https://graph.microsoft.com/beta/admin/windows/updates/data/drivers/0123456789abcdef0123456789abcdef0123456789abcdef0123456789abcdef/deviceStatuses/0123456789abcdef0123456789abcdef0123456789abcdef0123456789abcdef_66666666-6666-4666-8666-666666666666_11111111-1111-4111-8111-111111111111_22222222-2222-4222-8222-222222222222
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.windowsUpdates.driverUpdateDeviceStatus"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.windowsUpdates.driverUpdateDeviceStatus",
  "id": "0123456789abcdef0123456789abcdef0123456789abcdef0123456789abcdef_66666666-6666-4666-8666-666666666666_11111111-1111-4111-8111-111111111111_22222222-2222-4222-8222-222222222222",
  "aadDeviceId": "66666666-6666-4666-8666-666666666666",
  "policyId": "11111111-1111-4111-8111-111111111111",
  "ringId": "22222222-2222-4222-8222-222222222222",
  "policyName": "Contoso driver policy",
  "ringName": "Broad deployment ring",
  "deviceName": "Contoso-Laptop-01",
  "clientState": "installed",
  "clientSubstate": "updateInstalled",
  "serviceState": "offering",
  "serviceSubstate": "offerReady",
  "lastEventDateTime": "2026-10-01T18:30:00Z"
}
```
