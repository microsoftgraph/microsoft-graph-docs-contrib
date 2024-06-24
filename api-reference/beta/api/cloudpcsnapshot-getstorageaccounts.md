---
title: "cloudPCSnapshot: getStorageAccounts"
description: "List all storage accounts that can be used to store snapshot(s) of a Cloud PC for forensic analysis."
author: "xhan2077"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: apiPageType
---

# Get cloudPcForensicStorageAccount
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

List all storage accounts [cloudPcForensicStorageAccount](../resources/cloudpcforensicstorageaccount.md) that can be used to store a snapshot or snapshots of a Cloud PC for forensic analysis.

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "cloudpcsnapshot_getstorageaccounts" } -->
[!INCLUDE [permissions-table](../includes/permissions/cloudpcsnapshot-getstorageaccounts-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /deviceManagement/virtualEndpoint/snapshots/getStorageAccounts(subscriptionId='{subscriptionId}')
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and zero or more [cloudPcForensicStorageAccount](../resources/cloudpcsnapshot.md) objects in the response body.

## Examples

### Request

The following example shows a request.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_cloudpcforensicstorageaccount"
}
-->
``` http
GET https://graph.microsoft.com/beta/deviceManagement/virtualEndpoint/snapshots/getStorageAccounts(subscriptionId='cb6ad4c4-8a17-4245-a644-e4436b1ee204')
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-cloudpcforensicstorageaccount-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/get-cloudpcforensicstorageaccount-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-cloudpcforensicstorageaccount-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-cloudpcforensicstorageaccount-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-cloudpcforensicstorageaccount-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-cloudpcforensicstorageaccount-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-cloudpcforensicstorageaccount-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-cloudpcforensicstorageaccount-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.cloudPcForensicStorageAccount"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context":"https://graph.microsoft.com/beta/$metadata#cloudPcForensicStorageAccounts",
    "value":[
        {
            "storageAccountId": "/subscriptions/{subscription-id}/resourceGroups/res2627/providers/Microsoft.Storage/storageAccounts/sto1125",
            "storageAccountName":"sto1125"
        },
        {
            "storageAccountId": "/subscriptions/{subscription-id}/resourceGroups/res9407/providers/Microsoft.Storage/storageAccounts/sto8596",
            "storageAccountName":"sto8596"
        }
    ]
}
```

