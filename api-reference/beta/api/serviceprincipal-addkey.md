---
title: "servicePrincipal: addKey"
description: "Add a key credential to a servicePrincipal."
ms.localizationpriority: medium
author: "sureshja"
ms.subservice: "entra-applications"
doc_type: "apiPageType"
ms.topic: reference
---

# servicePrincipal: addKey

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Adds a key credential to a [servicePrincipal](../resources/serviceprincipal.md). This method along with [removeKey](serviceprincipal-removekey.md) can be used by a servicePrincipal to automate rolling its expiring keys.

> [!NOTE]
> [Create servicePrincipal](../api/serviceprincipal-post-serviceprincipals.md) and
[Update servicePrincipal](../api/serviceprincipal-update.md) operations can continue to be used to add and update key credentials for any servicePrincipal with or without a user's context.

As part of the request validation for this method, a proof of possession of an existing key is verified before the action can be performed. 

ServicePrincipals that don’t have any existing valid certificates (i.e.: no certificates have been added yet, or all certificates have expired), won’t be able to use this service action. [Update servicePrincipal](../api/serviceprincipal-update.md) can be used to perform an update instead.

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "serviceprincipal_addkey" } -->
[!INCLUDE [permissions-table](../includes/permissions/serviceprincipal-addkey-permissions.md)]


## HTTP request

You can address the service principal using either its **id** or **appId**. **id** and **appId** are referred to as the **Object ID** and **Application (Client) ID**, respectively, in app registrations in the Microsoft Entra admin center.
<!-- { "blockType": "ignored" } -->

```http
POST /servicePrincipals/{id}/addKey
POST /servicePrincipals(appId='{appId}')/addKey
```

## Request headers

| Name           | Description                |
|:---------------|:---------------------------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| Content-Type   | application/json. Required.|

## Request body

In the request body, provide the following required properties.

| Property	   | Type	|Description|
|:---------------|:--------|:----------|
| keyCredential | [keyCredential](../resources/keycredential.md) | The new servicePrincipal key credential to add. The __type__, __usage__ and __key__ are required properties for this usage. Supported key types are:<br><ul><li>`AsymmetricX509Cert`: The usage must be `Verify`.</li><li>`X509CertAndPassword`: The usage must be `Sign`</li></ul>|
| passwordCredential | [passwordCredential](../resources/passwordcredential.md) | Only __secretText__ is required to be set which should contain the password for the key. This property is required only for keys of type `X509CertAndPassword`. Set it to `null` otherwise.|
| proof | String | A self-signed JWT token used as a proof of possession of the existing keys. This JWT token must be signed with a private key that corresponds to one of the existing valid certificates associated with the **servicePrincipal**. The token should contain the following claims:<ul><li>**aud**: Audience needs to be `00000002-0000-0000-c000-000000000000`.</li><li>**iss**: Issuer needs to be the ID of the **servicePrincipal** that initiates the request.</li><li>**nbf**: Not before time.</li><li>**exp**: Expiration time should be the value of **nbf** + 10 minutes.</li></ul><br>For steps to generate this proof of possession token, see [Generating proof of possession tokens for rolling keys](/graph/application-rollkey-prooftoken).|

## Response

If successful, this method returns a `200 OK` response code and a new [keyCredential](../resources/keycredential.md) object in the response body.

## Examples

### Example 1: Adding a new key credential to a servicePrincipal

#### Request

The following example shows a request.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "serviceprincipal_addkey_1"
}-->

```http
POST https://graph.microsoft.com/beta/servicePrincipals/{id}/addKey
Content-type: application/json

{
    "keyCredential": {
        "type": "AsymmetricX509Cert",
        "usage": "Verify",
        "key": "MIIDYDCCAki..."
    },
    "passwordCredential": null,
    "proof":"eyJ0eXAiOiJ..."
}
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/serviceprincipal-addkey-1-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.keyCredential"
} -->

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#microsoft.graph.keyCredential"
}
```

### Example 2: Adding a key credential and an associated password for the key

#### Request

The following example shows a request.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "serviceprincipal_addkey_2"
}-->

```http
POST https://graph.microsoft.com/beta/servicePrincipals/{id}/addKey
Content-type: application/json

{
    "keyCredential": {
        "type": "X509CertAndPassword",
        "usage": "Sign",
        "key": "MIIDYDCCAki..."
    },
    "passwordCredential": {
        "secretText": "MKTr0w1..."
    },
    "proof":"eyJ0eXAiOiJ..."
}
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/serviceprincipal-addkey-2-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.keyCredential"
} -->

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#microsoft.graph.keyCredential"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "servicePrincipal: addKey",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}-->



