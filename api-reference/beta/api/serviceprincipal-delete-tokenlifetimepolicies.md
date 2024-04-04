---
title: "Remove tokenLifetimePolicies"
description: "Remove a tokenLifetimePolicy from a service principal."
author: "sureshja"
ms.localizationpriority: medium
ms.subservice: "entra-applications"
doc_type: apiPageType
ms.topic: reference
---

# Remove tokenLifetimePolicies

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Remove a [tokenLifetimePolicy](../resources/tokenlifetimepolicy.md) object from a service principal.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

<!-- { "blockType": "ignored"  } // Note: Removing this line will result in the permissions autogeneration tool overwriting the table. -->
| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
| Delegated (work or school account)     | Policy.Read.All and Application.ReadWrite.All, Policy.ReadWrite.ApplicationConfiguration and Application.ReadWrite.All |
| Delegated (personal Microsoft account) | Not supported. |
| Application                            | Policy.Read.All and Application.ReadWrite.OwnedBy, Policy.Read.All and Application.ReadWrite.All, Policy.ReadWrite.ApplicationConfiguration and Application.ReadWrite.OwnedBy, Policy.ReadWrite.ApplicationConfiguration and Application.ReadWrite.All |

## HTTP request

You can address the service principal using either its **id** or **appId**. **id** and **appId** are referred to as the **Object ID** and **Application (Client) ID**, respectively, in enterprise applications in the Microsoft Entra admin center.

<!-- { "blockType": "ignored" } -->
``` http
DELETE /servicePrincipals/{servicePrincipalObjectId}/tokenLifetimePolicies/{tokenLifetimePolicyId}/$ref
DELETE /servicePrincipals(appId='{appId}')/tokenLifetimePolicies/{tokenLifetimePolicyId}/$ref
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
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "delete_tokenlifetimepolicies_from_serviceprincipal"
}
-->
``` http
DELETE https://graph.microsoft.com/beta/servicePrincipals/2a8f9e7a-af01-413a-9592-c32ec0e5c1a7/tokenLifetimePolicies/4d2f137b-e8a9-46da-a5c3-cc85b2b840a4/$ref
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/delete-tokenlifetimepolicies-from-serviceprincipal-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

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

