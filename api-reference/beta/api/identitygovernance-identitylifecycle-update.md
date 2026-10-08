---
title: "Update identityLifecycle"
description: "Update the properties of an identityLifecycle object."
author: "siaggarwal-ops"
ms.date: 07/31/2026
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: apiPageType
---

# Update identityLifecycle

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of an [identityLifecycle](../resources/identitygovernance-identitylifecycle.md) object for a [servicePrincipal](../resources/serviceprincipal.md).

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "identitygovernance-identitylifecycle-update-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/identitygovernance-identitylifecycle-update-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /servicePrincipals/{servicePrincipalsId}/lifecycle
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]

You must specify the `@odata.type` property when updating an [identityLifecycle](../resources/identitygovernance-identitylifecycle.md) object. For example, to update an [agentIdentityLifecycle](../resources/identitygovernance-agentidentitylifecycle.md) object, set `@odata.type` to `#microsoft.graph.identityGovernance.agentIdentityLifecycle`.

|Property|Type|Description|
|:---|:---|:---|
|lastAttestationDateTime|DateTimeOffset|The date and time when the identity was last attested. Nullable.|



## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "update_identitylifecycle"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/servicePrincipals/55bc54bb-f5ef-431b-9e8f-6ee6320191fe/lifecycle
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.identityGovernance.agentIdentityLifecycle",
  "lastAttestationDateTime": "2026-07-15T09:30:00Z"
}
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
