---
title: "connectivity: getWebCategoryByUrl"
description: "Validate the web categorization of a Uniform Resource Locator (URL) in Global Secure Access (GSA) web content filtering."
author: "fgomulka"
ms.date: 08/25/2025
ms.localizationpriority: medium
ms.subservice: "entra-global-secure-access"
doc_type: apiPageType
---

# connectivity: getWebCategoryByUrl

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Validate the web categorization of a Uniform Resource Locator (URL) in Global Secure Access (GSA) web content filtering.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "networkaccess_connectivity_getwebcategorybyurl" } -->
[!INCLUDE [permissions-table](../includes/permissions/networkaccess-connectivity-getwebcategorybyurl-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
GET /networkAccess/connectivity/getWebCategoryByUrl(url='@url')?@url=url
```

## Function parameters
In the request URL, provide the following query parameters with values.

|Parameter|Type|Description|
|:---|:---|:---|
|url|String|Uniform Resource Locator (url). Required.|


## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this function returns a `200 OK` response code and a [webCategory](../resources/networkaccess-webcategory.md) in the response body.

## Examples

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "connectivity.getwebcategorybyurl"
}
-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/networkaccess/connectivity/getWebCategoryByUrl(url='@url')?@url=msn.com/en-us/sports
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/connectivitygetwebcategorybyurl-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/connectivitygetwebcategorybyurl-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/connectivitygetwebcategorybyurl-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/connectivitygetwebcategorybyurl-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/connectivitygetwebcategorybyurl-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/connectivitygetwebcategorybyurl-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
>
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.networkaccess.webCategory"
}
-->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#microsoft.graph.networkaccess.webCategory",
    "name": "Sports",
    "displayName": "Sports",
    "group": "GeneralSurfing"
}
```

