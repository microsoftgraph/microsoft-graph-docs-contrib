---
title: "List fraudProtectionProviders"
description: "Get a list of the fraudProtectionProvider objects and their properties."
author: "more-rasika"
ms.date: 10/06/2025
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
---

# List fraudProtectionProviders

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [fraudProtectionProvider](../resources/fraudprotectionprovider.md) object and their properties. The following derived types are supported:

- [arkoseFraudProtectionProvider](../resources/arkoseFraudProtectionProvider.md)
- [humanSecurityFraudProtectionProvider](../resources/humansecurityfraudprotectionprovider.md)

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "riskpreventioncontainer_list_fraudprotectionproviders" } -->
[!INCLUDE [permissions-table](../includes/permissions/riskpreventioncontainer-list-fraudprotectionproviders-permissions.md)]

[!INCLUDE [rbac-fraudprotection-apis-read](../includes/rbac-for-apis/rbac-fraudprotection-apis-read.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
GET /identity/riskPrevention/fraudProtectionProviders
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

If successful, this method returns a `200 OK` response code and a collection of [fraudProtectionProvider](../resources/fraudprotectionprovider.md) objects in the response body. The **@odata.type** property in the response object indicates the type of the **fraudProtectionProvider** object.

## Examples

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_fraudprotectionprovider"
}
-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/identity/riskprevention/fraudprotectionproviders
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-fraudprotectionprovider-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-fraudprotectionprovider-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-fraudprotectionprovider-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-fraudprotectionprovider-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-fraudprotectionprovider-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-fraudprotectionprovider-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.fraudProtectionProvider"
}
-->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#identity/riskPrevention/fraudProtectionProviders",
    "value": [
        {
            "@odata.type": "#microsoft.graph.arkoseFraudProtectionProvider",
            "id": "0bb2618b-51f7-4e83-bcb8-84e70f7cf84d",
            "displayName": "Arkose Sign-Up Protection",
            "publicKey": "A1EE42E0-C88B-47FE-A176-5E9FB8F116FB",
            "clientSubDomain": "client-api",
            "verifySubDomain": "verify-api"
        }
     ]
}

```

