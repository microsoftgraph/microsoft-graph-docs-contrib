---
title: "Get allSitesBackup"
description: "Read the properties and relationships of an allSitesBackup object."
author: "vidula-verma"
ms.date: 10/15/2025
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: apiPageType
---

# Get allSitesBackup

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of an [allSitesBackup](../resources/allsitesbackup.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "allsitesbackup-get-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/allsitesbackup-get-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /solutions/backupRestore/allSitesBackup
```

## Optional query parameters

This method supports the `$select`, `$filter`, `$count`, and `$top` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and an [allSitesBackup](../resources/allsitesbackup.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "get_allsitesbackup"
}
-->
``` http
GET https://graph.microsoft.com/beta/solutions/backupRestore/allSitesBackup
```

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.allSitesBackup"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "/solutions/backupRestore/$metadata#allSitesBackup/$entity",
  "policyId": "89014d8c-71fe-4d00-a01a-31850bc5b32c",
  "status": "disabled",
  "actionOnExistingPolicy": "enableAll",
  "lastRunDateTime": "2025-02-03T00:00:00Z",
  "lastModifiedBy": "fb80ea0c-ecbb-4bb2-b484-37d01f2a776f",
  "lastModifiedDateTime": "2025-09-21T19:09:52.9752849+00:00"
}
```

