---
title: "pullPrintPrinter: restoreFactoryDefaults"
description: "Restore the default settings of a pullPrintPrinter to the values specified by the manufacturer."
author: nilakhan
ms.date: 08/05/2026
ms.localizationpriority: medium
ms.subservice: universal-print
doc_type: apiPageType
---

# pullPrintPrinter: restoreFactoryDefaults

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Restore the default settings of a [pullPrintPrinter](../resources/pullprintprinter.md) to the values specified by the manufacturer.

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "pullprintprinter_restorefactorydefaults"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/pullprintprinter-restorefactorydefaults-permissions.md)]

[!INCLUDE [rbac-universal-print-admin](../includes/rbac-for-apis/rbac-universal-print-apis-admin.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /print/pullPrintPrinters/{pullPrintPrinterId}/restoreFactoryDefaults
POST /print/operations/{printOperationId}/pullPrintPrinter/restoreFactoryDefaults
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this action returns a `204 No Content` response code.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "pullprintprinterthis.restorefactorydefaults"
}
-->
``` http
POST https://graph.microsoft.com/beta/print/pullPrintPrinters/15037699-acf2-2dbb-b20c-897053051345/restoreFactoryDefaults
```

### Response

The following example shows the response.
<!-- {
  "blockType": "response",
  "name": "pullprintprinterthis.restorefactorydefaults"
}
-->
``` http
HTTP/1.1 204 No Content
```
