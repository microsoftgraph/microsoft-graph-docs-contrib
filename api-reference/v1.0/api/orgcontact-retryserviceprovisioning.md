---
title: "orgContact: retryServiceProvisioning"
description: "Retries orgContact service provisioning."
ms.localizationpriority: medium
author: "PaulEkirapa"
ms.prod: "identity-and-sign-in"
doc_type: "apiPageType"
---

# orgContact: retryServiceProvisioning

Namespace: microsoft.graph

Retry the [orgContact](../resources/orgContact.md) service provisioning.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "orgcontact_retryserviceprovisioning" } -->
[!INCLUDE [permissions-table](../includes/permissions/orgcontact-retryserviceprovisioning-permissions.md)]

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

Do not supply a request body for this method.

## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request

The following is an example of the request.
<!-- {
  "blockType": "request",
  "name": "orgcontact_retryserviceprovisioning"
}-->
```http
POST https://graph.microsoft.com/v1.0/orgContacts/{id}/retryServiceProvisioning
```

### Response

The following is an example of the response.
<!-- {
  "blockType": "response",
  "truncated": true
} -->
```http
HTTP/1.1 204 No Content
```
