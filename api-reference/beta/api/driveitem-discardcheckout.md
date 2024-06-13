---
title: "driveItem: discardCheckout"
description: "Discard a previously checked out driveItem."
author: "javieralvarezchiang"
ms.localizationpriority: medium
ms.subservice: "sharepoint"
doc_type: apiPageType
---

# driveItem: discardCheckout

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]


This action releases a driveItem resource that was previously [checked out](driveitem-checkout.md). Any changes done to the item while it was checked out are discarded. 
The same user that performed the check out must discard it. Another alternative is to use application permissions.


## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).


<!-- {
  "blockType": "permissions",
  "name": "driveitem-discardcheckout-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/driveitem-discardcheckout-permissions.md)]

[!INCLUDE [app-permissions](../includes/sharepoint-embedded-app-driveitem-permissions.md)]

## HTTP request

``` http
POST /drive/root/discardCheckout
POST /drives/{drivesId}/root/discardCheckout
POST /shares/{sharesId}/root/discardCheckout
POST /drive/items/{driveItemId}/discardCheckout
POST /shares/{sharesId}/driveItem/discardCheckout
POST /drive/bundles/{driveItemId}/discardCheckout
POST /drive/special/{driveItemId}/discardCheckout
POST /drive/following/{driveItemId}/discardCheckout
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this action returns a `204 No Content` response code.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "driveitemthis.discardcheckout"
}
-->
``` http
POST https://graph.microsoft.com/beta/drive/root/discardCheckout
```


### Response
The following example shows the response.
``` http
HTTP/1.1 204 No Content
```

