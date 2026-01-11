---
title: "Get fraudProtectionProvider"
description: "Read the properties and relationships of fraudProtectionProvider object."
author: "more-rasika"
ms.date: 10/31/2025
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
---

# Get fraudProtectionProvider

Namespace: microsoft.graph

Read the properties and relationships of [fraudProtectionProvider](../resources/fraudprotectionprovider.md) object. The following derived types are currently supported.

- [arkoseFraudProtectionProvider](../resources/arkosefraudprotectionprovider.md) resource type
- [humanSecurityFraudProtectionProvider](../resources/humansecurityfraudprotectionprovider.md) resource type

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "fraudprotectionprovider_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/fraudprotectionprovider-get-permissions.md)]

[!INCLUDE [rbac-fraudprotection-apis-read](../includes/rbac-for-apis/rbac-fraudprotection-apis-read.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identity/riskPrevention/fraudProtectionProviders/{fraudProtectionProviderId}
```

## Optional query parameters

This method supports the `$select` OData query parameter to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [fraudProtectionProvider](../resources/fraudprotectionprovider.md) object in the response body. The **@odata.type** property in the response object indicates the type of the **fraudProtectionProvider** object.

## Examples

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_fraudprotectionprovider"
}
-->
``` http
GET https://graph.microsoft.com/v1.0/identity/riskPrevention/fraudProtectionProviders/0bb2618b-51f7-4e83-bcb8-84e70f7cf84d
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-fraudprotectionprovider-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-fraudprotectionprovider-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-fraudprotectionprovider-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-fraudprotectionprovider-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-fraudprotectionprovider-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-fraudprotectionprovider-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response with Arkose Fraud Protection Provider.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.fraudProtectionProvider"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#identity/riskPrevention/fraudProtectionProviders/$entity",
    "@odata.type": "#microsoft.graph.arkoseFraudProtectionProvider",
    "id": "0bb2618b-51f7-4e83-bcb8-84e70f7cf84d",
    "displayName": "Arkose Sign-Up Protection",
    "publicKey": "00001111-aaaa-2222-bbbb-3333cccc4444",
    "clientSubDomain": "client-api",
    "verifySubDomain": "verify-api"
}
```

The following example shows the response with HUMAN Security Fraud Protection Provider.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.fraudProtectionProvider"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#identity/riskPrevention/fraudProtectionProviders/$entity",
    "@odata.type": "#microsoft.graph.humanSecurityFraudProtectionProvider",
    "id": "0bb2618b-51f7-4e83-bcb8-84e70f7cf84d",
    "displayName": "HUMAN Security Sign-Up Protection",
    "appId": "PXabcasdfg",
    "serverToken": "XabcSadfgb"
}
```
