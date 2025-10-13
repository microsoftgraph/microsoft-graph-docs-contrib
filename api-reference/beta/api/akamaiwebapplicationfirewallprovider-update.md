---
title: "Update akamaiWebApplicationFirewallProvider"
description: "Update the properties of an akamaiWebApplicationFirewallProvider object."
author: "more-rasika"
ms.date: 10/10/2025
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
---

# Update akamaiWebApplicationFirewallProvider

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of an akamaiWebApplicationFirewallProvider object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "akamaiwebapplicationfirewallprovider-update-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/akamaiwebapplicationfirewallprovider-update-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /akamaiWebApplicationFirewallProvider
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
|hostPrefix|String|**TODO: Add Description** Optional.|
|clientSecret|String|**TODO: Add Description** Optional.|
|clientToken|String|**TODO: Add Description** Optional.|
|accessToken|String|**TODO: Add Description** Optional.|



## Response

If successful, this method returns a `200 OK` response code and an updated [akamaiWebApplicationFirewallProvider](../resources/akamaiwebapplicationfirewallprovider.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "update_akamaiwebapplicationfirewallprovider"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/akamaiWebApplicationFirewallProvider
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.akamaiWebApplicationFirewallProvider",
  "displayName": "String",
  "hostPrefix": "String",
  "clientSecret": "String",
  "clientToken": "String",
  "accessToken": "String"
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
  "@odata.type": "#microsoft.graph.akamaiWebApplicationFirewallProvider",
  "id": "825b9658-a044-f2de-d1bf-6ae9f9f14b86",
  "displayName": "String",
  "hostPrefix": "String",
  "clientSecret": "String",
  "clientToken": "String",
  "accessToken": "String"
}
```

