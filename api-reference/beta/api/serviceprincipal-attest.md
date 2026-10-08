---
title: "servicePrincipal: attest"
description: "Attest an agent identity through its servicePrincipal to confirm it still meets its governing lifecycle policy."
author: "siaggarwal-ops"
ms.date: 07/31/2026
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: apiPageType
---

# servicePrincipal: attest

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Attest an agent identity through its [servicePrincipal](../resources/serviceprincipal.md) to confirm it still meets the requirements of its governing [lifecyclePolicy](../resources/identitygovernance-lifecyclepolicy.md). Attestation updates the identity's lifecycle state and can clear attestation-related compliance issues.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "serviceprincipal-attest-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/serviceprincipal-attest-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /servicePrincipals/{servicePrincipalsId}/attest
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this action returns a `204 No Content` response code.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "serviceprincipalthis.attest"
}
-->
``` http
POST https://graph.microsoft.com/beta/servicePrincipals/55bc54bb-f5ef-431b-9e8f-6ee6320191fe/attest
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

