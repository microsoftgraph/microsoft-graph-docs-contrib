---
title: "Create pullPrintPrinter"
description: "Create a new pullPrintPrinter object asynchronously."
author: nilakhan
ms.date: 09/23/2026
ms.localizationpriority: medium
ms.subservice: universal-print
doc_type: apiPageType
---

# Create pullPrintPrinter

Namespace: microsoft.graph

Create a new [pullPrintPrinter](../resources/pullprintprinter.md) object asynchronously.

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "print_post_pullprintprinters"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/print-post-pullprintprinters-permissions.md)]

[!INCLUDE [rbac-universal-print-admin](../includes/rbac-for-apis/rbac-universal-print-apis-admin.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /print/pullPrintPrinters
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [pullPrintPrinter](../resources/pullprintprinter.md) object.

You can specify the following properties when you create a **pullPrintPrinter**.

|Property|Type|Description|
|:---|:---|:---|
|displayName|String|A nonempty name for the pull print printer. Required.|
|includeAllPrinters|Boolean|Indicates whether every printer in the tenant is automatically a member of this pull print printer. Optional. The default is `false`. When `false`, [add](../api/pullprintprinter-post-printers.md) specific printers to the **printers** relationship.|

## Response

If successful, this method returns a `202 Accepted` response code and no response body.

The `Location` response header contains the URL of the [pullPrintPrinterCreateOperation](../resources/pullprintprintercreateoperation.md). The legacy `Operation-Location` header is also supported and contains the same URL. The `Retry-After` header specifies the number of seconds to wait before polling.

Use the [Get pullPrintPrinterCreateOperation](../api/pullprintprintercreateoperation-get.md) API at the operation URL to retrieve the operation JSON and monitor its **status**. Observe the `Retry-After` interval when polling and stop when **status.state** is `succeeded` or `failed`. When creation succeeds, use the **pullPrintPrinter** relationship of the operation to [get](../api/pullprintprinter-get.md) the created **pullPrintPrinter** object.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "create_pullprintprinter_from_"
}
-->
``` http
POST https://graph.microsoft.com/v1.0/print/pullPrintPrinters
Content-Type: application/json

{
  "displayName": "Contoso Pull Print - Building 5",
  "includeAllPrinters": false
}
```


### Response

The following example shows the response.
<!-- {
  "blockType": "response",
  "name": "create_pullprintprinter_from_"
}
-->
``` http
HTTP/1.1 202 Accepted
Location: https://graph.microsoft.com/v1.0/print/operations/f0d0f0f0-1234-5678-9abc-def012345678
Operation-Location: https://graph.microsoft.com/v1.0/print/operations/f0d0f0f0-1234-5678-9abc-def012345678
Retry-After: 5
```
