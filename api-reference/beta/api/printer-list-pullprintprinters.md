---
title: "List pullPrintPrinters for printer"
description: "Get the pullPrintPrinter objects that a printer is a member of."
author: nilakhan
ms.date: 08/05/2026
ms.localizationpriority: medium
ms.subservice: universal-print
doc_type: apiPageType
---

# List pullPrintPrinters for printer

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the [pullPrintPrinter](../resources/pullprintprinter.md) objects that a [printer](../resources/printer.md) is a member of.
## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "printer_list_pullprintprinters"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/printer-list-pullprintprinters-permissions.md)]

[!INCLUDE [rbac-universal-print-scoped-admin](../includes/rbac-for-apis/rbac-universal-print-apis-scoped-admin.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /print/printers/{printerId}/pullPrintPrinters
```

## Optional query parameters

This method doesn't support the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [pullPrintPrinter](../resources/pullprintprinter.md) objects in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_pullprintprinter_1"
}
-->
``` http
GET https://graph.microsoft.com/beta/print/printers/d5f2a1b0-1111-2222-3333-444455556666/pullPrintPrinters
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "name": "list_pullprintprinter_1",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.pullPrintPrinter)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.pullPrintPrinter",
      "id": "15037699-acf2-2dbb-b20c-897053051345",
      "displayName": "Contoso Pull Print - Building 5",
      "isAcceptingJobs": true,
      "registeredDateTime": "2026-08-03T18:00:05Z",
      "includeAllPrinters": false
    }
  ]
}
```
