---
title: "application: removeKey"
description: "Remove a key credential from an application"
ms.localizationpriority: medium
author: "sureshja"
ms.subservice: "entra-applications"
doc_type: "apiPageType"
---

# application: removeKey

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Remove a key credential from an [application](../resources/application.md). This method along with [addKey](application-addkey.md) can be used by an application to automate rolling its expiring keys.

> [!NOTE]
> [Create servicePrincipal](../api/serviceprincipal-post-serviceprincipals.md) and
[Update servicePrincipal](../api/serviceprincipal-update.md) operations can continue to be used to add and update key credentials for any application with application or a user's context.

As part of the request validation for this method, a proof of possession of an existing key is verified before the action can be performed.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "application_removekey" } -->
[!INCLUDE [permissions-table](../includes/permissions/application-removekey-permissions.md)]

> [!NOTE] 
> An application does not need any specific permission to roll its own keys.

## HTTP request

You can address the application using either its **id** or **appId**. **id** and **appId** are referred to as the **Object ID** and **Application (Client) ID**, respectively, in app registrations in the Microsoft Entra admin center.
<!-- { "blockType": "ignored" } -->
```http
POST /applications/{id}/removeKey
POST /applications(appId='{appId}')/removeKey
```

## Request headers

| Name           | Description                |
|:---------------|:---------------------------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| Content-Type   | application/json. Required.|

## Request body

In the request body, provide the following required properties.

| Property	| Type | Description|
|:----------|:-----|:-----------|
| keyId     | Guid | The unique identifier for the password.|
| proof | String | A self-signed JWT token used as a proof of possession of the existing keys. This JWT token must be signed using the private key of one of the application's existing valid certificates. The token should contain the following claims:<ul><li>**aud**: Audience needs to be `00000002-0000-0000-c000-000000000000`.</li><li>**iss**: Issuer needs to be the ID of the **application** that initiates the request.</li><li>**nbf**: Not before time.</li><li>**exp**: Expiration time should be the value of **nbf** + 10 minutes.</li></ul><br>For steps to generate this proof of possession token, see [Generating proof of possession tokens for rolling keys](/graph/application-rollkey-prooftoken).|

## Response

If successful, this method returns a `204 No content` response code.

## Examples

The following is example shows how to call this API.

### Request

The following example shows a request.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "application_removekey"
}-->

```http
POST https://graph.microsoft.com/beta/applications/{id}/removeKey
Content-Type: application/json

{
    "keyId": "f0b0b335-1d71-4883-8f98-567911bfdca6",
    "proof":"eyJ0eXAiOiJ..."
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/application-removekey-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/application-removekey-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/application-removekey-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/application-removekey-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/application-removekey-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/application-removekey-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/application-removekey-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/application-removekey-python-snippets.md)]
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

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "application: removeKey",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->



