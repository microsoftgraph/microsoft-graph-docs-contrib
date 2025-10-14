---
title: "cloudPCSnapshot: PurgeImportedSnapshot"
description: "Delete the unused imported snapshot from Windows 365 service managed storage account."
author: "hyc3z"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: apiPageType
toc.title: Purge imported CloudPC Snapshot
ms.date: 10/10/2025
---

# cloudPCSnapshot: PurgeImportedSnapshot
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

To delete an unused imported snapshot from the Windows 365 service-managed storage, use the purgeImportedSnapshot API. 

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "cloudpcsnapshot_getsubscriptions" } -->
[!INCLUDE [permissions-table](../includes/permissions/cloudpcsnapshot-purgeimportedsnapshot-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST https://graph.microsoft.com/beta/deviceManagement/virtualEndpoint/snapshots/purgeImportedSnapshot
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
In the request body, supply a JSON representation of the parameters.

The following table shows the parameters that can be used with this method.

| Parameter | Type              | Description                                                                                            |
|:----------|:------------------|:-------------------------------------------------------------------------------------------------------|
| snapshotIds   | Collection(String)                                                    | The list of unique identifiers for the imported snapshots.             |


## Response

If successful, this method returns a `204 NO CONTENT` response code.

## Examples

### Request

The following example shows a request.


<!-- {
  "blockType": "request",
  "name": "post_purgeimportedsnapshot"
}
-->
``` http
POST https://graph.microsoft.com/beta/deviceManagement/virtualEndpoint/snapshots/purgeImportedSnapshot

{
    "snapshotIds": [ "7e8c3054-bda1-4e37-81c5-7d1b080a8849", "715c8075-6892-42f3-9550-40b4b48e13d2"]
}
```

---

### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```

