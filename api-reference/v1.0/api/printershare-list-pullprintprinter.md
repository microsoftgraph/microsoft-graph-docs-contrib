---
title: "Get pullPrintPrinter for printerShare"
description: "Get the pullPrintPrinter that is associated with a printerShare."
author: nilakhan
ms.date: 09/23/2026
ms.localizationpriority: medium
ms.subservice: universal-print
doc_type: apiPageType
---

# Get pullPrintPrinter for printerShare

Namespace: microsoft.graph

Get the [pullPrintPrinter](../resources/pullprintprinter.md) that is associated with a [printerShare](../resources/printershare.md).

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "printershare_list_pullprintprinter"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/printershare-list-pullprintprinter-permissions.md)]

[!INCLUDE [rbac-universal-print-admin](../includes/rbac-for-apis/rbac-universal-print-apis-admin.md)]

> [!NOTE]
> Delegated calls require both a pull print printer permission and a printer share permission. Choose one permission from each of the following sets:
> * `PullPrintPrinter.Read.All`, `PullPrintPrinter.ReadWrite.All`, or `PullPrintPrinter.FullControl.All`.
> * `PrinterShare.ReadBasic.All`, `PrinterShare.Read.All`, or `PrinterShare.ReadWrite.All`.

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /print/shares/{printerShareId}/pullPrintPrinter
```

## Optional query parameters

This method supports the `$select` [OData query parameter](/graph/query-parameters) to help customize the response.

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [pullPrintPrinter](../resources/pullprintprinter.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_pullprintprinter_2"
}
-->
``` http
GET https://graph.microsoft.com/v1.0/print/shares/b1c2d3e4-5555-6666-7777-888899990000/pullPrintPrinter
```

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "name": "list_pullprintprinter_2",
  "truncated": true,
  "@odata.type": "microsoft.graph.pullPrintPrinter"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.pullPrintPrinter",
  "id": "15037699-acf2-2dbb-b20c-897053051345",
  "displayName": "Contoso Pull Print - Building 5",
  "isAcceptingJobs": true,
  "registeredDateTime": "2026-08-03T18:00:05Z",
  "includeAllPrinters": false
}
```
