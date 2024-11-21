---
title: "Get a mutual TLS OAuth Configuration"
description: "Get a mutual TLS OAuth Configuration."
author: "ploegert"
ms.localizationpriority: medium
ms.prod: "identity-and-access"
doc_type: apiPageType
---

# Get mutualTlsOauthConfigurations
Namespace: microsoft.graph

Returns the specified [mutualTlsOauthConfiguration](../resources/mutualTlsOauthConfiguration.md) resource.

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "mutualtlsoauthconfiguration-get-permissions"
}
-->

|ScopeName|DisplayName|Description|Type|Admin Consent?|Entities/APIs covered|
|-|-|-|-|-|-|
|`MutualTlsOauthConfiguration.Read.All`| Read all configurations used for mutual transport layer security (mTLS) client authentication. | Allows the app to read configuration used for OAuth 2.0 mutual-TLS client authentication, on behalf of the signed-in user. Permission includes reading trusted certificate authorities. _(Granted to admin role on the device authority's EntraId tenant)_|**Delegated**|**Yes**|List, Get|
|`MutualTlsOauthConfiguration.ReadWrite.All`| Read and write all configurations used for mutual-TLS client authentication. | Allows the app to read and update configuration used for OAuth 2.0 mutual-TLS client authentication, on behalf of the signed-in user. Permission includes adding and updating trusted certificate authorities. _(Granted to admin role on the device authority's EntraId tenant)_|**Delegated**|**Yes**|List, Get, Create, Update, Delete|

## HTTP request

The `{id}` in the request is the value of the **id** property of the device template.
<!-- { "blockType": "ignored" } -->
```http
GET /directory/certificateAuthorities/mutualTlsOauthConfigurations/{id}
```

## Optional query parameters
This method supports the `$select` & `$filter` [OData query parameter](../../../concepts/query-parameters.md#filter-parameter) to help customize the response.

### Example Filters/Selec
|Pattern|Supported|Syntax|
|-------|:---------:|------|
|Filter|✓|`//directory/certificateAuthorities/mutualTlsOauthConfigurations/?$filter=id eq '{guid}'`|
|Filter|✓|`//directory/certificateAuthorities/mutualTlsOauthConfigurations/?$filter=manufacturer eq '{manufacturer name}'`|
|Select|✓|`//directory/certificateAuthorities/mutualTlsOauthConfigurations/?$select=id,operatingSystem'`|

## Request headers
For more information about adding the Authorization Header, see [Authorization](/graph/security-authorization). The field {token} should be replaced with the associated "Access Token".
| Name | Type |	Description |
|--|--|--|
Authorization	| string	| Bearer {token}. Required. |

## Request Body
Don't supply a request body for this method.


## Response
- Reference [MSGraph error responses and resource types](../../../concepts/errors.md) for more information regarding general error codes and error conditions.

## Example
### Request
<!-- {
  "blockType": "request",
  "name": "get_mutualtlsoauthconfiguration"
}
-->
```json
GET https://graph.microsoft.com/v1.0/directory/certificateAuthorities/mutualTlsOauthConfigurations/eec5ba11-2fc0-4113-83a2-ed986ed13cdb

```

### Response
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.mutualTlsOauthConfiguration"
}
-->
```json
HTTP/1.1 201 Created
Location: "https://graph.microsoft.com/v1.0/directory/certificateAuthorities/mutualTlsOauthConfigurations/eec5ba11-2fc0-4113-83a2-ed986ed13cdb"
{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#directory/certificateAuthorities/mutualTlsOauthConfigurations/$entity",
  "id":"eec5ba11-2fc0-4113-83a2-ed986ed13cdb",
  "displayName": "DoorCamera_Model_X_TrustedCAs",
  "tlsClientAuthParameter": "tls_client_auth_subject_dn",
  "certificateAuthorities": [
    {
      "isRootAuthority": true,
      "certificateRevocationListUrl": "http://acme.com/root.crl",
      "deltaCertificateRevocationListUrl": null,
      "certificate": "joGrWL+Yqkik/CABWG0d1w....",
      "issuer": "acme Inc",
      "issuerSubjectkeyIdentifier": "SKI"
    },
    {
      "isRootAuthority": true,
      "certificateRevocationListUrl": "http://digicert.com/root.crl",
      "deltaCertificateRevocationListUrl": null,
      "certificate": "koGrWL+Yqkik/CABWG0d1w....",
      "issuer": "Digicert Inc",
      "issuerSubjectkeyIdentifier": "SKI"
    }
  ]
}
```
