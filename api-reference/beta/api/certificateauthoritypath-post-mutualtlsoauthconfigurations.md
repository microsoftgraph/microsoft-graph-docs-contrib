---
title: "Create mutualTlsOauthConfiguration"
description: "Create a mutualTlsOauthConfiguration resource that contains a specified certificate authority object."
author: "sofia-geislinger"
ms.date: 12/31/2024
ms.localizationpriority: medium
ms.subservice: "entra-id"
doc_type: apiPageType
---

# Create mutualTlsOauthConfiguration

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a [mutualTlsOauthConfiguration](../resources/mutualtlsoauthconfiguration.md) resource that contains a specified certificate authority object.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "certificateauthoritypath_post_mutualtlsoauthconfigurations" } -->
[!INCLUDE [permissions-table](../includes/permissions/certificateauthoritypath-post-mutualtlsoauthconfigurations-permissions.md)]

[!INCLUDE [rbac-mtlsoauthconfig-apis](../includes/rbac-for-apis/rbac-mtlsoauthconfig-apis.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

``` http
POST /directory/certificateAuthorities/mutualTlsOauthConfigurations
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [mutualTlsOauthConfiguration](../resources/mutualtlsoauthconfiguration.md) object.

You can specify the following properties when you create a **mutualTlsOauthConfiguration**.

|Property|Type|Description|
|:---|:---|:---|
|certificateAuthority|[certificateAuthority](../resources/certificateauthority.md) collection | Multi-value property that represents a list of trusted certificate authorities. Optional. |
|displayName|String|Friendly name. Optional. |
|tlsClientAuthParameter| tlsClientRegistrationMetadata | Specifies which field in the certificate contains the subject ID. The possible values are: `tls_client_auth_subject_dn`, `tls_client_auth_san_dns`, `tls_client_auth_san_uri`, `tls_client_auth_san_ip`, `tls_client_auth_san_email`, `unknownFutureValue`. Required. Read-only. |

## Response

If successful, this method returns a `201 Created` response code and a [mutualTlsOauthConfiguration](../resources/mutualtlsoauthconfiguration.md) object in the response body. If a validation failure occurs during the certificate validation steps, the method returns a `400 Bad Request` along with the error message, `Invalid value specified for property 'certificate' of resource 'CertificateAuthorityInformation'.`.

For more information, see [Microsoft Graph error responses and resource types](/graph/errors).

## Examples

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_mutualtlsoauthconfiguration_from_"
}
-->

```http
POST https://graph.microsoft.com/beta/directory/certificateAuthorities/mutualTlsOauthConfigurations
Content-Type: application/json

{
  "displayName": "DoorCamera_Model_X_TrustedCAs",
  "tlsClientAuthParameter": "tls_client_auth_san_uri",
  "certificateAuthorities": [
    {
      "@odata.type": "microsoft.graph.certificateAuthority"
    }
  ]
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-mutualtlsoauthconfiguration-from--csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-mutualtlsoauthconfiguration-from--go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-mutualtlsoauthconfiguration-from--java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-mutualtlsoauthconfiguration-from--javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-mutualtlsoauthconfiguration-from--php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/create-mutualtlsoauthconfiguration-from--powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-mutualtlsoauthconfiguration-from--python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.mutualTlsOauthConfiguration"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#directory/certificateAuthorities/mutualTlsOauthConfigurations/$entity",
  "id":"eec5ba11-2fc0-4113-83a2-ed986ed13cdb",
  "displayName": "DoorCamera_Model_X_TrustedCAs",
  "tlsClientAuthParameter": "tls_client_auth_san_uri",
  "certificateAuthorities": [
    {
      "@odata.type": "microsoft.graph.certificateAuthority"
    }
  ]
}
```
