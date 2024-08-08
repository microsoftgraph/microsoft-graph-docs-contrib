---
title: "Get approvalSolution"
description: "Read the properties of an approvalSolution object to determine the provisioning state for a tenant."
author: "asgautam1997"
ms.localizationpriority: medium
ms.subservice: "approvals"
doc_type: apiPageType
---

# Get approvalSolution

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties of an [approvalSolution](../resources/approvalsolution.md) object to determine the [provisioning](../api/approvalsolution-provision.md) state for a tenant.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "approvalsolution-get-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/approvalsolution-get-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /solutions/approval
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

If successful, this method returns a `200 OK` response code and an [approvalSolution](../resources/approvalsolution.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "get_approvalsolution"
}
-->
``` http
GET https://graph.microsoft.com/beta/solutions/approval
```


### Response

The following example shows the response.
> **Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.approvalSolution"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "provisioningStatus": "provisioningCompleted"
}
```

