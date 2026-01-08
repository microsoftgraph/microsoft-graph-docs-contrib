---
title: "Delete inheritablePermission"
description: "Delete an inheritablePermission object."
author: "zallison22"
ms.date: 11/13/2025
ms.localizationpriority: medium
ms.subservice: "entra-agent-id"
doc_type: apiPageType
---

# Delete inheritablePermission

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Delete an [inheritablePermission](../resources/inheritablepermission.md) object from an [agent identity blueprint](../resources/agentidentityblueprint.md). When a permission is deleted, agent identities created from the blueprint will no longer automatically inherit the delegated permission scopes defined in the deleted inheritablePermission object. If the agent identiy requires those scopes, they must request consent again.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "agentidentityblueprint-delete-inheritablepermissions-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/agentidentityblueprint-delete-inheritablepermissions-permissions.md)]

[!INCLUDE [rbac-agentid-apis-write](../includes/rbac-for-apis/rbac-agentid-apis-write.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
DELETE /applications/{id}/microsoft.graph.agentIdentityBlueprint/inheritablePermissions/{resource_appId}
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
  "name": "delete_inheritablepermission"
}
-->
``` http
DELETE https://graph.microsoft.com/beta/applications/bc057821-f236-49d6-9f2c-1ebf43e9437a/microsoft.graph.agentIdentityBlueprint/inheritablePermissions/00000002-0000-0000-c000-000000000000
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

