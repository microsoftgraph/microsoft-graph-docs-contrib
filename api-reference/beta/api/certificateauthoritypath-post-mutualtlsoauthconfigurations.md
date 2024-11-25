---
title: "Create Mutual TLS OAuth Configuration"
description: "Create a mutual TLS OAuth Configuration."
author: "sofia-geislinger"
ms.localizationpriority: medium
ms.prod: "identity-and-access"
ms.subservice: "entra-id"
doc_type: apiPageType
ms.date: 11/24/2024
---

# Create mutualTlsOauthConfigurations

Namespace: microsoft.graph

Add a [mutualTlsOauthConfiguration](../resources/mutualTlsOauthConfiguration.md) resource that contains a specified certificate authority object.
[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "certificateauthoritypath-post-mutualtlsoauthconfigurations-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/certificateauthoritypath-post-mutualtlsoauthconfigurations-permissions.md)]

## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->

``` http
POST /certificateAuthorities/mutualTlsOauthConfigurations/
```

### Request headers

For more information about adding the Authorization Header, see [Authorization](/graph/security-authorization). The field {token} should be replaced with the associated "Access Token".

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|


### Request Body

In the request body, supply a JSON representation of the [mutualTlsOauthConfiguration](../resources/mutualtlsoauthconfiguration.md) object.

You can specify the following properties when creating a **mutualTlsOauthConfigurations**.

|Property|Type|Description|Key|Required|ReadOnly|
|-|-|-|-|-|-|
|`displayName`|`String`|Friendly name|
|`tlsClientAuthParameter`| [tlsClientRegistrationMetadata](../resources/enums.md#tlsclientregistrationmetadata-values) | Specifies which field in the certificate contains the subject ID. The possible values are: `tls_client_auth_subject_dn`, `tls_client_auth_san_dns`, `tls_client_auth_san_uri`, `tls_client_auth_san_ip`, `tls_client_auth_san_email`, `unknownFutureValue`. Required. |No | Yes| Yes|
|`certificateAuthority`|[Collection(microsoft.graph.certificateAuthority)](../resources/certificateauthority.md) | Multi-value property representing a list of trusted certificate authorities. | No | No | No |

### Response

- If successful, this method returns a `201 Created` response code and a [mutualTlsOauthConfiguration](../resources/mutualTlsOauthConfiguration.md) object in the response body.
- Reference [MSGraph error responses and resource types](/graph/errors) for more information regarding general error codes and error conditions.

|Response Code|Condition|Message|
|-|-|-|
|`201` | Request was successful ||
|`400` | Validation failure in any of the certificate validation steps mentioned | Unable to validate device certificate|

## Example

### Request
<!-- {
  "blockType": "request",
  "name": "create_mutualtlsoauthconfiguration_from_"
}
-->

```http
POST https://graph.microsoft.com/v1.0/directory/certificateAuthorities/mutualTlsOauthConfigurations
Content-Type: application/json

{
  "displayName": "DoorCamera_Model_X_TrustedCAs",
  "tlsClientAuthParameter": "tls_client_auth_subject_dn",
  "certificateAuthorities": [
    {
      "@odata.type": "microsoft.graph.certificateAuthority"
    }
  ]
}
```


### Response

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.mutualTlsOauthConfiguration"
}
-->

```http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#directory/certificateAuthorities/mutualTlsOauthConfigurations/$entity",
  "id":"eec5ba11-2fc0-4113-83a2-ed986ed13cdb",
  "displayName": "DoorCamera_Model_X_TrustedCAs",
  "tlsClientAuthParameter": "tls_client_auth_subject_dn",
  "certificateAuthorities": [
    {
      "@odata.type": "microsoft.graph.certificateAuthority"
    }
  ]
}
```
