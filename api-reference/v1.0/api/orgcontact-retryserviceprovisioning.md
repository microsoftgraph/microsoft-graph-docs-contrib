---
title: "orgContact: retryServiceProvisioning"
description: "Retries orgContact service provisioning."
ms.localizationpriority: medium
author: "PaulEkirapa"
ms.subservice: "entra-sign-in"
doc_type: "apiPageType"
ms.date: 04/04/2024
---

# orgContact: retryServiceProvisioning

Namespace: microsoft.graph

Retry the [orgContact](../resources/orgContact.md) service provisioning.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "orgcontact_retryserviceprovisioning" } -->
[!INCLUDE [permissions-table](../includes/permissions/orgcontact-retryserviceprovisioning-permissions.md)]

> [!IMPORTANT]
> In delegated scenarios with work or school accounts, the signed-in user must be assigned a supported [Microsoft Entra role](/entra/identity/role-based-access-control/permissions-reference?toc=%2Fgraph%2Ftoc.json) or a custom role with a supported role permission. The following least privileged roles are supported for this operation.
> - Directory Writers
> - Intune Administrator
> - User Administrator

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /orgContacts/{id}/retryServiceProvisioning
```

## Request headers

| Name          | Description                 |
| :------------ | :-------------------------- |
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| Content-Type  | application/json. Required. |

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "orgcontact_retryserviceprovisioning"
}-->
```http
POST https://graph.microsoft.com/v1.0/orgContacts/{id}/retryServiceProvisioning
```

### Response

The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true
} -->
```http
HTTP/1.1 204 No Content
```
