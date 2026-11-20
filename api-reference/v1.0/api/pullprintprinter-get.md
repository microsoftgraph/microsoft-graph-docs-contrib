---
title: "Get pullPrintPrinter"
description: "Read the properties and relationships of a pullPrintPrinter object."
author: nilakhan
ms.date: 09/23/2026
ms.localizationpriority: medium
ms.subservice: universal-print
doc_type: apiPageType
---

# Get pullPrintPrinter

Namespace: microsoft.graph

Read the properties and relationships of a [pullPrintPrinter](../resources/pullprintprinter.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "pullprintprinter_get"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/pullprintprinter-get-permissions.md)]

[!INCLUDE [rbac-universal-print-admin](../includes/rbac-for-apis/rbac-universal-print-apis-admin.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /print/pullPrintPrinters/{pullPrintPrinterId}
GET /print/operations/{printOperationId}/pullPrintPrinter
```

## Optional query parameters

This method supports the `$select` and `$expand` [OData query parameters](/graph/query-parameters) to help customize the response. `$expand` supports only the **shares** relationship.

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
  "name": "get_pullprintprinter"
}
-->
``` http
GET https://graph.microsoft.com/v1.0/print/pullPrintPrinters/15037699-acf2-2dbb-b20c-897053051345
```

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "name": "get_pullprintprinter",
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
