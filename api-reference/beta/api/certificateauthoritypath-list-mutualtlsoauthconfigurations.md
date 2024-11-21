---
title: "List mutual TLS OAuth Configurations"
description: "List mutual TLS OAuth Configurations."
author: "ploegert"
ms.localizationpriority: medium
ms.prod: "identity-and-access"
ms.subservice: "entra-id"
doc_type: apiPageType
---

# List mutualTlsOauthConfigurations
Namespace: microsoft.graph

Lists available [mutualTlsOauthConfiguration](../resources/mutualTlsOauthConfiguration.md) resources.

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "certificateauthoritypath-list-mutualtlsoauthconfigurations-permissions"
}
-->

|ScopeName|DisplayName|Description|Type|Admin Consent?|Entities/APIs covered|
|-|-|-|-|-|-|
|`MutualTlsOauthConfiguration.Read.All`| Read all configurations used for mutual transport layer security (mTLS) client authentication. | Allows the app to read configuration used for OAuth 2.0 mutual-TLS client authentication, on behalf of the signed-in user. Permission includes reading trusted certificate authorities. _(Granted to admin role on the device authority's EntraId tenant)_|**Delegated**|**Yes**|List, Get|
|`MutualTlsOauthConfiguration.ReadWrite.All`| Read and write all configurations used for mutual-TLS client authentication. | Allows the app to read and update configuration used for OAuth 2.0 mutual-TLS client authentication, on behalf of the signed-in user. Permission includes adding and updating trusted certificate authorities. _(Granted to admin role on the device authority's EntraId tenant)_|**Delegated**|**Yes**|List, Get, Create, Update, Delete|


## HTTP request

<!-- { "blockType": "ignored" } -->
```http
GET /directory/certificateAuthorities/mutualTlsOauthConfigurations
```

## Optional query parameters
This method supports the `$select` & `$filter` [OData query parameter](/graph/query-parameters) to help customize the response.

### Example Filters/Select
Reference MSGraph [documentation](/graph/query-parameters) for more details regarding the supported operations.
|Pattern|Supported|Description|Syntax|
|-------|:---------:|---|------|
| $count|✓|Retrieves the total count of matching resources.| `/directory/certificateAuthorities/mutualTlsOauthConfigurations/?$count=true`|
| $filter|✓|Filters results (rows).| `/directory/certificateAuthorities/mutualTlsOauthConfigurations/?$filter=id eq '{guid}'`|
| $filter|✓|Filters results (rows). |`/directory/certificateAuthorities/mutualTlsOauthConfigurations/?$filter=manufacturer eq '{manufacturer name}'`|
| $select|✓|Filters properties (columns).|`/directory/certificateAuthorities/mutualTlsOauthConfigurations/?$select=id,operatingSystem'`|
| $orderBy|❌| Orders results. | `/directory/certificateAuthorities/mutualTlsOauthConfigurations?$orderby=displayName desc`
| $top|✓|Sets the page size of results.|`/directory/certificateAuthorities/mutualTlsOauthConfigurations/?$top=2'`|

## Request headers
For more information about adding the Authorization Header, see [Authorization](/graph/security-authorization). The field {token} should be replaced with the associated "Access Token".
| Name | Type |	Description |
|--|--|--|
Authorization	| string	| Bearer {token}. Required. |

## Request Body
Don't supply a request body for this method.

## Response

- If successful, this method returns a `200 OK` response code and a [mutualTlsOauthConfiguration](../resources/mutualTlsOauthConfiguration.md) object in the response body.
- Reference [MSGraph error responses and resource types](/graph/errors) for more information regarding general error codes and error conditions.

## Example
### Request
<!-- {
  "blockType": "request",
  "name": "certificateauthoritypath-list-mutualtlsoauthconfigurations-permissions"
}
-->

```http
GET https://graph.microsoft.com/v1.0/directory/certificateAuthorities/mutualTlsOauthConfigurations
```

### Response

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.certificateAuthority"
}
-->

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft-ppe.com/beta/$metadata#directory/certificateAuthorities/mutualTlsOauthConfigurations",
    "value": [
        {
            "id": "0d23b3d1-fc7b-51f5-1b3c-a494b556ccb2",
            "deletedDateTime": null,
            "displayName": "Contoso",
            "tlsClientAuthParameter": "tls_client_auth_san_uri",
            "certificateAuthorities": [
                {
                    "isRootAuthority": true,
                    "certificateRevocationListUrl": "http://contoso.ctp.net",
                    "deltaCertificateRevocationListUrl": null,
                    "certificate": "MIIGGz..3x5oVWiKvuskw==",
                    "issuer": "E=test@contoso.ctp.net, CN=root-ca, OU=testme, O=MS, L=Redmond, S=WA, C=US",
                    "issuerSki": "E383753242345234AC9EA4F0C01410"
                }
            ]
        },
        {
            "id": "2809d65b-51f5-453e-1b3c-90ccc0a3ce22",
            "deletedDateTime": null,
            "displayName": "test1",
            "tlsClientAuthParameter": "tls_client_auth_san_uri",
            "certificateAuthorities": [
                {
                    "isRootAuthority": true,
                    "certificateRevocationListUrl": null,
                    "deltaCertificateRevocationListUrl": null,
                    "certificate": "MIIFOTCCAyGgAw..0Z+E/",
                    "issuer": "CN=Azure_IoT_Config_Cli_Cert",
                    "issuerSki": "46F807234634534B4A018C987E3D0EE7E9850198D0"
                }
            ]
        },
        {
            "id": "2809d65b-b2f6-51f5-1b3c-2809d65b",
            "deletedDateTime": null,
            "displayName": "test2",
            "tlsClientAuthParameter": "tls_client_auth_san_email",
            "certificateAuthorities": [
                {
                    "isRootAuthority": true,
                    "certificateRevocationListUrl": null,
                    "deltaCertificateRevocationListUrl": null,
                    "certificate": "MIIF..szY=",
                    "issuer": "CN=TestRoot1, O=Test, L=Redmond, S=Washington, C=US",
                    "issuerSki": "CFDACA3798646D23423523432CC056533A582C"
                }
            ]
        }
    ]
}
```
