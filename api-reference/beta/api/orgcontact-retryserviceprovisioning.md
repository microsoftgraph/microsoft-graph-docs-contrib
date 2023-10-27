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

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

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
POST /contacts/{id}/retryServiceProvisioning
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

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "orgcontact_retryserviceprovisioning"
}-->
```http
POST https://graph.microsoft.com/beta/contacts/{id}/retryServiceProvisioning
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/orgcontact-retryserviceprovisioning-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/orgcontact-retryserviceprovisioning-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/orgcontact-retryserviceprovisioning-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/orgcontact-retryserviceprovisioning-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/orgcontact-retryserviceprovisioning-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/orgcontact-retryserviceprovisioning-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/orgcontact-retryserviceprovisioning-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/orgcontact-retryserviceprovisioning-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true
} -->
```http
HTTP/1.1 204 No Content
```
