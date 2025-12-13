---
title: "List webApplicationFirewallProvider objects"
description: "Get a list of the webApplicationFirewallProvider objects and their properties."
author: "more-rasika"
ms.date: 10/22/2025
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
---

# List webApplicationFirewallProvider objects

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [webApplicationFirewallProvider](../resources/webapplicationfirewallprovider.md) objects and their properties.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "riskpreventioncontainer_list_webapplicationfirewallproviders" } -->
[!INCLUDE [permissions-table](../includes/permissions/riskpreventioncontainer-list-webapplicationfirewallproviders-permissions.md)]

[!INCLUDE [rbac-wafprotection-apis-read](../includes/rbac-for-apis/rbac-wafprotection-apis-read.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identity/riskPrevention/webApplicationFirewallProviders
```

## Optional query parameters

This method supports the `$filter` OData query parameter to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [webApplicationFirewallProvider](../resources/webapplicationfirewallprovider.md) objects in the response body.

## Examples

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_webapplicationfirewallprovider"
}
-->
``` http
GET https://graph.microsoft.com/beta/identity/riskPrevention/webApplicationFirewallProviders
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-webapplicationfirewallprovider-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-webapplicationfirewallprovider-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-webapplicationfirewallprovider-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-webapplicationfirewallprovider-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-webapplicationfirewallprovider-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-webapplicationfirewallprovider-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.webApplicationFirewallProvider"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#identity/riskPrevention/webApplicationFirewallProviders",
    "value": [
        {
            "@odata.type": "#microsoft.graph.cloudFlareWebApplicationFirewallProvider",
            "id": "00000000-0000-0000-0000-000000000001",
            "displayName": "Cloudflare Provider Example",
            "zoneId": "11111111111111111111111111111111"
        },
        {
            "@odata.type": "#microsoft.graph.akamaiWebApplicationFirewallProvider",
            "id": "00000000-0000-0000-0000-000000000002",
            "displayName": "Akamai Provider Example",
            "hostPrefix": "akab-exampleprefix"
        },
        {
            "@odata.type": "#microsoft.graph.cloudFlareWebApplicationFirewallProvider",
            "id": "00000000-0000-0000-0000-000000000003",
            "displayName": "Cloudflare Provider Secondary",
            "zoneId": "22222222222222222222222222222222"
        }
    ]
}
```

