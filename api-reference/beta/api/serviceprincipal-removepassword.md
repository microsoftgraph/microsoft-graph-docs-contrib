---
title: "servicePrincipal: removePassword"
description: "Removes a password from a servicePrincipal"
localization_priority: Normal
author: "sureshja"
ms.prod: ""
doc_type: "apiPageType"
---

# appliservicePrincipalcation: removePassword

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Removes a password from a servicePrincipal.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
| Delegated (work or school account)     | Directory.AccessAsUser.All |
| Delegated (personal Microsoft account) | Not supported. |
| Application                            | Application.ReadWrite.OwnedBy, Application.ReadWrite.All |

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
POST /servicePrincipals/{id}/removePassword
```

## Request headers

| Name           | Type   | Description                |
|:---------------|:-------|:---------------------------|
| Authorization  | string | Bearer {token}. Required.  |

## Request body

The following parameter is required to call this API. 

| Property	   | Type	|Description|
|:---------------|:--------|:----------|
| keyId | Guid | The unique identifier (GUID) for the password |

## Response

If successful, this method returns `204, No content` response code.

## Examples

The following is an example of how to call this API.

### Request

The following is an example of the request.
<!-- {
  "blockType": "request",
  "name": "servicePrincipal_removepassword"
}-->

```http
POST https://graph.microsoft.com/beta/servicePrincipals/{id}/removePassword
Content-type: application/json

{
    "keyId": "f0b0b335-1d71-4883-8f98-567911bfdca6"
}
```

### Response

The following is an example of the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.passwordCredential"
} -->

```http
204 No content
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "servicePrincipal: removePassword",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->