---
title: "trustFrameworkKey: Patch key status"
description: "Patch key status for a key in a **trustFrameworkKeySet** object."
ms.localizationpriority: medium
author: "Nickgmicrosoft"
ms.subservice: "entra-sign-in"
doc_type: "apiPageType"
---

# Patch trustFrameworkKey status

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Patch key status for a key in a [trustFrameworkKeySet](../resources/trustframeworkkeyset.md). The operation will update the status for the targeted key within the container. Target Keyset container id will be passed in the url.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "trustframeworkkeyset_patchkeystatus" } -->
[!INCLUDE [permissions-table](../includes/permissions/trustframeworkkeyset-patchkeystatus-permissions.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
PATCH /trustFramework/keySets/{id}/keys_v2/{keyId}
```

## Request headers

| Name          | Description   |
|:--------------|:--------------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| Content-type  | application/json. Required. |

## Request body

In the request body, provide a JSON object with the following parameters.

| Parameter    | Type        | Description |
|:-------------|:------------|:------------|
|status|String|Similar to the **status** property of **trustFrameworkKey_v2**.|

## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "trustframeworkkeyset_patchKeyStatus"
}-->

```http
PATCH https://graph.microsoft.com/beta/trustFramework/keySets/{id}/keys_v2/{keyId}
Content-type: application/json
{
    "status": "disabled"
}
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
HTTP/1.1 204  No Content
Content-type: application/json

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2024-04-10 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "trustFrameworkKeySet: patchKeyStatus",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
