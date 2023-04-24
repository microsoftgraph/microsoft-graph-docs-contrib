---
title: "Get managedDeviceCompliance"
description: "Read the properties and relationships of a managedDeviceCompliance object."
author: "idwilliams"
ms.localizationpriority: medium
ms.prod: "multi-tenant-management"
doc_type: apiPageType
---

# Get managedDeviceCompliance
Namespace: microsoft.graph.managedTenants

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [managedDeviceCompliance](../resources/managedtenants-manageddevicecompliance.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|DeviceManagementManagedDevices.Read.All, DeviceManagementManagedDevices.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|Not supported.|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /tenantRelationships/managedTenants/managedDeviceCompliances/{managedDeviceComplianceId}
```

## Optional query parameters
This method supports the [OData query parameters](/graph/query-parameters) to help customize the response, including `$apply`, `$count`, `$filter`, `$orderBy`, `$select`, `$skip`, and `$top`.

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [managedDeviceCompliance](../resources/managedtenants-manageddevicecompliance.md) object in the response body.

## Examples

### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_manageddevicecompliance"
}
-->
``` http
GET https://graph.microsoft.com/beta/tenantRelationships/managedTenants/managedDeviceCompliances/{managedDeviceComplianceId}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-manageddevicecompliance-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-manageddevicecompliance-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-manageddevicecompliance-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-manageddevicecompliance-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-manageddevicecompliance-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-manageddevicecompliance-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.managedTenants.managedDeviceCompliance"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#tenantRelationships/managedTenants/managedDeviceCompliances/$entity",
    "id": "34298981-4fc8-4974-9486-c8909ed1521b_95378ac4-eded-4671-8fa2-4e42e5de3463",
    "managedDeviceId": "95378ac4-eded-4671-8fa2-4e42e5de3463",
    "managedDeviceName": "vm11",
    "complianceStatus": "Compliant",
    "osDescription": "Windows",
    "osVersion": "10.0.19042.1083",
    "lastSyncDateTime": "2021-07-09T14:41:21.9130091Z",
    "ownerType": "Company",
    "model": "Virtual Machine",
    "manufacturer": "Microsoft Corporation",
    "inGracePeriodUntilDateTime": "9999-12-31T23:59:59.9999999Z",
    "lastRefreshedDateTime": "2021-07-11T07:12:41.0336556Z",
    "deviceType": "WindowsRT",
    "tenantId": "34298981-4fc8-4974-9486-c8909ed1521b",
    "tenantDisplayName": "Fourth Coffee"
}
```
