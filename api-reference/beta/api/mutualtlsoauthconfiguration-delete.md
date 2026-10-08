---
title: "Delete mutualTlsOauthConfiguration"
description: "Delete the specified mutualTlsOauthConfiguration resource."
author: "sofia-geislinger"
ms.date: 12/31/2024
ms.localizationpriority: medium
ms.subservice: "entra-id"
doc_type: apiPageType
---

# Delete mutualTlsOauthConfiguration

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Delete the specified [mutualTlsOauthConfiguration](../resources/mutualtlsoauthconfiguration.md) resource. You must first [delete the deviceTemplate object](../api/devicetemplate-delete.md) that references the ID.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "mutualtlsoauthconfiguration_delete" } -->
[!INCLUDE [permissions-table](../includes/permissions/mutualtlsoauthconfiguration-delete-permissions.md)]

[!INCLUDE [rbac-mtlsoauthconfig-apis](../includes/rbac-for-apis/rbac-mtlsoauthconfig-apis.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
DELETE /directory/certificateAuthorities/mutualTlsOauthConfigurations/{mutualTlsOauthConfigurationId}
```
> **Note:** The `{mutualTlsOauthConfigurationId}` in the request URL is the value of the **id** property of the **mutualTlsOauthConfiguration** object.

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `204 No Content` response code. Mutual TLS OAuth configurations can't be deleted until all linked device templates and their linked devices are deleted; otherwise, this method returns a `400 Bad Request` response code.

For more information, see [Microsoft Graph error responses and resource types](/graph/errors).

## Examples

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "delete_mutualtlsoauthconfiguration"
}
-->
```http
DELETE https://graph.microsoft.com/beta/certificateAuthorities/mutualTlsOauthConfigurations/2d62b12a-0163-457d-9796-9602e9807e1
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/delete-mutualtlsoauthconfiguration-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/delete-mutualtlsoauthconfiguration-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/delete-mutualtlsoauthconfiguration-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/delete-mutualtlsoauthconfiguration-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/delete-mutualtlsoauthconfiguration-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/delete-mutualtlsoauthconfiguration-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
```http
HTTP/1.1 204 No Content
```

