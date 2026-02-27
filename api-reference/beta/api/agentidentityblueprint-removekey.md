---
title: "agentIdentityBlueprint: removeKey"
description: "Remove a key credential from an agent identity blueprint."
author: "zallison22"
ms.date: 10/27/2025
ms.localizationpriority: medium
ms.subservice: "entra-agent-id"
doc_type: apiPageType
---

# agentIdentityBlueprint: removeKey

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Remove a key credential from an [agentIdentityBlueprint](../resources/agentidentityblueprint.md). This method along with [addKey](agentidentityblueprint-addkey.md) can be used to automate rolling its expiring keys.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "agentidentityblueprint-removekey-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/agentidentityblueprint-removekey-permissions.md)]

[!INCLUDE [rbac-agentid-apis-write](../includes/rbac-for-apis/rbac-agentid-apis-write.md)]

## HTTP request

``` http
POST /applications/{id}/microsoft.graph.agentIdentityBlueprint/removeKey
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, provide the following required properties.

| Property    | Type | Description|
|:----------|:-----|:-----------|
| keyId     | Guid | The unique identifier for the key.|
| proof | String | A self-signed JWT token used as a proof of possession of the existing keys. This JWT token must be signed using the private key of one of the application's existing valid certificates. The token should contain the following claims:<ul><li>**aud**: Audience needs to be `00000002-0000-0000-c000-000000000000`.</li><li>**iss**: Issuer needs to be the ID of the **application** that initiates the request.</li><li>**nbf**: Not before time.</li><li>**exp**: Expiration time should be the value of **nbf** + 10 minutes.</li></ul><br>For steps to generate this proof of possession token, see [Generating proof of possession tokens for rolling keys](/graph/application-rollkey-prooftoken).|


## Response

If successful, this action returns a `204 No Content` response code.

## Examples

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "agentidentityblueprintthis.removekey"
}
-->
``` http
POST https://graph.microsoft.com/beta/applications/{id}/microsoft.graph.agentIdentityBlueprint/removeKey
Content-Type: application/json

{
  "keyId": "Guid",
  "proof": "String"
}
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/agentidentityblueprintthisremovekey-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```

