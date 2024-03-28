---
title: "Update internalDomainFederation"
description: "Update the properties of an internalDomainFederation object."
author: "rahul-nagraj"
ms.localizationpriority: medium
ms.custom: has-azure-ad-ps-ref, azure-ad-ref-level-one-done
ms.subservice: "entra-sign-in"
doc_type: apiPageType
---

# Update internalDomainFederation
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of an [internalDomainFederation](../resources/internaldomainfederation.md) object.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "internaldomainfederation_update" } -->
[!INCLUDE [permissions-table](../includes/permissions/internaldomainfederation-update-permissions.md)]

> [!IMPORTANT]
> This method has a [known permissions issue](https://developer.microsoft.com/en-us/graph/known-issues/?search=21445) and might require consenting to the *Directory.AccessAsUser.All* permission for delegated scenarios.

[!INCLUDE [rbac-domainfederation-apis-write](../includes/rbac-for-apis/rbac-domainfederation-apis-write.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /domains/{domainsId}/federationConfiguration/{internalDomainFederationId}
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body
[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]


|Property|Type|Description|
|:---|:---|:---|
|activeSignInUri|String|URL of the endpoint used by active clients when authenticating with federated domains set up for single sign-on in Microsoft Entra ID. Corresponds to the **ActiveLogOnUri** property of the [Set-MsolDomainFederationSettings MSOnline v1 PowerShell cmdlet](/powershell/module/msonline/set-msoldomainfederationsettings).|
|displayName|String|The display name of the federated identity Provider (IdP). |
|federatedIdpMfaBehavior|federatedIdpMfaBehavior|Determines whether Microsoft Entra ID accepts the MFA performed by the federated IdP when a federated user accesses an application that is governed by a conditional access policy that requires MFA. The possible values are: `acceptIfMfaDoneByFederatedIdp`, `enforceMfaByFederatedIdp`, `rejectMfaByFederatedIdp`, `unknownFutureValue`. For more information, see [federatedIdpMfaBehavior values](#federatedidpmfabehavior-values).|
|isSignedAuthenticationRequestRequired|Boolean|If `true`, when SAML authentication requests are sent to the federated SAML IdP, Microsoft Entra ID sign in those requests using the OrgID signing key. If `false` (default), the SAML authentication requests sent to the federated IdP aren't signed.|
|issuerUri|String|Issuer URI of the federation server.|
|metadataExchangeUri|String|URI of the metadata exchange endpoint used for authentication from rich client applications.|
|nextSigningCertificate|String|Fallback token signing certificate that is used to sign tokens when the primary signing certificate expires. Formatted as Base 64 encoded strings of the public portion of the federated IdP's token signing certificate. Needs to be compatible with the X509Certificate2 class. Much like the **signingCertificate**, the **nextSigningCertificate** property is used if a rollover is required outside of the autorollover update, a new federation service is being set up, or if the new token signing certificate isn't present in the federation properties after the federation service certificate has been updated.|
|passiveSignInUri|String|URI that web-based clients are directed to when signing into Microsoft Entra services. |
|preferredAuthenticationProtocol|authenticationProtocol|Preferred authentication protocol. The possible values are: `wsFed`, `saml`, `unknownFutureValue`. |
|promptLoginBehavior|promptLoginBehavior|Sets the preferred behavior for the sign-in prompt. The possible values are: `translateToFreshPasswordAuthentication`, `nativeSupport`, `disabled`, `unknownFutureValue`.|
|signingCertificate|String|Current certificate used to sign tokens passed to the Microsoft identity platform. The certificate is formatted as a Base 64 encoded string of the public portion of the federated IdP's token signing certificate and must be compatible with the X509Certificate2 class. <br>This property is used in the following scenarios: <li> If a rollover is required outside of the autorollover update <li> A new federation service is being set up <li> If the new token signing certificate isn't present in the federation properties after the federation service certificate has been updated.<br>Microsoft Entra ID updates certificates via an autorollover process in which it attempts to retrieve a new certificate from the federation service metadata, 30 days before expiry of the current certificate. If a new certificate isn't available, Microsoft Entra ID monitors the metadata daily and updates the federation settings for the domain when a new certificate is available. Inherited from [samlOrWsFedProvider](../resources/samlorwsfedprovider.md).|
|signingCertificateUpdateStatus|[signingCertificateUpdateStatus](../resources/signingcertificateupdatestatus.md)|Provides status and timestamp of the last update of the signing certificate.|
|signOutUri|String|URI that clients are redirected to when they sign out of Microsoft Entra services. Corresponds to the **LogOffUri** property of the [Set-MsolDomainFederationSettings MSOnline v1 PowerShell cmdlet](/powershell/module/msonline/set-msoldomainfederationsettings).|

[!INCLUDE [Azure AD PowerShell deprecation note](~/../api-reference/reusable-content/msgraph-powershell/includes/aad-powershell-deprecation-note.md)]

### federatedIdpMfaBehavior values

| Member | Description |
| :--- | :--- |
| acceptIfMfaDoneByFederatedIdp | Microsoft Entra ID accepts MFA that's performed by the federated identity provider. If the federated identity provider didn't perform MFA, Microsoft Entra ID performs the MFA. |
| enforceMfaByFederatedIdp | Microsoft Entra ID accepts MFA that's performed by federated identity provider. If the federated identity provider didn't perform MFA, it redirects the request to federated identity provider to perform MFA. |
| rejectMfaByFederatedIdp | Microsoft Entra ID always performs MFA and rejects MFA that's performed by the federated identity provider. |

**Note:** **federatedIdpMfaBehavior** is an evolved version of the **SupportsMfa** property of the [Set-MsolDomainFederationSettings MSOnline v1 PowerShell cmdlet](/powershell/module/msonline/set-msoldomainfederationsettings). 
+ Switching between **federatedIdpMfaBehavior** and **SupportsMfa** isn't supported.
+ Once **federatedIdpMfaBehavior** property is set, Microsoft Entra ID ignores the **SupportsMfa** setting.
+ If the **federatedIdpMfaBehavior** property is never set, Microsoft Entra ID continues to honor the **SupportsMfa** setting.
+ If neither **federatedIdpMfaBehavior** nor **SupportsMfa** is set, Microsoft Entra ID defaults to `acceptIfMfaDoneByFederatedIdp` behavior.



## Response

If successful, this method returns a `200 OK` response code and an updated [internalDomainFederation](../resources/internaldomainfederation.md) object in the response body.

## Examples

### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_internaldomainfederation",
  "sampleKeys": ["contoso.com", "6601d14b-d113-8f64-fda2-9b5ddda18ecc"]
}
-->
``` http
PATCH https://graph.microsoft.com/beta/domains/contoso.com/federationConfiguration/6601d14b-d113-8f64-fda2-9b5ddda18ecc
Content-Type: application/json

{
  "displayName": "Contoso name change",  
  "federatedIdpMfaBehavior": "acceptIfMfaDoneByFederatedIdp"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/update-internaldomainfederation-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/update-internaldomainfederation-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/update-internaldomainfederation-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/update-internaldomainfederation-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-internaldomainfederation-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/update-internaldomainfederation-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/update-internaldomainfederation-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/update-internaldomainfederation-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.internalDomainFederation"
}
-->

``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.internalDomainFederation",
  "id": "6601d14b-d113-8f64-fda2-9b5ddda18ecc",
   "displayName": "Contoso name change",
   "issuerUri": "http://contoso.com/adfs/services/trust",
   "metadataExchangeUri": "https://sts.contoso.com/adfs/services/trust/mex",
   "signingCertificate": "MIIE3jCCAsagAwIBAgIQQcyDaZz3MI",
   "passiveSignInUri": "https://sts.contoso.com/adfs/ls",
   "preferredAuthenticationProtocol": "wsFed",
   "activeSignInUri": "https://sts.contoso.com/adfs/services/trust/2005/usernamemixed",
   "signOutUri": "https://sts.contoso.com/adfs/ls",
   "promptLoginBehavior": "nativeSupport",
   "isSignedAuthenticationRequestRequired": true,
   "nextSigningCertificate": "MIIE3jCCAsagAwIBAgIQQcyDaZz3MI",
   "signingCertificateUpdateStatus": {
        "certificateUpdateResult": "Success",
        "lastRunDateTime": "2021-08-25T07:44:46.2616778Z"
    },
   "federatedIdpMfaBehavior": "acceptIfMfaDoneByFederatedIdp"
}
```
