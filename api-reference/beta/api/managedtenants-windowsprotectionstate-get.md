---
title: "Get windowsProtectionState"
description: "Read the properties and relationships of a windowsProtectionState object."
author: "idwilliams"
ms.localizationpriority: medium
ms.subservice: "m365-lighthouse"
doc_type: apiPageType
ms.date: 04/04/2024
---

# Get windowsProtectionState
Namespace: microsoft.graph.managedTenants

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [windowsProtectionState](../resources/managedtenants-windowsprotectionstate.md) object.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "managedtenants_windowsprotectionstate_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/managedtenants-windowsprotectionstate-get-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /tenantRelationships/managedTenants/windowsProtectionStates/{windowsProtectionStateId}
```

## Optional query parameters
This method supports the [OData query parameters](/graph/query-parameters) to help customize the response, including `$apply`, `$count`, `$filter`, `$orderby`, `$select`, `$skip`, and `$top`.

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [windowsProtectionState](../resources/managedtenants-windowsprotectionstate.md) object in the response body.

## Examples

### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_windowsprotectionstate"
}
-->
``` http
GET https://graph.microsoft.com/beta/tenantRelationships/managedTenants/windowsProtectionStates/{windowsProtectionStateId}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-windowsprotectionstate-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/get-windowsprotectionstate-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-windowsprotectionstate-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-windowsprotectionstate-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-windowsprotectionstate-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-windowsprotectionstate-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-windowsprotectionstate-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-windowsprotectionstate-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.managedTenants.windowsProtectionState"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#tenantRelationships/managedTenants/windowsProtectionStates/$entity",
    "id": "34298981-4fc8-4974-9486-c8909ed1521b_95378ac4-eded-4671-8fa2-4e42e5de3463",
    "managedDeviceId": "95378ac4-eded-4671-8fa2-4e42e5de3463",
    "managedDeviceName": "vm11",
    "malwareProtectionEnabled": true,
    "managedDeviceHealthState": "Clean",
    "realTimeProtectionEnabled": true,
    "networkInspectionSystemEnabled": true,
    "quickScanOverdue": false,
    "fullScanOverdue": false,
    "signatureUpdateOverdue": false,
    "rebootRequired": false,
    "attentionRequired": false,
    "fullScanRequired": false,
    "engineVersion": "1.1.18300.4",
    "signatureVersion": "1.343.642.0",
    "antiMalwareVersion": "4.18.2106.6",
    "lastQuickScanDateTime": "2021-06-24T14:50:28Z",
    "lastFullScanDateTime": null,
    "lastQuickScanSignatureVersion": "1.341.1288.0",
    "lastFullScanSignatureVersion": "0.0.0.0",
    "lastReportedDateTime": "2021-07-09T14:43:45Z",
    "devicePropertiesRefreshTime": "2021-07-09T14:44:28Z",
    "deviceDeleted": false,
    "lastRefreshedDateTime": "2021-07-11T02:02:35.9816065Z",
    "tenantId": "34298981-4fc8-4974-9486-c8909ed1521b",
    "tenantDisplayName": "Fourth Coffee",
    "devicePropertiesRefreshDateTime": "2021-07-09T14:44:28Z"
}
```
