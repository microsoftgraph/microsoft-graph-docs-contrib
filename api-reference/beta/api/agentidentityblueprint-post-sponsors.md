---
title: "Add agentIdentityBlueprint sponsors"
description: "Add sponsors to an agentIdentityBlueprint by posting to the sponsors collection."
author: "zallison22"
ms.date: 10/27/2025
ms.localizationpriority: medium
ms.subservice: "entra-agent-id"
doc_type: apiPageType
---

# Add agentIdentityBlueprint sponsors

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Add a sponsor to an [agentIdentityBlueprint](../resources/agentidentityblueprint.md) object. Sponsors can include users or groups. Sponsors may not include service principals or agent users.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "agentidentityblueprint-post-sponsors-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/agentidentityblueprint-post-sponsors-permissions.md)]

[!INCLUDE [rbac-agentid-apis-write](../includes/rbac-for-apis/rbac-agentid-apis-write.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /applications/{id}/microsoft.graph.agentIdentityBlueprint/sponsors/$ref
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a reference to the [directoryObject](../resources/directoryobject.md) object to be added as a sponsor.

## Response

If successful, this method returns a `204 No Content` response code and a supported [directoryObject](../resources/directoryobject.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "create_agent_identity_blueprint_sponsor"
}
-->
``` http
POST https://graph.microsoft.com/beta/applications/{id}/microsoft.graph.agentIdentityBlueprint/sponsors/$ref
Content-Type: application/json

{
  "@odata.id": "https://graph.microsoft.com/beta/directoryObjects/{sponsor-object-id}"
}
```


### Response

The following example shows the response.
<!-- {
  "blockType": "response"
}
-->
``` http
HTTP/1.1 204 No Content
```
