---
title: "Add webApplicationFirewallProvider"
description: "Add provider by posting to the provider collection."
author: "more-rasika"
ms.date: 10/10/2025
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
---

# Add webApplicationFirewallProvider

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Add provider by posting to the provider collection.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "webapplicationfirewallverificationmodel-post-provider-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/webapplicationfirewallverificationmodel-post-provider-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /identity/riskPrevention/webApplicationFirewallVerifications/{webApplicationFirewallVerificationModelId}/provider/$ref
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [webApplicationFirewallProvider](../resources/webapplicationfirewallprovider.md) object.

You can specify the following properties when creating a **webApplicationFirewallProvider**.

**TODO: Remove properties that don't apply**
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|**TODO: Add Description** Required.|



## Response

If successful, this method returns a `204 No Content` response code and a [webApplicationFirewallProvider](../resources/webapplicationfirewallprovider.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "create_webapplicationfirewallprovider_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/identity/riskPrevention/webApplicationFirewallVerifications/{webApplicationFirewallVerificationModelId}/provider/$ref
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.webApplicationFirewallProvider",
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
HTTP/1.1 204 No Content
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.webApplicationFirewallProvider",
  "id": "4d8ac75a-e882-18c6-8ad4-2ab20c742e52",
  "displayName": "String"
}
```

