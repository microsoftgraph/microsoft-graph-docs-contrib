---
title: "Delete federatedIdentityCredential"
description: "Deletes a federatedIdentityCredential object."
author: "kjyam98"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Delete federatedIdentityCredential
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Deletes a [federatedIdentityCredential](../resources/federatedidentitycredential.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permissions                                  | Type                                             | Entities/APIs Covered                                               |
| -------------------------------------------- | ------------------------------------------------ | ------------------------------------------------------------------- |
| Application.Read.All | Delegated and app-only| Allows reading of the  `federatedIdentity` linked to apps and service principals |
| Application.Readwrite.Ownedby | Delegated and app-only | Allows reading and writing (creating, updating, deleting) of the `federatedIdentity` entity linked to owned apps and service principals |
| Application.Readwrite.All | Delegated and app-only | Allows reading and writing (creating, updating, deleting) of the `federatedIdentity` entity linked to apps and service principals |


## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
DELETE /applications/{applicationsId}/federatedIdentityCredentials/{federatedIdentityCredentialId}
DELETE /servicePrincipals/{servicePrincipalsId}/federatedIdentityCredentials/{federatedIdentityCredentialId}
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "delete_federatedidentitycredential"
}
-->
``` http
DELETE https://graph.microsoft.com/beta/applications/{applicationsId}/federatedIdentityCredentials/{federatedIdentityCredentialId}
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```

