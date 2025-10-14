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

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a webApplicationFirewallProvider object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "webapplicationfirewallprovider-update-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/webapplicationfirewallprovider-update-permissions.md)]

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


|Property|Type|Description|
|:---|:---|:---|
|displayName|String|The friendly display name of the Web Application Firewall provider configuration. Required.|



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
PATCH https://graph.microsoft.com/beta/identity/riskPrevention/webApplicationFirewallProviders/{webApplicationFirewallProviderId}
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
  "truncated": true
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

