---
title: "Add agentIdentityBlueprintPrincipal sponsors"
description: "Add sponsors to agentIdentityBlueprintPrincipal sponsors by posting to the sponsors collection."
author: "zallison22"
ms.date: 02/26/2026
ms.localizationpriority: medium
ms.subservice: "entra-agent-id"
doc_type: apiPageType
---

# Add agentIdentityBlueprintPrincipal sponsors

Namespace: microsoft.graph

Add sponsors to an [agent identity blueprint principal](../resources/agentidentityblueprintprincipal.md). Sponsors can include users or groups. Sponsors may not include service principals or agent users.

A single blueprint principal may have up to 100 sponsors. No more than 5 sponsors may be groups. Only groups with dynamic membership or Microsoft 365 groups are supported as sponsors. Role-assignable groups can't be set as sponsors.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "agentidentityblueprintprincipal-post-sponsors-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/agentidentityblueprintprincipal-post-sponsors-permissions.md)]

[!INCLUDE [rbac-agentid-apis-write](../includes/rbac-for-apis/rbac-agentid-apis-write.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /servicePrincipals/{id}/microsoft.graph.agentIdentityBlueprintPrincipal/sponsors/$ref
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a reference to the [directoryObject](../resources/directoryobject.md) object to be added as a sponsor.

## Response

If successful, this method returns a `204 No Content` response code and no response body.

## Examples

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_agent_identity_blueprint_principal_sponsor"
}
-->
``` http
POST https://graph.microsoft.com/v1.0/servicePrincipals/{id}/microsoft.graph.agentIdentityBlueprintPrincipal/sponsors/$ref
Content-Type: application/json

{
  "@odata.id": "https://graph.microsoft.com/v1.0/directoryObjects/{sponsor-object-id}"
}
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-agent-identity-blueprint-principal-sponsor-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
<!-- {
  "blockType": "response"
}
-->
``` http
HTTP/1.1 204 No Content
```

