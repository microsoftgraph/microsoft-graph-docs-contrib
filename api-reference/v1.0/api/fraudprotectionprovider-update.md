---
title: "Update fraudProtectionProvider"
description: "Update the properties of a fraudProtectionProvider object."
author: "more-rasika"
ms.date: 10/31/2025
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
---

# Update fraudProtectionProvider

Namespace: microsoft.graph

Update the properties of a [fraudProtectionProvider](../resources/fraudprotectionprovider.md) object. The following derived types are currently supported.

- [arkoseFraudProtectionProvider](../resources/arkosefraudprotectionprovider.md) resource type
- [humanSecurityFraudProtectionProvider](../resources/humansecurityfraudprotectionprovider.md) resource type

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "fraudprotectionprovider_update" } -->
[!INCLUDE [permissions-table](../includes/permissions/fraudprotectionprovider-update-permissions.md)]

[!INCLUDE [rbac-fraudprotection-apis-write](../includes/rbac-for-apis/rbac-fraudprotection-apis-write.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /identity/riskPrevention/fraudProtectionProviders/{fraudProtectionProviderId}
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
|appId|String|Unique identifier for an individual application. You can retrieve this from the HUMAN Security admin console or request it from your HUMAN Security Customer Success Manager. Supported for HUMAN Security only. Optional.|
|clientSubDomain|String|Used to invoke the Arkose service from the client application. Request from your Arkose Customer Success Manager or use the default `client-api` value. Supported for Arkose only. Optional.|
|displayName|String|The display name of the fraud protection provider configuration. Supported for all providers. Optional.|
|privateKey|String|The private key available on the Arkose Portal. Contact your Arkose Customer Success Manager for assistance with your keys. Supported for Arkose only. Optional.|
|publicKey|String|The public key available on the Arkose Portal. Contact your Arkose Customer Success Manager for assistance with your keys. Supported for Arkose only. Optional.|
|serverToken|String| Unique identifier used to authenticate API calls between the Server side integration and the HUMAN platform. You can retrieve this from the HUMAN Security admin console or request it from your HUMAN Security Customer Success Manager. Supported for HUMAN Security only. Optional.|
|verifySubDomain|String|Used to invoke the Arkose service from the Microsoft authentication server. Request from your Arkose Customer Success Manager or use the default `verify-api` value. Supported for Arkose only. Optional.|


## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request

The following example shows a request to update Arkose fraud protection provider.

<!-- {
  "blockType": "request",
  "name": "update_fraudprotectionprovider"
}
-->
``` http
PATCH https://graph.microsoft.com/v1.0/identity/riskPrevention/fraudProtectionProviders/9826466a-5275-438d-98e1-f3df6470a4b5
Content-Type: application/json

{
    "@odata.type": "#microsoft.graph.arkoseFraudProtectionProvider",
    "displayName": "Arkose Sign-Up Protection Updated",
}
```


### Response

The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```

