---
title: "List mutualTlsOauthConfigurations"
description: "Get a list of the available mutualTlsOauthConfiguration resources."
author: "sofia-geislinger"
ms.date: 11/24/2024
ms.localizationpriority: medium
ms.subservice: "entra-id"
doc_type: apiPageType
---

# List mutualTlsOauthConfigurations

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the available [mutualTlsOauthConfiguration](../resources/mutualtlsoauthconfiguration.md) resources.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "certificateauthoritypath-list-mutualtlsoauthconfigurations-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/certificateauthoritypath-list-mutualtlsoauthconfigurations-permissions.md)]

[!INCLUDE [rbac-mtlsoauthconfig-apis](../includes/rbac-for-apis/rbac-mtlsoauthconfig-apis.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /certificateAuthorities/mutualTlsOauthConfigurations
```

## Optional query parameters

This method supports the `$count`, `$filter`, `$select`, and `$orderby` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [mutualTlsOauthConfiguration](../resources/mutualtlsoauthconfiguration.md) objects in the response body.

For more information, see [Microsoft Graph error responses and resource types](/graph/errors).

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "certificateauthoritypath-list-mutualtlsoauthconfigurations-permissions"
}
-->

```http
GET https://graph.microsoft.com/beta/directory/certificateAuthorities/mutualTlsOauthConfigurations
```

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.mutualTlsOauthConfiguration)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#directory/certificateAuthorities/mutualTlsOauthConfigurations",
  "value": [
    {
      "id": "a7199212-950f-4a2d-ba1e-017c48da1d19",
      "deletedDateTime": null,
      "displayName": "Standard TLS cert config",
      "tlsClientAuthParameter": "tls_client_auth_san_uri",
      "certificateAuthorities": [
        {
          "@odata.type": "microsoft.graph.certificateAuthority"
        }
      ]
    }
  ]
}
```
