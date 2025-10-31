---
title: "Add appliesTo"
description: "Assign directory objects on which b2bManagementPolicy needs to be applied."
author: "akshukla"
ms.date: 10/27/2025
ms.localizationpriority: medium
ms.subservice: "entra-directory-management"
doc_type: apiPageType
---

# Add appliesTo

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Add [directoryObjects](../resources/directoryObject.md) on which [b2bManagementPolicy](../resources/b2bManagementpolicy.md) object needs to be applied. The b2bManagementPolicy can only be applied to [application](../resources/application.md) and [servicePrincipal](../resources/serviceprincipal.md) resources.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "b2bmanagementpolicy-post-appliesto-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/b2bmanagementpolicy-post-appliesto-permissions.md)]

[!INCLUDE [rbac-b2bManagementPolicy-apis-write](../includes/rbac-for-apis/rbac-b2bmanagementpolicy-apis-write.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /policies/b2bManagementPolicies/{b2bManagementPolicyId}/appliesTo/$ref
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [directoryObject](../resources/directoryobject.md) object.

## Response

If successful, this method returns a `201 Created` response code and a [directoryObject](../resources/directoryobject.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "create_directoryobject_from_b2bmanagement_policies"
}
-->
``` http
POST https://graph.microsoft.com/beta/policies/b2bManagementPolicies/f596ef0d-42f9-0359-1aaa-12d02b38802a/appliesTo/$ref
Content-Type: application/json

{
  "@odata.id": " https://graph.microsoft.com/beta/directoryObjects/a6c034b8-621b-dee3-6abb-52cbce801fe9"
}
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": false
}
-->
``` http
HTTP/1.1 204 No Content
```

