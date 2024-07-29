---
title: "approvalSolution: provision"
description: "Provisions an approvalSolution on behalf of a tenant."
author: "asgautam1997"
ms.localizationpriority: medium
ms.subservice: "approvals"
doc_type: apiPageType
---

# approvalSolution: provision

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Provision an [approvalSolution](../resources/approvalsolution.md) on behalf of a tenant.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "approvalsolution-provision-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/approvalsolution-provision-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /solutions/approval/provision
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
  "name": "approvalsolutionthis.provision"
}
-->
``` http
POST https://graph.microsoft.com/beta/solutions/approval/provision
```


### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```

