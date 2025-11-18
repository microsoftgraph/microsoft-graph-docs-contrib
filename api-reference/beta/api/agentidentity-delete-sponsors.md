---
title: "Remove agentIdentity sponsors"
description: "Remove a sponsor from an agentIdentity object."
author: "zallison22"
ms.date: 10/27/2025
ms.localizationpriority: medium
ms.subservice: "entra-applications"
doc_type: apiPageType
---

# Remove agentIdentity sponsors

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Remove a sponsor from a [agentIdentity](../resources/agentidentity.md) object. Agent identities require at least one sponsor to manage the agent identity.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "agentidentity-delete-sponsors-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/agentidentity-delete-sponsors-permissions.md)]

[!INCLUDE [rbac-agentid-apis-write](../includes/rbac-for-apis/rbac-agentid-apis-write.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
DELETE /servicePrincipals/{id}/microsoft.graph.agentIdentity/sponsors/{sponsorObjectId}/$ref
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
  "name": "delete_sponsors_from_agentidentity"
}
-->
``` http
DELETE https://graph.microsoft.com/beta/servicePrincipals/{id}/microsoft.graph.agentIdentity/sponsors/{sponsorObjectId}/$ref
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

