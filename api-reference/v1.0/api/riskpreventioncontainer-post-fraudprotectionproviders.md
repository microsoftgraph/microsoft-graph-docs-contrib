---
title: "Create fraudProtectionProviders"
description: "Create a new fraudProtectionProviders object."
author: "more-rasika"
ms.date: 10/23/2025
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
---

# Create fraudProtectionProviders

Namespace: microsoft.graph

Create a new [fraudProtectionProvider](../resources/fraudprotectionprovider.md) object. You can create one of the following subtypes that are derived from **fraudProtectionProvider**.

- [arkoseFraudProtectionProvider](../resources/arkosefraudprotectionprovider.md)
- [humanSecurityFraudProtectionProvider](../resources/humansecurityfraudprotectionprovider.md)

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "riskpreventioncontainer_post_fraudprotectionproviders" } -->
[!INCLUDE [permissions-table](../includes/permissions/riskpreventioncontainer-post-fraudprotectionproviders-permissions.md)]

[!INCLUDE [rbac-fraudprotection-apis-write](../includes/rbac-for-apis/rbac-fraudprotection-apis-write.md)]

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
|displayName|String|The display name of this fraud protection provider configuration. Supported for all providers. Required. Inherited from [fraudProtectionProvider](../resources/fraudprotectionprovider.md).|
|privateKey|String|The private key available on the Arkose Portal. Contact your Arkose Customer Success Manager for assistance with your keys. Supported for Arkose only. Required.|
|publicKey|String|The public key available on the Arkose Portal. Contact your Arkose Customer Success Manager for assistance with your keys. Supported for Arkose only. Required.|
|verifySubDomain|String|Used to invoke the Arkose service from the Microsoft authentication server. Request from your Arkose Customer Success Manager or use the default `verify-api` value. Supported for Arkose only. Required.|
|clientSubDomain|String|Used to invoke the Arkose service from the client application. Request from your Arkose Customer Success Manager or use the default `client-api` value. Supported for Arkose only. Required.|
|appId|String|Unique identifier for an individual application. You can retrieve this from the HUMAN Security admin console or request it from your HUMAN Security Customer Success Manager. Supported for HUMAN Security only. Required.|
|serverToken|String| Unique identifier used to authenticate API calls between the Server side integration and the HUMAN platform. You can retrieve this from the HUMAN Security admin console or request it from your HUMAN Security Customer Success Manager. Supported for HUMAN Security only. Required.|


## Response

If successful, this method returns a `201 Created` response code and a [fraudProtectionProvider](../resources/fraudprotectionprovider.md) object in the response body. The **@odata.type** property specifies the type of the created object.

## Examples

### Example 1: Create a new arkoseFraudProtectionProvider object

#### Request

The following example shows a request to create a new Arkose fraudProtectionProvider object.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_fraudprotectionprovider_from_arkose"
}
-->
``` http
POST https://graph.microsoft.com/v1.0/identity/riskPrevention/fraudProtectionProviders
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

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-fraudprotectionprovider-from-arkose-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-fraudprotectionprovider-from-arkose-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-fraudprotectionprovider-from-arkose-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-fraudprotectionprovider-from-arkose-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-fraudprotectionprovider-from-arkose-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-fraudprotectionprovider-from-arkose-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


#### Response

The following example shows the response with Arkose fraudProtectionProvider object.
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
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#identity/riskPrevention/fraudProtectionProviders/$entity",
    "@odata.type": "#microsoft.graph.arkoseFraudProtectionProvider",
    "id": "d474f94f-0fcf-4224-a165-c1c5bad1600f",
    "displayName": "Arkose Sign-Up Protection",
    "publicKey": "A1EE42E0-C88B-47FE-A176-5E9FB8F116FB",
    "clientSubDomain": "client-api",
    "verifySubDomain": "verify-api"
}

```

### Example 2: Create a new humanSecurityFraudProtectionProvider object

#### Request

The following example shows a request to create a new HUMAN Security fraudProtectionProvider object.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_fraudprotectionprovider_from_human"
}
-->
``` http
POST https://graph.microsoft.com/v1.0/identity/riskPrevention/fraudProtectionProviders
Content-Type: application/json

{
   "@odata.type": "#microsoft.graph.humanSecurityFraudProtectionProvider",
    "displayName": "HUMAN Security Sign-Up Protection",
    "appId": "XXyy1XXXy",
    "serverToken": "xxYYxxXXX1"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-fraudprotectionprovider-from-human-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-fraudprotectionprovider-from-human-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-fraudprotectionprovider-from-human-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-fraudprotectionprovider-from-human-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-fraudprotectionprovider-from-human-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-fraudprotectionprovider-from-human-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


#### Response

The following example shows the response with Human Security fraudProtectionProvider object.
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
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#identity/riskPrevention/fraudProtectionProviders/$entity",
    "@odata.type": "#microsoft.graph.humanSecurityFraudProtectionProvider",
    "id": "6b09e36f-7e92-4448-842a-3959bcbc4f9f",
    "displayName": "HUMAN security Sign-Up provider",
    "appId": "XXyy1XXXy"
}
```
