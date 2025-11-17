---
title: "List fraudProtectionProviders"
description: "Get a list of the fraudProtectionProvider objects and their properties."
author: "more-rasika"
ms.date: 10/31/2025
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
---

# List fraudProtectionProviders

Namespace: microsoft.graph

Get a list of the [fraudProtectionProvider](../resources/fraudprotectionprovider.md) object and their properties. The following derived types are supported:

- [arkoseFraudProtectionProvider](../resources/arkosefraudprotectionprovider.md)
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
``` http
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

<!-- {
  "blockType": "request",
  "name": "list_fraudprotectionprovider"
}
-->
``` http
GET https://graph.microsoft.com/v1.0/identity/riskPrevention/fraudProtectionProviders
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
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#identity/riskPrevention/fraudProtectionProviders",
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

