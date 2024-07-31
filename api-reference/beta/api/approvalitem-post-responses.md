---
title: "Create approvalItemResponse"
description: "Create a new approvalItemResponse object."
author: "asgautam1997"
ms.localizationpriority: medium
ms.subservice: "approvals"
doc_type: apiPageType
---

# Create approvalItemResponse

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [approvalItemResponse](../resources/approvalitemresponse.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "approvalitem-post-responses-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/approvalitem-post-responses-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /solutions/approval/approvalItems/{approvalItemId}/responses
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [approvalItemResponse](../resources/approvalitemresponse.md) object.

You can specify the following properties when creating an **approvalItemResponse**.

|Property|Type|Description|
|:---|:---|:---|
|comments|String|The comment made by the approver. Optional.|
|response|String|The approver response in the response option. Required.|


## Response

If successful, this method returns a `202 Accepted` response code with the operation location in the header.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "create_approvalitemresponse_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/solutions/approval/approvalItems/d3a7405e-452a-47e0-9c35-9335225ba55d/responses
Content-Type: application/json

{
  "response": "Approve",
  "comments": "Approve this request"
}
```


### Response

The following example shows the response.
> **Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 202 Accepted
Location: https://graph.microsoft.com/beta/solutions/approval/operations/1a837203-b794-4cea-8def-47a7d1f89335
```

