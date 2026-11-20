---
title: "Get pullPrintPrinterCreateOperation"
description: "Get a pullPrintPrinterCreateOperation object to monitor the status of a pullPrintPrinter creation operation."
author: nilakhan
ms.date: 08/05/2026
ms.localizationpriority: medium
ms.subservice: universal-print
doc_type: apiPageType
---

# Get pullPrintPrinterCreateOperation

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a [pullPrintPrinterCreateOperation](../resources/pullprintprintercreateoperation.md) object to monitor the status of a [pullPrintPrinter](../resources/pullprintprinter.md) creation operation.

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "pullprintprintercreateoperation_get"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/pullprintprintercreateoperation-get-permissions.md)]

[!INCLUDE [rbac-universal-print-read-operations](../includes/rbac-for-apis/rbac-universal-print-apis-read-operations.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /print/operations/{printOperationId}
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

If successful, this method returns a `200 OK` response code and a [pullPrintPrinterCreateOperation](../resources/pullprintprintercreateoperation.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "get_pullprintprintercreateoperation"
}
-->
``` http
GET https://graph.microsoft.com/beta/print/operations/f0d0f0f0-1234-5678-9abc-def012345678
```

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "name": "get_pullprintprintercreateoperation",
  "truncated": true,
  "@odata.type": "microsoft.graph.pullPrintPrinterCreateOperation"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.pullPrintPrinterCreateOperation",
  "id": "f0d0f0f0-1234-5678-9abc-def012345678",
  "status": {
    "state": "succeeded",
    "description": "The pull print printer was created"
  },
  "createdDateTime": "2026-08-03T18:00:00Z",
  "pullPrintPrinter": {
    "@odata.type": "#microsoft.graph.pullPrintPrinter",
    "id": "15037699-acf2-2dbb-b20c-897053051345",
    "displayName": "Contoso Pull Print - Building 5",
    "isAcceptingJobs": true,
    "registeredDateTime": "2026-08-03T18:00:05Z",
    "includeAllPrinters": false
  }
}
```
