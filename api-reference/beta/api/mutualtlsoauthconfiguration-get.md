---
title: "Get a mutual TLS OAuth Configuration"
description: "Get a mutual TLS OAuth Configuration."
author: "atastrophic"
ms.localizationpriority: medium
ms.prod: "identity-and-access"
ms.subservice: "entra-id"
doc_type: apiPageType
ms.date: 11/24/2024
---

# Get mutualTlsOauthConfigurations

Namespace: microsoft.graph

Returns the specified [mutualTlsOauthConfiguration](../resources/mutualTlsOauthConfiguration.md) resource.

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "mutualtlsoauthconfiguration-get-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/mutualtlsoauthconfiguration-get-permissions.md)]

## HTTP request

The `{id}` in the request is the value of the **id** property of the device template.
<!-- { "blockType": "ignored" } -->
```http
GET /directory/certificateAuthorities/mutualTlsOauthConfigurations/{id}
```

## Optional query parameters

This method supports the `$select` & `$filter` [OData query parameter](/graph/query-parameters) to help customize the response.

### Example Filters/Selec

|Pattern|Supported|Syntax|
|-------|:---------:|------|
|Filter|✓|`//directory/certificateAuthorities/mutualTlsOauthConfigurations/?$filter=id eq '{guid}'`|
|Filter|✓|`//directory/certificateAuthorities/mutualTlsOauthConfigurations/?$filter=manufacturer eq '{manufacturer name}'`|
|Select|✓|`//directory/certificateAuthorities/mutualTlsOauthConfigurations/?$select=id,operatingSystem'`|

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request Body

Don't supply a request body for this method.

## Response

- Reference [MSGraph error responses and resource types](/graph/errors) for more information regarding general error codes and error conditions.

## Examples

### Request

<!-- {
  "blockType": "request",
  "name": "get_mutualtlsoauthconfiguration"
}
-->
```http
GET https://graph.microsoft.com/v1.0/directory/certificateAuthorities/mutualTlsOauthConfigurations/eec5ba11-2fc0-4113-83a2-ed986ed13cdb
```

### Response

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.mutualTlsOauthConfiguration"
}
-->

```http
HTTP/1.1 201 Created
Location: "https://graph.microsoft.com/v1.0/directory/certificateAuthorities/mutualTlsOauthConfigurations/eec5ba11-2fc0-4113-83a2-ed986ed13cdb"

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
