---
title: "Create fraudProtectionProvider"
description: "Create a new fraudProtectionProvider object."
author: "more-rasika"
ms.date: 08/05/2025
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
---

# Create fraudProtectionProvider

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new fraudProtectionProvider object. You can create one of the following subtypes that are derived from **fraudProtectionProvider**.

- [arkoseFraudProtectionProvider](../resources/arkoseFraudProtectionProvider.md)

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "riskpreventioncontainer-post-fraudprotectionproviders-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/riskpreventioncontainer-post-fraudprotectionproviders-permissions.md)]

[!INCLUDE [rbac-fraudprovider-apis-write](../includes/rbac-for-apis/rbac-fraudprovider-apis-write.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /identity/riskPrevention/fraudProtectionProviders
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [fraudProtectionProvider](../resources/fraudprotectionprovider.md) object.

You can specify the following properties when creating a **fraudProtectionProvider**.  You must specify the **@odata.type** property to specify the type of **fraudProtectionProvider** to create; for example, `@odata.type": "microsoft.graph.arkoseFraudProtectionProvider"`.

|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier for this fraud protection provider configuration. Inherited from [entity](../resources/entity.md).|
|displayName|String|The display name of this fraud protection provider configuration. Required. Inherited from [fraudProtectionProvider](../resources/fraudprotectionprovider.md).|
|privateKey|String|The private key available on the Arkose Portal. Contact your Arkose Customer Success Manager for assistance with your keys. Required.|
|publicKey|String|The public key available on the Arkose Portal. Contact your Arkose Customer Success Manager for assistance with your keys. Required.|
|verifySubDomain|String|Used to invoke the Arkose service from the Microsoft authentication server. Request from your Arkose Customer Success Manager or use the default `verify-api` value. Required.|
|clientSubDomain|String|Used to invoke the Arkose service from the client application. Request from your Arkose Customer Success Manager or use the default `client-api` value. Required.|



## Response

If successful, this method returns a `201 Created` response code and a [fraudProtectionProvider](../resources/fraudprotectionprovider.md) object in the response body. The **@odata.type** property specifies the type of the created object.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "create_fraudprotectionprovider_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/identity/riskPrevention/fraudProtectionProviders
Content-Type: application/json

{
   "@odata.type": "#microsoft.graph.arkoseFraudProtectionProvider",
    "displayName": "Arkose Sign-Up Protection",
    "publicKey": "A1EE42E0-C88B-47FE-A176-5E9FB8F116FB",
    "privateKey": "19BBE628-7DEF-4E28-AB25-BF129C760B7E",
    "clientSubDomain": "client-api",
    "verifySubDomain": "verify-api"
}
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.fraudProtectionProvider"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json
{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#identity/riskPrevention/fraudProtectionProviders/$entity",
    "@odata.type": "#microsoft.graph.arkoseFraudProtectionProvider",
    "id": "d474f94f-0fcf-4224-a165-c1c5bad1600f",
    "displayName": "Arkose Sign-Up Protection",
    "publicKey": "A1EE42E0-C88B-47FE-A176-5E9FB8F116FB",
    "clientSubDomain": "client-api",
    "verifySubDomain": "verify-api"
}

```

