---
title: "Delete protectionPolicyBase"
description: "Delete a protection policy"
author: "tushar20"
ms.reviewer: "manikantsinghms"
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: apiPageType
---
# Delete protectionPolicyBase

Namespace: microsoft.graph

Delete a protection policy. Read the properties and relationships of a [protectionPolicyBase](../resources/protectionpolicybase.md) object.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "protectionpolicybase_delete" } -->
[!INCLUDE [permissions-table](../includes/permissions/protectionpolicybase-delete-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
DELETE /solutions/backupRestore/protectionPolicies/{protectionPolicyBaseId}
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "delete_protectionpolicybase"
}
-->
``` http
DELETE https://graph.microsoft.com/v1.0/solutions/backupRestore/protectionPolicies/61633878-8321-4950-bfaf-ed285bdd1461
Authorization: Bearer <Access-Token>
```

### Response

The following example shows the response.
<!-- {
  "blockType": "response"
}
-->
``` http
HTTP/1.1 204 No Content
```
