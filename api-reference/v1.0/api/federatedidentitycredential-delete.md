---
title: "Delete federatedIdentityCredential"
description: "Delete a federatedIdentityCredential object."
author: "shahzad-khalid"
ms.localizationpriority: medium
ms.prod: "applications"
doc_type: apiPageType
---

# Delete federatedIdentityCredential
Namespace: microsoft.graph


Delete a [federatedIdentityCredential](../resources/federatedidentitycredential.md) object from an application.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | Application.ReadWrite.All    |
|Delegated (personal Microsoft account) |  Application.ReadWrite.All |
|Application | Application.ReadWrite.OwnedBy, Application.ReadWrite.All |


## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
DELETE /applications/{id}/federatedIdentityCredentials/{federatedIdentityCredentialId}

DELETE /applications/{id}/federatedIdentityCredentials/{federatedIdentityCredentialName}
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
DELETE https://graph.microsoft.com/v1.0/applications/bcd7c908-1c4d-4d48-93ee-ff38349a75c8/federatedIdentityCredentials/d9b7bf1e-429e-4678-8132-9b00c9846cc4
```




### Response
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```
