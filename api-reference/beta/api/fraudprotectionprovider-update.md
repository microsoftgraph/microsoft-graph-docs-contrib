---
title: "Update fraudProtectionProvider"
description: "Update the properties of a fraudProtectionProvider object."
author: "more-rasika"
ms.date: 08/05/2025
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
---

# Update fraudProtectionProvider

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a fraudProtectionProvider object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "fraudprotectionprovider-update-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/fraudprotectionprovider-update-permissions.md)]

[!INCLUDE [rbac-fraudprovider-apis-write](../includes/rbac-for-apis/rbac-fraudprovider-apis-write.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /identity/riskprevention/fraudprotectionproviders/{fraudProtectionProviderId}
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]
You must specify the **@odata.type** property and the value of the [fraudProtectionProvider](../resources/fraudprotectionprovider.md) object type to update. For example, `"@odata.type": "#microsoft.graph.arkoseFraudProtectionProvider"`.

|Property|Type|Description|
|:---|:---|:---|
|displayName|String|The display name of the fraud protection provider configuration. Optional.|
|privateKey|String|The private key available on the Arkose Portal. Contact your Arkose Customer Success Manager for assistance with your keys. Optional.|
|publicKey|String|The public key available on the Arkose Portal. Contact your Arkose Customer Success Manager for assistance with your keys. Optional.|
|verifySubDomain|String|Used to invoke the Arkose service from the Microsoft authentication server. Request from your Arkose Customer Success Manager or use the default `verify-api` value. Optional.|
|clientSubDomain|String|Used to invoke the Arkose service from the client application. Request from your Arkose Customer Success Manager or use the default `client-api` value. Optional.|


## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "update_fraudprotectionprovider"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/identity/riskprevention/fraudprotectionproviders/9826466a-5275-438d-98e1-f3df6470a4b5
Content-Type: application/json

{
    "@odata.type": "#microsoft.graph.arkoseFraudProtectionProvider",
    "displayName": "Arkose Sign-Up Protection Updated",
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
HTTP/1.1 204 No Content
```

