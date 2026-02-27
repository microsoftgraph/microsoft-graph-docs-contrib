---
title: "List certificateBasedAuthPki objects"
description: "Get a list of the certificateBasedAuthPki objects and their properties."
author: "vimranga"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
ms.date: 06/23/2025
---

# List certificateBasedAuthPki objects

Namespace: microsoft.graph

Get a list of the [certificateBasedAuthPki](../resources/certificatebasedauthpki.md) objects and their properties.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "publickeyinfrastructureroot_list_certificatebasedauthconfigurations" } -->
[!INCLUDE [permissions-table](../includes/permissions/publickeyinfrastructureroot-list-certificatebasedauthconfigurations-permissions.md)]
[!INCLUDE [rbac-cert-based-authpkis-apis](../includes/rbac-for-apis/rbac-cert-based-authpkis-apis.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

```http
GET /directory/publicKeyInfrastructure/certificateBasedAuthConfigurations
```

## Optional query parameters

This method supports the `$filter` (`eq`, `startswith`), `$top`, `$orderby`, and `$count` OData query parameters to help customize the response. For `$top`, the default page size is 100 and max is 999. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [certificateBasedAuthPki](../resources/certificatebasedauthpki.md) objects in the response body.

## Examples

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_certificatebasedauthpki"
}
-->

```msgraph-interactive
GET https://graph.microsoft.com/v1.0/directory/publicKeyInfrastructure/certificateBasedAuthConfigurations
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-certificatebasedauthpki-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-certificatebasedauthpki-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-certificatebasedauthpki-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-certificatebasedauthpki-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-certificatebasedauthpki-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-certificatebasedauthpki-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-certificatebasedauthpki-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.certificateBasedAuthPki)"
}
-->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.certificateBasedAuthPki",
      "id": "fdd9841c-90c6-4234-a116-d72a5cd2c583",
      "deletedDateTime": null,
      "displayName": "Contoso PKI",
      "status": "succeeded",
      "statusDetails": null,
      "lastModifiedDateTime": "2024-10-16T18:09:56Z"
    }
  ]
}
```
