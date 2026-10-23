---
title: "Get device profile"
description: "Get device profile and Windows servicing information for a managed device."
author: "arorariya"
ms.date: 09/21/2026
ms.localizationpriority: medium
ms.subservice: "windows-autopatch"
doc_type: apiPageType
---

# Get device profile

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a [deviceProfile](../resources/windowsupdates-deviceprofile.md) resource and its Windows servicing information.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "windowsupdates-deviceprofile-get-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/windowsupdates-deviceprofile-get-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /admin/windows/updates/data/deviceProfiles/{deviceProfileId}
GET /admin/windows/updates/data/policyAssignments/{policyAssignmentId}/deviceProfile
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

If successful, this method returns a `200 OK` response code and a [microsoft.graph.windowsUpdates.deviceProfile](../resources/windowsupdates-deviceprofile.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "get_deviceprofile"
}
-->
``` http
GET https://graph.microsoft.com/beta/admin/windows/updates/data/deviceProfiles/b6fcfab9-2072-f786-c582-cc5d457659a3
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.windowsUpdates.deviceProfile"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.windowsUpdates.deviceProfile",
  "id": "b6fcfab9-2072-f786-c582-cc5d457659a3",
  "deviceName": "Contoso-Laptop-01",
  "osBuild": "26100.4202",
  "osStatus": "inServicing",
  "osVersion": "Windows 11, version 24H2",
  "azureAdDeviceId": "66666666-6666-4666-8666-666666666666",
  "serialNumber": "SN-1000001",
  "deviceModel": "Surface Laptop 6",
  "hotpatchReadiness": "ready"
}
```
