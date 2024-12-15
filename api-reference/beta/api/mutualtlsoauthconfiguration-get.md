---
title: "Get mutualTlsOauthConfiguration"
description: "Get the properties and relationships of the specified mutualTlsOauthConfiguration resource."
author: "atastrophic"
ms.localizationpriority: medium
ms.subservice: "entra-id"
doc_type: apiPageType
ms.date: 11/24/2024
---

# Get mutualTlsOauthConfiguration

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the properties and relationships of the specified [mutualTlsOauthConfiguration](../resources/mutualtlsoauthconfiguration.md) resource.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "mutualtlsoauthconfiguration-get-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/mutualtlsoauthconfiguration-get-permissions.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->
```http
GET /directory/certificateAuthorities/mutualTlsOauthConfigurations/{mutualTlsOauthConfigurationId}
```
>**Note:** The `{mutualTlsOauthConfigurationId}` in the request URL is the value of the **id** property of the **deviceTemplate**.

## Optional query parameters

This method supports the `$filter`and `$select` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [mutualTlsOauthConfiguration](../resources/mutualtlsoauthconfiguration.md) object in the response body.

For more information, see [Microsoft Graph error responses and resource types](/graph/errors).

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "get_mutualtlsoauthconfiguration"
}
-->
```http
GET https://graph.microsoft.com/beta/directory/certificateAuthorities/mutualTlsOauthConfigurations/a7199212-950f-4a2d-ba1e-017c48da1d19b
```

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.mutualTlsOauthConfiguration"
}
-->

```http
HTTP/1.1 201 Created
Location: "https://graph.microsoft.com/beta/directory/certificateAuthorities/mutualTlsOauthConfigurations/a7199212-950f-4a2d-ba1e-017c48da1d19"

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
```
