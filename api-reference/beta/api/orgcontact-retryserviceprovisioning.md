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

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retry the [orgContact](../resources/orgContact.md) service provisioning.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged)                      |
| :------------------------------------- | :--------------------------------------------------------------- |
| Delegated (work or school account)     | OrgContact.Read.All, Directory.Read.All, Directory.ReadWrite.All |
| Delegated (personal Microsoft account) | Not supported.                                                   |
| Application                            | OrgContact.Read.All, Directory.Read.All, Directory.ReadWrite.All |

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /orgContacts/{id}/retryServiceProvisioning
```

## Request headers

| Name          | Description                 |
| :------------ | :-------------------------- |
| Authorization | Bearer {token}. Required.   |
| Content-Type  | application/json. Required. |

## Request body

This operation has no request content.

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
POST https://graph.microsoft.com/beta/orgContacts/{id}/retryServiceProvisioning
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
