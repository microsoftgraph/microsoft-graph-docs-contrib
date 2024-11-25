---
title: "Update a mutual TLS OAuth Configuration"
description: "Update a mutual TLS OAuth Configuration."
author: "ploegert"
ms.localizationpriority: medium
ms.prod: "identity-and-access"
ms.subservice: "entra-id"
doc_type: apiPageType
ms.date: 11/24/2024
---

# Update mutualTlsOauthConfigurations

Namespace: microsoft.graph

Updates the specified [mutualTlsOauthConfiguration](../resources/mutualTlsOauthConfiguration.md) resource.

The only two properties that can be updated via patch are:

- displayName
- certificateAuthorities

If you want to update a subset of items in the certificate list, you want to first get the whole list, make your modifications, and repost the entire contents of the certficateAuthorities attribute list.

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "mutualtlsoauthconfiguration-update-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/mutualtlsoauthconfiguration-update-permissions.md)]

## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /directory/certificateAuthorities/mutualTlsOauthConfigurations/{id}
```

### Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

### Request Body

In the request body, supply a JSON representation of the [mutualTlsOauthConfiguration](../resources/mutualTlsOauthConfiguration.md) object.

You can specify the following properties when creating a **mutualTlsOauthConfigurations**.

|Property|Type|Description|Key|Required|ReadOnly|
|-|-|-|-|-|-|
|`displayName`|`String`|Friendly name|
|`tlsClientAuthParameter`|[tlsClientRegistrationMetadata](../resources/enums.md#tlsclientregistrationmetadata-values) | Specifies which field in the certificate contains the subject ID. The possible values are: `tls_client_auth_subject_dn`, `tls_client_auth_san_dns`, `tls_client_auth_san_uri`, `tls_client_auth_san_ip`, `tls_client_auth_san_email`, `unknownFutureValue`. Required. |No | Yes| Yes|
|`certificateAuthority`|[Collection(microsoft.graph.certificateAuthority)](../resources/certificateauthority.md) | Multi-value property representing a list of trusted certificate authorities. | No | No | No |

### Response

- If successful, this method returns a `204 Ok` response code and a [mutualTlsOauthConfiguration](../resources/mutualTlsOauthConfiguration.md) object in the response body.
- Reference [MSGraph error responses and resource types](/graph/errors) for more information regarding general error codes and error conditions.

|Response Code|Condition|Message|
|-|-|-|
|`200` | Request was successful ||
|`403` | Validation failure in any of the certificate validation steps mentioned | Unable to validate device certificate|

## Example 1 - Update Display Name

This example assumes the original object stored has the following value:

```json
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

### Request
<!-- {
  "blockType": "request",
  "name": "update_mutualtlsoauthconfiguration"
}
-->
```http
PATCH https://graph.microsoft.com/beta/directory/certificateAuthorities/mutualTlsOauthConfigurations/eec5ba11-2fc0-4113-83a2-ed986ed13cdb

{
  "displayName": "THIS_IS_A_NEW_NAME",
}
```

### Response
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.mutualTlsOauthConfiguration"
}
-->
```http
HTTP/1.1 200 
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#directory/certificateAuthorities/mutualTlsOauthConfigurations/$entity",
  "id":"eec5ba11-2fc0-4113-83a2-ed986ed13cdb",
  "deletedDateTime": null,
  "displayName": "THIS_IS_A_NEW_NAME",
  "tlsClientAuthParameter": "tls_client_auth_subject_dn",
  "certificateAuthorities": [
    {
      "@odata.type": "microsoft.graph.certificateAuthority"
    }
  ]
}
```

## Example 2 - Remove Certificate from list

This example assumes the original object stored has the following value:

```json
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

### Request

```json
PATCH https://graph.microsoft.com/beta/directory/certificateAuthorities/mutualTlsOauthConfigurations/eec5ba11-2fc0-4113-83a2-ed986ed13cdb
Content-Type: application/json

{
  "certificateAuthorities": [
    {
      "isRootAuthority": true,
      "certificateRevocationListUrl": "http://acme.com/root.crl",
      "deltaCertificateRevocationListUrl": null,
      "certificate": "joGrWL+Yqkik/CABWG0d1w....",
      "issuer": "acme Inc",
      "issuerSubjectkeyIdentifier": "SKI"
    }
  ]
}
```

### Response

```json
HTTP/1.1 200 OK
Location: "https://graph.microsoft.com/beta/directory/certificateAuthorities/mutualTlsOauthConfigurations/eec5ba11-2fc0-4113-83a2-ed986ed13cdb"

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
    }
  ]
}
```
