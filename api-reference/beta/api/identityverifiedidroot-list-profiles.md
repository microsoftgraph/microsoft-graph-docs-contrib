---
title: "List verifiedIdProfile objects"
description: "Get a list of the verifiedIdProfile objects and their properties."
author: "tilarso"
ms.date: 10/10/2025
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
---

# List verifiedIdProfile objects    

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [verifiedIdProfile](../resources/verifiedidprofile.md) objects and their properties.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "identityverifiedidroot-list-profiles-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/identityverifiedidroot-list-profiles-permissions.md)]

[!INCLUDE [rbac-verifiedid](../includes/rbac-for-apis/rbac-verifiedid-write.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identity/verifiedId/profiles
```

## Optional query parameters

None 

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [verifiedIdProfile](../resources/verifiedidprofile.md) objects in the response body.

## Examples

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_verifiedidprofile"
}
-->
``` http
GET https://graph.microsoft.com/beta/identity/verifiedId/profiles
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-verifiedidprofile-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-verifiedidprofile-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-verifiedidprofile-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-verifiedidprofile-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-verifiedidprofile-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-verifiedidprofile-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.verifiedIdProfile"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "value": [
        {
            "id": "9dda0ae1-e007-4a1d-81ec-2cf4b1274610",
            "name": "Contoso IDV Provider ",
            "description": "Contoso Verified Identity",
            "lastModifiedDateTime": null,
            "state": "enabled",
            "verifierDid": "did:web:eu.did-dev.contoso.io",
            "priority": 1,
            "verifiedIdProfileConfiguration": {
                "type": "verifiedIdentity",
                "acceptedIssuer": "did:web:eu.did-dev.contoso.io",
                "claimBindingSource": "directory",
                "claimBindings": [
                    {
                        "sourceAttribute": "First name",
                        "verifiedIdClaim": "vc.credentialSubject.firstName"
                    },
                    {
                        "sourceAttribute": "Last name",
                        "verifiedIdClaim": "vc.credentialSubject.lastName"
                    }
                ]
            },
            "faceCheckConfiguration": {
                "isEnabled": true,
                "sourcePhotoClaimName": "portrait"
            },
            "verifiedIdUsageConfigurations": [
                {
                    "isEnabledForTestOnly": true,
                    "purpose": "recovery"
                }
            ]
        }
    ]
}
```

