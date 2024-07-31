---
title: "approvalItem: cancel"
description: "Cancel the approval item. The owner of the approval can trigger this endpoint."
author: "asgautam1997"
ms.localizationpriority: medium
ms.subservice: "approvals"
doc_type: apiPageType
---

# approvalItem: cancel

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Cancel the [approval item](../resources/approvalitem.md). The owner of the approval can trigger this endpoint.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "approvalitem-cancel-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/approvalitem-cancel-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /solutions/approval/approvalItems/{approvalItemId}/cancel
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `202 Accepted` response code with the operation location in the header.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "approvalitemthis.cancel"
}
-->
``` http
POST https://graph.microsoft.com/beta/solutions/approval/approvalItems/ad65e077-4920-4bbd-a57e-b7f152958b83/cancel
```


### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 202 Accepted
Location: https://graph.microsoft.com/beta/solutions/approval/operations/1a837203-b794-4cea-8def-47a7d1f89335
```

