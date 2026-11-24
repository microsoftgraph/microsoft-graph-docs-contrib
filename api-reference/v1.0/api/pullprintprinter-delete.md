---
title: "Delete pullPrintPrinter"
description: "Delete a pullPrintPrinter."
author: nilakhan
ms.date: 09/23/2026
ms.localizationpriority: medium
ms.subservice: universal-print
doc_type: apiPageType
---

# Delete pullPrintPrinter

Namespace: microsoft.graph

Delete a [pullPrintPrinter](../resources/pullprintprinter.md).

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "pullprintprinter_delete"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/pullprintprinter-delete-permissions.md)]

[!INCLUDE [rbac-universal-print-admin](../includes/rbac-for-apis/rbac-universal-print-apis-admin.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
DELETE /print/pullPrintPrinters/{pullPrintPrinterId}
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `204 No Content` response code and no response body.

## Examples

### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "delete_pullprintprinter"
}
-->
``` http
DELETE https://graph.microsoft.com/v1.0/print/pullPrintPrinters/15037699-acf2-2dbb-b20c-897053051345
```

### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "name": "delete_pullprintprinter"
}
-->
``` http
HTTP/1.1 204 No Content
```
