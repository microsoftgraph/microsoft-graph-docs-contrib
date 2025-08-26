---
title: "Get fraudProtectionProvider"
description: "Read the properties and relationships of fraudProtectionProvider object."
author: "more-rasika"
ms.date: 08/05/2025
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
---

# Get fraudProtectionProvider

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of [fraudProtectionProvider](../resources/fraudprotectionprovider.md) object. The following derived types are currently supported.

- [arkosefraudprotectionprovider](../resources/arkosefraudprotectionprovider.md) resource type

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "fraudprotectionprovider-get-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/fraudprotectionprovider-get-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET identity/riskprevention/fraudprotectionproviders/{fraudProtectionProviderId}
```

## Optional query parameters

This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [fraudProtectionProvider](../resources/fraudprotectionprovider.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "get_fraudprotectionprovider"
}
-->
``` http
GET https://graph.microsoft.com/beta/identity/riskprevention/fraudprotectionproviders
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

