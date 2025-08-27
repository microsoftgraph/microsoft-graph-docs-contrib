---
title: "List restorePoints"
description: "Get a list of restorePoint objects and their properties."
author: "tushar20"
ms.reviewer: "manikantsinghms"
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: resourcePageType
ms.date: 08/28/2024
---

# List restorePoints

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of [restorePoint](../resources/restorepoint.md) objects and their properties. 

> **Note:** This API returns a maximum of five **restorePoint** objects. If you don't include the `orderBy` parameter, the five most recent restore points are returned.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

|Permission type|Least privileged permission|Higher privileged permissions|
|:---|:---|:---|
|Delegated (work or school account)|BackupRestore-Restore.Read.All|BackupRestore-Restore.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|Not supported.|
|Application|BackupRestore-Restore.Read.All|BackupRestore-Restore.ReadWrite.All|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /solutions/backupRestore/restorePoints?$expand=protectionUnit($filter=id eq '{ProtectionUnitID}')&$filter=protectionDateTime lt YYYY-MM-DDTHH:mm:ssZ
```

## Optional query parameters

This method supports the `$expand`, `$filter` and `orderBy` [OData query parameters](/graph/query-parameters), as shown in the [example](../api/backuprestoreroot-list-restorepoints.md#request) later in this topic.

The `$expand` and `$filter` query parameters are required.

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [restorePoint](../resources/restorepoint.md) object in the response body.

For a list of possible error responses, see [Backup Storage API error responses](/graph/backup-storage-error-codes).

## Examples

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_restorepoint"
}
-->
``` http
GET https://graph.microsoft.com/beta/solutions/backupRestore/restorePoints?$expand=protectionUnit($filter=id eq 'd234cf54-e0fb-49b7-9c8a-5bcd1439e853')&$filter=protectionDateTime lt 2024-05-12T10:01:00Z
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-restorepoint-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-restorepoint-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-restorepoint-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-restorepoint-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-restorepoint-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-restorepoint-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-restorepoint-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.restorePoint)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "/solutions/backupRestore/restorePoints",
  "@odata.nextLink": "https://graph.microsoft.com/beta/solutions/backupRestore/restorePoints?$skiptoken=M2UyZDAwMDAwMDMxMzkzYTMyNjQ2MTM0NjMzMjM5NjYzNjY0k2NDUwOTgzMg%3d%3d",
  "value": [
    {
      "@odata.type": "#microsoft.graph.restorePoint",
      "id": "cdf4a823-sfde-ki2s-kmsj-clu2nsdkk2as",
      "protectionDateTime": "2023-01-01T00:00:00Z",
      "expirationDateTime": "2024-01-01T00:00:00Z",
      "protectionUnit": {
        "@odata.type": "#microsoft.graph.siteProtectionUnit",
        "id": "32514d8c-71fe-4d00-a01a-31850bc5b32c",
        "siteId": "contoso-jpn.sharepoint.com,da60e844-ba1d-49bc-b4d4-d5e36bae9019,0271110f-634f-4300-a841-3a8a2e851852",
        "policyId": "9fec8e78-bce4-4aaf-ab1b-5451cc387264"
      },
      "tags": "fastRestore" // Newly Added
    },
    {
      "@odata.type": "#microsoft.graph.restorePoint",
      "id": "cdf4a823-sfde-ki2s-kmsj-clu2nsdk43as",
      "protectionDateTime": "2023-01-01T00:00:00Z",
      "expirationDateTime": "2024-01-01T00:00:00Z",
      "protectionUnit": {
        "@odata.type": "#microsoft.graph.siteProtectionUnit",
        "id": "17014d8c-71fe-4d00-a01a-31850bc5b32c",
        "siteId": "contoso-jpn.sharepoint.com,da60e844-ba1d-49bc-b4d4-d5e36bae9019,0271110f-634f-4300-a841-3a8a2e851861",
        "policyId": "9fec8e78-bce4-4aaf-ab1b-5451cc387264"
      },
      "tags": "fastRestore" // Newly Added
    },
    {
      "@odata.type": "#microsoft.graph.restorePoint",
      "id": "cdf4a823-sfde-ki2s-kmsj-clu2nsdk43ga",
      "protectionDateTime": "2023-01-07T00:00:00Z",
      "expirationDateTime": "2024-01-07T00:00:00Z",
      "protectionUnit": {
        "@odata.type": "#microsoft.graph.siteProtectionUnit",
        "id": "23014d8c-71fe-4d00-a01a-31850bc5b42a",
        "siteId": "contoso-jpn.sharepoint.com,da60e844-ba1d-49bc-b4d4-d5e36bae9019,0271110f-634f-4300-a841-3a8a2e857893",
        "policyId": "9fec8e78-bce4-4aaf-ab1b-5451cc387264"
      },
      "tags": "fastRestore" // Newly Added
    }
  ]
}
```
