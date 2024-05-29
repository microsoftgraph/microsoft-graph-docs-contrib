---
title: "Get approvalOperation"
description: "Read the properties and relationships of an approvalOperation object."
author: "asgautam1997"
ms.localizationpriority: medium
ms.subservice: "approvals"
doc_type: apiPageType
---

# Get approvalOperation

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of an [approvalOperation](../resources/approvaloperation.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "approvaloperation-get-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/approvaloperation-get-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /solutions/approval/operations/{approvalOperationId}
```

## Optional query parameters

This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and an [approvalOperation](../resources/approvaloperation.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "get_approvaloperation"
}
-->
``` http
GET https://graph.microsoft.com/beta/solutions/approval/operations/1c281a99-f105-4f88-86fa-52d797323908
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.approval.approvalOperation"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://canary.graph.microsoft.com/beta/$metadata#solutions/approval/operations/$entity",
  "createdDateTime": "0001-01-01T00:00:00Z",
  "lastActionDateTime": "0001-01-02T00:00:00Z",
  "status": "succeeded",
  "resourceLocation": "https://canary.graph.microsoft.com/beta/solutions/approval/approvalitems/7d096f68-c4fe-4967-99dc-df0248c33a77",
  "error": null
}
```

