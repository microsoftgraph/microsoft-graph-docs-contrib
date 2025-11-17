---
title: "Update webApplicationFirewallProvider"
description: "Update the properties of a webApplicationFirewallProvider object."
author: "more-rasika"
ms.date: 10/10/2025
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
---

# Update webApplicationFirewallProvider

Namespace: microsoft.graph



Update the properties of a [webApplicationFirewallProvider](../resources/webapplicationfirewallprovider.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "webapplicationfirewallprovider-update-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/webapplicationfirewallprovider-update-permissions.md)]

[!INCLUDE [rbac-wafprotection-apis-write](../includes/rbac-for-apis/rbac-wafprotection-apis-write.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /identity/riskPrevention/webApplicationFirewallProviders/{webApplicationFirewallProviderId}
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]
You must specify the **@odata.type** property to specify the type of [webApplicationFirewallProvider](../resources/webapplicationfirewallprovider.md) object to update. For example, "@odata.type": "#microsoft.graph.akamaiWebApplicationFirewallProvider".

|Property|Type|Description|
|:---|:---|:---|
|displayName|String|The friendly display name of the Web Application Firewall provider configuration.|
|accessToken|String|Akamai API access token used to authenticate to the Akamai account. Contact your Akamai Customer Success Manager for assistance with your accessToken. Supported for Akamai only.|
|clientSecret|String|Akamai API client secret used in conjunction with the client token and access token for authentication. Contact your Akamai Customer Success Manager for assistance with this information. Supported for Akamai only.|
|clientToken|String|Akamai API client token used for authentication to the Akamai account. Contact your Akamai Customer Success Manager for assistance with this information. Supported for Akamai only.|
|hostPrefix|String|Prefix used to identify the host or domain in Akamai configuration operations. This value may be required for certain API calls or configuration scenarios. Supported for Akamai only.|
|apiToken|String|Cloudflare API token or credential used by Microsoft services to authenticate to the Cloudflare account. Contact your Cloudflare Customer Success Manager for assistance with your apitoken. Supported for Cloudflare only.|
|zoneId|String|Default Cloudflare Zone ID associated with this provider configuration. This ID identifies the DNS zone in Cloudflare that is commonly used for verification and configuration operations for the provider. Supported for Cloudflare only.|



## Response

If successful, this method returns a `200 OK` response code and an updated [webApplicationFirewallProvider](../resources/webapplicationfirewallprovider.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "update_webapplicationfirewallprovider"
}
-->
``` http
PATCH https://graph.microsoft.com/v1.0/identity/riskPrevention/webApplicationFirewallProviders/{webApplicationFirewallProviderId}
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.cloudFlareWebApplicationFirewallProvider",
  "displayName": "String"
}
```


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
  "@odata.type": "#microsoft.graph.cloudFlareWebApplicationFirewallProvider",
  "id": "4d8ac75a-e882-18c6-8ad4-2ab20c742e52",
  "displayName": "String"
}
```

