---
title: "printJob: releaseWait"
description: "Get the signed-in user's print jobs that are held for secure release and can be released at the specified physical printer."
author: nilakhan
ms.date: 09/23/2026
ms.localizationpriority: medium
ms.subservice: universal-print
doc_type: apiPageType
---

# printJob: releaseWait

Namespace: microsoft.graph

Get the signed-in user's [printJob](../resources/printjob.md) objects that are held in the cloud for secure release and can be released at the specified physical [printer](../resources/printer.md). The results include eligible jobs submitted to [pullPrintPrinter](../resources/pullprintprinter.md) resources that the specified physical printer is a member of.

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "printjob_releasewait"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/printjob-releasewait-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /print/printers/{printerId}/jobs/releaseWait
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

If successful, this function returns a `200 OK` response code and a collection of [printJob](../resources/printjob.md) objects in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "printjobthis.releasewait"
}
-->
``` http
GET https://graph.microsoft.com/v1.0/print/printers/d5f2a1b0-1111-2222-3333-444455556666/jobs/releaseWait
```

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "name": "printjobthis.releasewait",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.printJob)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.printJob",
      "id": "146",
      "createdDateTime": "2026-08-03T17:45:00Z",
      "status": {
        "state": "pending",
        "description": "The job is waiting to be released",
        "details": ["releaseWait"]
      }
    }
  ]
}
```
