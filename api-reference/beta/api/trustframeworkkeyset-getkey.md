---
title: "trustFrameworkKeySet: get key"
description: "Get the key from the keyset."
ms.localizationpriority: medium
author: "gyanendersinghgithub"
ms.subservice: "entra-sign-in"
doc_type: "apiPageType"
---

# Get key from trustFrameworkKeySet

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the [trustFrameworkKey_v2](../resources/trustframeworkkey_v2.md) from a [trustFrameworkKeySet](../resources/trustframeworkkeyset.md).

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "trustframeworkkeyset_getkey" } -->
[!INCLUDE [permissions-table](../includes/permissions/trustframeworkkeyset-getkey-permissions.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
GET /trustFramework/keySets/{id}/keys_v2/{keyId}
```

## Request headers

| Name          | Description   |
|:--------------|:--------------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a new [trustFrameworkKey_v2](../resources/trustframeworkkey_v2.md) object in the response body.

## Examples

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "trustframeworkkeyset_getkey"
}-->

```http
GET https://graph.microsoft.com/beta/trustFramework/keySets/{id}/keys_v2/{keyId}
```

### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.trustFrameworkKey_v2"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "k": "k-value",
  "x5c": [
    "x5c-value"
  ],
  "x5t": "x5t-value",
  "kty": "kty-value",
  "use": "use-value",
  "exp": 99,
  "status": "enabled"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2024-04-10 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "trustFrameworkKeySet: getKey",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->