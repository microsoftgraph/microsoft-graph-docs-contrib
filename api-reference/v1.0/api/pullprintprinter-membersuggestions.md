---
title: "pullPrintPrinter: memberSuggestions"
description: "Get a list of printer objects that are eligible candidates to become member printers of a pullPrintPrinter."
author: nilakhan
ms.date: 09/23/2026
ms.localizationpriority: medium
ms.subservice: universal-print
doc_type: apiPageType
---

# pullPrintPrinter: memberSuggestions

Namespace: microsoft.graph

Get a list of [printer](../resources/printer.md) objects that are eligible candidates to become member printers of a [pullPrintPrinter](../resources/pullprintprinter.md).

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "pullprintprinter_membersuggestions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/pullprintprinter-membersuggestions-permissions.md)]

[!INCLUDE [rbac-universal-print-admin](../includes/rbac-for-apis/rbac-universal-print-apis-admin.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /print/pullPrintPrinters/{pullPrintPrinterId}/memberSuggestions
```

## Optional query parameters

This method supports the `$filter`, `$orderby`, `$select`, and `$top` [OData query parameters](/graph/query-parameters) to help customize the response. If more results are available, the response includes a **@odata.nextLink** URL.

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this function returns a `200 OK` response code and a collection of [printer](../resources/printer.md) objects in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "pullprintprinterthis.membersuggestions"
}
-->
``` http
GET https://graph.microsoft.com/v1.0/print/pullPrintPrinters/15037699-acf2-2dbb-b20c-897053051345/memberSuggestions
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "name": "pullprintprinterthis.membersuggestions",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.printer)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.printer",
      "id": "d5f2a1b0-1111-2222-3333-444455556666",
      "displayName": "Contoso Printer - Building 5, Floor 2",
      "manufacturer": "Contoso",
      "model": "C9000",
      "printerProvidedReleaseSupport": {
        "isPullPrintEnabled": true,
        "jobReleaseMethods": "badge,biometrics"
      }
    }
  ]
}
```
