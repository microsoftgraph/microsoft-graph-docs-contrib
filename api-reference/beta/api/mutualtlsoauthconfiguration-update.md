---
title: "Update mutualTlsOauthConfiguration"
description: "Update the specified mutualTlsOauthConfiguration resource."
author: "ploegert"
ms.localizationpriority: medium
ms.subservice: "entra-id"
doc_type: apiPageType
ms.date: 11/24/2024
---

# Update mutualTlsOauthConfiguration

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the specified [mutualTlsOauthConfiguration](../resources/mutualtlsoauthconfiguration.md) resource.

You can only update the following two properties: **displayName**, **certificateAuthorities**.

To update a subset of objects in the **certificateAuthorities** collection, first get the complete list, make your modifications, and then repost the entire contents of the **certificateAuthorities** attribute list in the request body. Excluding a subset of objects removes them from the collection.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "mutualtlsoauthconfiguration-update-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/mutualtlsoauthconfiguration-update-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /directory/certificateAuthorities/mutualTlsOauthConfigurations/{mutualTlsOauthConfigurationId}
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [mutualTlsOauthConfiguration](../resources/mutualtlsoauthconfiguration.md) object.

You can specify the following properties when you update a **mutualTlsOauthConfiguration**.

|Property|Type|Description|
|:---|:---|:---|
|certificateAuthority|[certificateAuthority](../resources/certificateauthority.md) collection | Multi-value property that represents a list of trusted certificate authorities. |
|displayName|String|Friendly name.|

## Response

If successful, this method returns a `200 OK` response code and a [mutualTlsOauthConfiguration](../resources/mutualtlsoauthconfiguration.md) object in the response body. If a validation failure occurs during the certificate validation steps, the method returns a `400 Bad Request` along with the error message, `Invalid value specified for property 'certificate' of resource 'CertificateAuthorityInformation'`. For more information, see [Microsoft Graph error responses and resource types](/graph/errors).

## Examples

### Example 1: Update the display name

The following example shows how to update the display name of a **mutualTlsOauthConfiguration** object from `DoorCamera_Model_X_TrustedCAs` to `THIS_IS_A_NEW_NAME`.

#### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "update_mutualtlsoauthconfiguration"
}
-->
```http
PATCH https://graph.microsoft.com/beta/directory/certificateAuthorities/mutualTlsOauthConfigurations/eec5ba11-2fc0-4113-83a2-ed986ed13cdb
Content-Type: application/json

{
  "displayName": "THIS_IS_A_NEW_NAME"
}
```

#### Response
The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.mutualTlsOauthConfiguration"
}
-->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#directory/certificateAuthorities/mutualTlsOauthConfigurations/$entity",
  "id":"eec5ba11-2fc0-4113-83a2-ed986ed13cdb",
  "displayName": "THIS_IS_A_NEW_NAME",
  "tlsClientAuthParameter": "tls_client_auth_subject_dn",
  "certificateAuthorities": [
    {
      "@odata.type": "microsoft.graph.certificateAuthority"
    }
  ]
}
```

### Example 2: Remove a certificate from the list of certificateAuthorities

This example assumes that the original object stored has the following value. Note that the starting resource contains two values in the certificate authority list.

```json
{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#directory/certificateAuthorities/mutualTlsOauthConfigurations/$entity",
  "id": "eec5ba11-2fc0-4113-83a2-ed986ed13cdb",
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
#### Request

The following example shows a request that updates the certificate authority list to contain only a single certificate, which removes the other.

<!-- {
  "blockType": "request",
  "name": "update_mutualtlsoauthconfiguration_remove_certificate"
}
-->
```http
PATCH https://graph.microsoft.com/beta/directory/certificateAuthorities/mutualTlsOauthConfigurations/00001111-aaaa-2222-bbbb-3333cccc4444
Content-Type: application/json

{
  "certificateAuthorities": [
    {
      "isRootAuthority": true,
      "certificateRevocationListUrl": "http://acme.com/root.crl",
      "deltaCertificateRevocationListUrl": null,
      "certificate": "Binary",
      "issuer": "acme Inc",
      "issuerSubjectkeyIdentifier": "SKI"
    }
  ]
}
```

#### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.mutualTlsOauthConfiguration"
}
-->
```http
HTTP/1.1 200 OK
Location: "https://graph.microsoft.com/beta/directory/certificateAuthorities/mutualTlsOauthConfigurations/00001111-aaaa-2222-bbbb-3333cccc4444"

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
      "certificate": "Binary",
      "issuer": "acme Inc",
      "issuerSubjectkeyIdentifier": "SKI"
    }
  ]
}
```
