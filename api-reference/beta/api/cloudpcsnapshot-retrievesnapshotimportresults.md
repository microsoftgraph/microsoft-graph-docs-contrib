---
title: "cloudPCSnapshot: retrieveSnapshotImportResult"
description: "Retrieve the result and status of the snapshot import action."
author: "hyc3z"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: apiPageType
ms.date: 10/10/2025
---

# cloudPCSnapshot: retrieveSnapshotImportResult
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve the result and status of the [snapshot](../resources/cloudpcsnapshot.md) import action.

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "cloudpcsnapshot_retrievesnapshotimportresults" } -->
[!INCLUDE [permissions-table](../includes/permissions/cloudpcsnapshot-retrievesnapshotimportresults-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /deviceManagement/virtualEndpoint/snapshots/retrieveSnapshotImportResult(snapshotId='{snapshotId}')
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Function Parameters
In the request URL, provide the following function parameters with values.

| Parameter     | Type           | Description                               |
|:--------------|:---------------|:------------------------------------------|
| snapshotId    | String         | The unique identifier for the snapshot.   |

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [cloudPcSnapshotImportActionResult](../resources/cloudpcsnapshotimportactionresult.md) object in the response body.

## Examples

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_retrievesnapshotimportresults"
}
-->
``` http
GET https://graph.microsoft.com/beta/deviceManagement/virtualEndpoint/snapshots/retrieveSnapshotImportResult(snapshotId='7e8c3054-bda1-4e37-81c5-7d1b080a8849')
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-retrievesnapshotimportresults-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-retrievesnapshotimportresults-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-retrievesnapshotimportresults-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-retrievesnapshotimportresults-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-retrievesnapshotimportresults-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-retrievesnapshotimportresults-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-retrievesnapshotimportresults-python-snippets.md)]
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

