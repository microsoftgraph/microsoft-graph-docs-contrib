---
title: "Update cloudFlareWebApplicationFirewallProvider"
description: "Update the properties of a cloudFlareWebApplicationFirewallProvider object."
author: "more-rasika"
ms.date: 10/10/2025
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
---

# Update cloudFlareWebApplicationFirewallProvider

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a cloudFlareWebApplicationFirewallProvider object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "cloudflarewebapplicationfirewallprovider-update-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/cloudflarewebapplicationfirewallprovider-update-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /cloudFlareWebApplicationFirewallProvider
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]


**TODO: Remove properties that don't apply**
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|**TODO: Add Description** Inherited from [webApplicationFirewallProvider](../resources/webapplicationfirewallprovider.md). Required.|
|apiToken|String|**TODO: Add Description** Optional.|
|zoneId|String|**TODO: Add Description** Optional.|



## Response

If successful, this method returns a `200 OK` response code and an updated [cloudFlareWebApplicationFirewallProvider](../resources/cloudflarewebapplicationfirewallprovider.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "update_cloudflarewebapplicationfirewallprovider"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/cloudFlareWebApplicationFirewallProvider
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.cloudFlareWebApplicationFirewallProvider",
  "displayName": "String",
  "apiToken": "String",
  "zoneId": "String"
}
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.cloudFlareWebApplicationFirewallProvider",
  "id": "b234a35a-9b72-2fe3-a484-ed5fbddea930",
  "displayName": "String",
  "apiToken": "String",
  "zoneId": "String"
}
```

