---
title: "Create webApplicationFirewallProvider"
description: "Create a new webApplicationFirewallProvider object."
author: "more-rasika"
ms.date: 10/10/2025
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
---

# Create webApplicationFirewallProvider

Namespace: microsoft.graph



Create a new [webApplicationFirewallProvider](../resources/webApplicationFirewallProvider.md) object. You can create one of the following subtypes that are derived from **webApplicationFirewallProvider**.

- [akamaiWebApplicationFirewallProvider](../resources/akamaiWebApplicationFirewallProvider.md)
- [cloudFlareWebApplicationFirewallProvider](../resources/cloudFlareWebApplicationFirewallProvider.md)

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "riskpreventioncontainer-post-webapplicationfirewallproviders-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/riskpreventioncontainer-post-webapplicationfirewallproviders-permissions.md)]

[!INCLUDE [rbac-wafprotection-apis-write](../includes/rbac-for-apis/rbac-wafprotection-apis-write.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /identity/riskPrevention/webApplicationFirewallProviders
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [webApplicationFirewallProvider](../resources/webapplicationfirewallprovider.md) object.

You can specify the following properties when creating a **webApplicationFirewallProvider**. You must specify the **@odata.type** property to specify the type of **webApplicationFirewallProvider** to create; for example, `@odata.type": "microsoft.graph.AkamaiWebApplicationFirewallProvider"`.


|Property|Type|Description|
|:---|:---|:---|
|displayName|String|The display name of this WAF provider configuration. Supported for all providers. Required. Inherited from [webApplicationFirewallProvider](../resources/webapplicationfirewallprovider.md).|
|accessToken|String|Akamai API access token used to authenticate to the Akamai account. Contact your Akamai Customer Success Manager for assistance with your accessToken. Supported for Akamai only. Required.|
|clientSecret|String|Akamai API client secret used in conjunction with the client token and access token for authentication. Contact your Akamai Customer Success Manager for assistance with this information. Supported for Akamai only. Required.|
|clientToken|String|Akamai API client token used for authentication to the Akamai account. Contact your Akamai Customer Success Manager for assistance with this information. Supported for Akamai only. Required.|
|hostPrefix|String|Prefix used to identify the host or domain in Akamai configuration operations. This value may be required for certain API calls or configuration scenarios. Supported for Akamai only. Required.|
|apiToken|String|Cloudflare API token or credential used by Microsoft services to authenticate to the Cloudflare account. Contact your Cloudflare Customer Success Manager for assistance with your apitoken. Supported for Cloudflare only. Required.|
|zoneId|String|Default Cloudflare Zone ID associated with this provider configuration. This ID identifies the DNS zone in Cloudflare that is commonly used for verification and configuration operations for the provider. Supported for Cloudflare only. Required.|


## Response

If successful, this method returns a `201 Created` response code and a [webApplicationFirewallProvider](../resources/webapplicationfirewallprovider.md) object in the response body.

## Examples

### Example 1: Create a new AkamaiWebApplicationFirewallProvider object

#### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_webapplicationfirewallprovider_from_akamai"
}
-->
``` http
POST https://graph.microsoft.com/v1.0/identity/riskPrevention/webApplicationFirewallProviders
Content-Type: application/json

{
    "@odata.type": "#microsoft.graph.akamaiWebApplicationFirewallProvider",
    "displayName": "Akamai Provider Example",
    "hostPrefix": "akab-exampleprefix",
    "clientSecret": "akamai_example_secret_123",
    "clientToken": "akamai_example_token_456",
    "accessToken": "akamai_example_token_789"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-webapplicationfirewallprovider-from-akamai-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-webapplicationfirewallprovider-from-akamai-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-webapplicationfirewallprovider-from-akamai-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-webapplicationfirewallprovider-from-akamai-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-webapplicationfirewallprovider-from-akamai-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-webapplicationfirewallprovider-from-akamai-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


#### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.webApplicationFirewallProvider"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#identity/riskPrevention/webApplicationFirewallProviders/$entity",
    "@odata.type": "#microsoft.graph.akamaiWebApplicationFirewallProvider",
    "id": "00000000-0000-0000-0000-000000000002",
    "displayName": "Akamai Provider Example",
    "hostPrefix": "akab-exampleprefix"
}
```

### Example 2: Create a new cloudFlareWebApplicationFirewallProvider object

#### Request

The following example shows a request to create a new Cloudflare WAF object.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_webapplicationfirewallprovider_from_cloudflare"
}
-->
``` http
POST https://graph.microsoft.com/v1.0/identity/riskPrevention/webApplicationFirewallProviders
Content-Type: application/json

{
    "@odata.type": "#microsoft.graph.cloudFlareWebApplicationFirewallProvider",
    "displayName": "Cloudflare Provider Example",
    "zoneId": "11111111111111111111111111111111",
    "apiToken": "cf_example_token_123"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-webapplicationfirewallprovider-from-cloudflare-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-webapplicationfirewallprovider-from-cloudflare-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-webapplicationfirewallprovider-from-cloudflare-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-webapplicationfirewallprovider-from-cloudflare-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-webapplicationfirewallprovider-from-cloudflare-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-webapplicationfirewallprovider-from-cloudflare-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


#### Response

The following example shows the response with Cloudflare WAF object.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.cloudFlareWebApplicationFirewallProvider"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#identity/riskPrevention/webApplicationFirewallProviders/$entity",
    "@odata.type": "#microsoft.graph.cloudFlareWebApplicationFirewallProvider",
    "id": "00000000-0000-0000-0000-000000000001",
    "displayName": "Cloudflare Provider Example",
    "zoneId": "11111111111111111111111111111111"
}
```
