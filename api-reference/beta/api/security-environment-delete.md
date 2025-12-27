---
title: "Delete environment"
description: "Delete an environment from a zone by providing the environment ID. Environment ID should be URL encoded."
author: "Yarinle4"
ms.date: 11/26/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: apiPageType
---

# Delete environment

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Delete an [environment](../resources/security-environment.md) object from a [zone](../resources/security-zone.md) object by providing the EnvironmentId. EnvironmentId should be URL encoded.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "security-environment-delete-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/security-environment-delete-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
DELETE /security/zones/{zoneId}/environments/{environmentId}
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
  "name": "delete_environment"
}
-->
``` http
DELETE https://graph.microsoft.com/beta/security/zones/03f98aee-fee9-06b4-e5d3-647ef536acac/environments/23613f44-7f57-d1fc-b9a4-448cd3e8c7c3
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