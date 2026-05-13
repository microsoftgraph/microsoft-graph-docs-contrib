---
title: "cloudPCSnapshot: importSnapshot"
description: "Import the snapshot from the customer-managed storage account using the provided information, and store it in the Azure storage account within the Cloud PC service on behalf of the customer."
author: "hyc3z"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: apiPageType
ms.date: 10/10/2025
---

# cloudPCSnapshot: importSnapshot
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Import the [snapshot](../resources/cloudpcsnapshot.md) from the customer-managed storage account using the provided information, and store it in the Azure storage account within the Cloud PC service on behalf of the customer. 

To provision a new Cloud PC for a licensed user, import a valid .vhd snapshot from a customer-managed storage account into the Azure storage account used by the Cloud PC service.

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "cloudpcsnapshot_importsnapshot" } -->
[!INCLUDE [permissions-table](../includes/permissions/cloudpcsnapshot-importsnapshot-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /deviceManagement/virtualEndpoint/snapshots/importSnapshot
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the parameters.

The following table shows the parameters that can be used with this method.

| Parameter | Type | Description |
|:---|:---|:---|
| assignedUserId     | String   | The unique identifier of the user assigned to the snapshot, who uses the imported snapshot to provision a new Cloud PC. |
| sourceFiles   | [cloudPcSnapshotImportActionDetail](../resources/cloudpcsnapshotimportactiondetail.md) collection  |Detailed source information for the files to be imported. |

## Response

If successful, this method returns a `200 OK` response code and a [cloudPcSnapshotImportActionResult](../resources/cloudpcsnapshotimportactionresult.md) object in the response body.

## Examples

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "post_importsnapshot"
}
-->
``` http
POST https://graph.microsoft.com/beta/deviceManagement/virtualEndpoint/snapshots/importSnapshot
Content-Type: application/json

{
  "sourceFiles": [
    {
      "sourceType": "azureStorageAccount",
      "fileType": "dataFile",
      "storageBlobInfo": {
        "storageAccountId": "/subscriptions/subscription-id/resourceGroups/resource-group-name/providers/Microsoft.Storage/storageAccounts/account-name",
        "containerName": "myContainer",
        "blobName": "snapshotForCloudPc.vhd"
      }
    },
    {
      "sourceType": "azureStorageAccount",
      "fileType": "virtualMachineGuestState",
      "storageBlobInfo": {
        "storageAccountId": "/subscriptions/subscription-idresourceGroups/resource-group-name/providers/Microsoft.Storage/storageAccounts/account-name",
        "containerName": "myContainer",
        "blobName": "virtualMachineGuestState.vhd"
      }
    }
  ],
  "assignedUserId": "93aff428-61f2-467f-a879-1102af6fd4a8"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/post-importsnapshot-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/post-importsnapshot-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/post-importsnapshot-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/post-importsnapshot-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/post-importsnapshot-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/post-importsnapshot-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.cloudPcSnapshotImportActionResult"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#microsoft.graph.cloudPcSnapshotImportActionResult",
  "filename": "snapshotForCloudPc",
  "usageStatus": "notUsed",
  "importStatus": "inProgress",
  "assignedUserPrincipalName": "snapshot@contoso.com",
  "policyName": "Test_ProvisioningPolicy",
  "startDateTime": "2025-01-13T15:13:14Z",
  "endDateTime": null,
  "additionalDetail": null
}
```

