---
title: "agentIdentityBlueprint: addKey"
description: "Add a key credential to an agent identity blueprint. This method, along with removeKey, can be used to automate rolling its expiring keys."
author: "zallison22"
ms.date: 10/27/2025
ms.localizationpriority: medium
ms.subservice: "entra-applications"
doc_type: apiPageType
---

# agentIdentityBlueprint: addKey

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Add a key credential to an [agentIdentityBlueprint](../resources/agentidentityblueprint.md). This method, along with [removeKey](agentidentityblueprint-removekey.md), can be used to automate rolling its expiring keys.

> [!NOTE]
>
> You should only provide the public key value when adding a certificate credential to your application. Adding a private key certificate to your application risks compromising the application.

As part of the request validation for this method, a proof of possession of an existing key is verified before the action can be performed. 

Agent identity blueprints that don't have any existing valid certificates (no certificates have been added yet, or all certificates have expired), won't be able to use this service action. You can use the [Update agent identity blueprint](../api/agentidentityblueprint-update.md) operation to perform an update instead.



## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "agentidentityblueprint-addkey-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/agentidentityblueprint-addkey-permissions.md)]

[!INCLUDE [rbac-agentid-apis-write](../includes/rbac-for-apis/rbac-agentid-apis-write.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /applications/{id}/microsoft.graph.agentIdentityBlueprint/addKey
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the parameters. The following table lists the parameters that are required when you call this action.

| Property       | Type    |Description|
|:---------------|:--------|:----------|
| keyCredential | [keyCredential](../resources/keycredential.md) | The new application key credential to add. The __type__, __usage__ and __key__ are required properties for this usage. Supported key types are:<br><ul><li>`AsymmetricX509Cert`: The usage must be `Verify`.</li><li>`X509CertAndPassword`: The usage must be `Sign`</li></ul>|
| passwordCredential | [passwordCredential](../resources/passwordcredential.md) | Only __secretText__ is required to be set which should contain the password for the key. This property is required only for keys of type `X509CertAndPassword`. Set it to `null` otherwise.|
| proof | String | A self-signed JWT token used as a proof of possession of the existing keys. This JWT token must be signed using the private key of one of the application's existing valid certificates. The token should contain the following claims:<ul><li>**aud**: Audience needs to be `00000002-0000-0000-c000-000000000000`.</li><li>**iss**: Issuer needs to be the ID of the **application** that initiates the request.</li><li>**nbf**: Not before time.</li><li>**exp**: Expiration time should be the value of **nbf** + 10 minutes.</li></ul><br>For steps to generate this proof of possession token, see [Generating proof of possession tokens for rolling keys](/graph/application-rollkey-prooftoken). For more information about the claim types, see [Claims payload](/azure/active-directory/develop/active-directory-certificate-credentials).|



## Response

If successful, this action returns a `200 OK` response code and a [keyCredential](../resources/keycredential.md) in the response body.

## Examples

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "agentidentityblueprintthis.addkey"
}
-->
``` http
POST https://graph.microsoft.com/beta/applications/{id}/microsoft.graph.agentIdentityBlueprint/addKey
Content-Type: application/json

{
  "keyCredential": {
    "@odata.type": "microsoft.graph.keyCredential"
  },
  "passwordCredential": {
    "@odata.type": "microsoft.graph.passwordCredential"
  },
  "proof": "String"
}
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/agentidentityblueprintthisaddkey-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.keyCredential"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "microsoft.graph.keyCredential"
  }
}
```

