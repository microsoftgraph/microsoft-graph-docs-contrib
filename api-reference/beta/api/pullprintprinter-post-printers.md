---
title: "Add printer"
description: "Add an existing printer to the printers relationship of a pullPrintPrinter."
author: nilakhan
ms.date: 09/15/2026
ms.localizationpriority: medium
ms.subservice: universal-print
doc_type: apiPageType
---

# Add printer

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Add an existing [printer](../resources/printer.md) to the **printers** relationship of a [pullPrintPrinter](../resources/pullprintprinter.md).

To manage an explicit set of member printers, [set](../api/pullprintprinter-update.md) the **includeAllPrinters** property of the pull print printer to `false`.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "pullprintprinter_post_printers"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/pullprintprinter-post-printers-permissions.md)]

[!INCLUDE [rbac-universal-print-admin](../includes/rbac-for-apis/rbac-universal-print-apis-admin.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /print/pullPrintPrinters/{pullPrintPrinterId}/printers/$ref
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply the following property.

|Property|Type|Description|
|:---|:---|:---|
|@odata.id|String|The full URL of the [printer](../resources/printer.md) to add as a member. Required.|

## Response

If successful, this method returns a `204 No Content` response code and no response body.

## Examples

### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "add_printer_to_pullprintprinter"
}
-->
``` http
POST https://graph.microsoft.com/beta/print/pullPrintPrinters/15037699-acf2-2dbb-b20c-897053051345/printers/$ref
Content-Type: application/json

{
  "@odata.id": "https://graph.microsoft.com/beta/print/printers/d5f2a1b0-1111-2222-3333-444455556666"
}
```

### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "name": "add_printer_to_pullprintprinter"
}
-->
``` http
HTTP/1.1 204 No Content
```
