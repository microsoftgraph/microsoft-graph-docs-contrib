---
title: "Create samlOrWsFedExternalDomainFederation"
description: "Create a new samlOrWsFedExternalDomainFederation object."
author: "namkedia"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
ms.date: 04/04/2024
---

# Create samlOrWsFedExternalDomainFederation
Namespace: microsoft.graph

Create a new [samlOrWsFedExternalDomainFederation](../resources/samlorwsfedexternaldomainfederation.md) object.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "samlorwsfedexternaldomainfederation_post" } -->
[!INCLUDE [permissions-table](../includes/permissions/samlorwsfedexternaldomainfederation-post-permissions.md)]

[!INCLUDE [rbac-identity-provider-apis](../includes/rbac-for-apis/rbac-identity-provider-apis.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

``` http
POST /directory/federationConfigurations/microsoft.graph.samlOrWsFedExternalDomainFederation
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [samlOrWsFedExternalDomainFederation](../resources/samlorwsfedexternaldomainfederation.md) object.

The following table lists the properties that are required when you create the [samlOrWsFedExternalDomainFederation](../resources/samlorwsfedexternaldomainfederation.md).

|Property|Type|Description|
|:---|:---|:---|
|displayName|String|The display name of the SAML/WS-Fed based identity provider. Inherited from [identityProviderBase](../resources/identityproviderbase.md).|
|issuerUri|String|Issuer URI of the federation server. Inherited from [samlOrWsFedProvider](../resources/samlorwsfedprovider.md).|
|metadataExchangeUri|String|URI of the metadata exchange endpoint used for authentication from rich client applications. Inherited from [samlOrWsFedProvider](../resources/samlorwsfedprovider.md).|
|passiveSignInUri|String|URI that web-based clients are directed to when signing in to Microsoft Entra services. Inherited from [samlOrWsFedProvider](../resources/samlorwsfedprovider.md).|
|preferredAuthenticationProtocol|authenticationProtocol|Preferred authentication protocol. The possible values are: `wsFed`, `saml`. Inherited from [samlOrWsFedProvider](../resources/samlorwsfedprovider.md).|
|signingCertificate|String|Current certificate used to sign tokens passed to the Microsoft identity platform. The certificate is formatted as a Base64 encoded string of the public portion of the federated IdP's token signing certificate and must be compatible with the X509Certificate2 class.  <br/><br/> This property is used in the following scenarios: <ul><li> if a rollover is required outside of the autorollover update <li>a new federation service is being set up <li> if the new token signing certificate isn't present in the federation properties after the federation service certificate has been updated. </ul> <br/><br/> Microsoft Entra ID updates certificates via an autorollover process in which it attempts to retrieve a new certificate from the federation service metadata, 30 days before expiry of the current certificate. If a new certificate isn't available, Microsoft Entra ID monitors the metadata daily and will update the federation settings for the domain when a new certificate is available.|

## Response

If successful, this method returns a `201 Created` response code and a [samlOrWsFedExternalDomainFederation](../resources/samlorwsfedexternaldomainfederation.md) object in the response body.

## Examples

### Request


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_samlorwsfedexternaldomainfederation_from_"
}
-->

``` http
POST https://graph.microsoft.com/beta/directory/federationConfigurations/microsoft.graph.samlOrWsFedExternalDomainFederation
Content-Type: application/json

{
    "@odata.type": "microsoft.graph.samlOrWsFedExternalDomainFederation",
    "issuerUri": "https://contoso.com/issuerUri",
    "displayName": "contoso display name",
    "metadataExchangeUri": "https://contoso.com/metadataExchangeUri",
    "passiveSignInUri": "https://contoso.com/signin",
    "preferredAuthenticationProtocol": "wsFed",
    "domains": [
        {
            "@odata.type": "microsoft.graph.externalDomainName",
            "id": "contoso.com"
        }
    ],
    "signingCertificate": "MIIDADCCAeigAwIBAgIQEX41y8r6"
}
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-samlorwsfedexternaldomainfederation-from--javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.identityProviderBase"
}
-->

``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
    "id": "3c41f317-9af3-4266-8ccf-26283ceec888",
    "displayName": "contoso display name"
}
```
