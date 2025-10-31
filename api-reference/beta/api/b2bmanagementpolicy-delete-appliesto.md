---
title: "Remove appliesTo"
description: "Remove a directoryObject object."
author: "akshukla"
ms.date: 10/27/2025
ms.localizationpriority: medium
ms.subservice: "entra-directory-management"
doc_type: apiPageType
---

# Remove appliesTo

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Remove a [directoryObject](../resources/directoryobject.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "b2bmanagementpolicy-delete-appliesto-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/b2bmanagementpolicy-delete-appliesto-permissions.md)]

[!INCLUDE [rbac-b2bmanagementpolicy-apis-write](../includes/rbac-for-apis/rbac-b2bmanagementpolicy-apis-write.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
DELETE /policies/b2bManagementPolicies/{b2bManagementPolicyId}/appliesTo/{id}/$ref
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "delete_appliesto_from_b2bmanagementpolicy"
}
-->
``` http
DELETE https://graph.microsoft.com/beta/policies/b2bManagementPolicies/f596ef0d-42f9-0359-1aaa-12d02b38802a/appliesTo/a6c034b8-621b-dee3-6abb-52cbce801fe9/$ref
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```

