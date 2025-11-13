---
title: "Create verifiedIdProfile"
description: "Create a new verifiedIdProfile object."
author: "tilarso"
ms.date: 10/10/2025
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
---

# Create verifiedIdProfile

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [verifiedIdProfile](../resources/verifiedidprofile.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "identityverifiedidroot-post-profiles-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/identityverifiedidroot-post-profiles-permissions.md)]

[!INCLUDE [rbac-verifiedid](../includes/rbac-for-apis/rbac-verifiedid-write.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /identity/verifiedId/profiles
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [verifiedIdProfile](../resources/verifiedidprofile.md) object.

You can specify the following properties when creating a **verifiedIdProfile**.

|Property|Type|Description|
|:---|:---|:---|
|name|String| Display name for the verified Id profile. Required.|
|description|String| Description for the verified Id profile. Required.|
|lastModifiedDateTime|DateTimeOffset|DateTime the profile was last modified. Optional.|
|state|verifiedIdProfileState| Enablement state for the profile. The possible values are: `enabled`, `disabled`, `unknownFutureValue`. Required.|
|verifierDid|String| Decentralized Identifier (DID) string that represents the verifier in the verifiable credential exchange.  Required.|
|priority|Int32|Defines profile processing priority if multiple profiles are configured.  Optional.|
|verifiedIdProfileConfiguration|[verifiedIdProfileConfiguration](../resources/verifiedidprofileconfiguration.md)| Set of properties expressing the accepted issuer, claims binding, and credential type. Required.|
|faceCheckConfiguration|[faceCheckConfiguration](../resources/facecheckconfiguration.md)| Set of properties configuring Entra Verified ID Face Check behavior.  Required.|
|verifiedIdUsageConfigurations|[verifiedIdUsageConfiguration](../resources/verifiedidusageconfiguration.md) collection| Collection defining the usage purpose for the profile. The possible values are: `recovery`, `onboarding`, `all`, `unknownFutureValue`. Required.|


## Response

If successful, this method returns a `201 Created` response code and a [verifiedIdProfile](../resources/verifiedidprofile.md) object in the response body.

## Examples

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_verifiedidprofile_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/identity/verifiedId/profiles
Content-Type: application/json

{
  "name": "Contoso Verified ID",
  "description": "Contoso Verified Identity",
  "lastModifiedDateTime": null,
  "state": "enabled",
  "verifierDid": "did:web:eu.did-dev.contoso.io",
  "priority": 0,
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
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-verifiedidprofile-from--csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-verifiedidprofile-from--go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-verifiedidprofile-from--java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-verifiedidprofile-from--javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-verifiedidprofile-from--php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-verifiedidprofile-from--python-snippets.md)]
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
HTTP/1.1 201 Created
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#identity/verifiedId/profiles/$entity",
    "id": "ca15ec56-7adf-42ee-847b-00c3008264fb",
    "name": "Contoso Verified ID",
    "description": "Contoso Verified ID",
    "lastModifiedDateTime": null,
    "state": "enabled",
    "verifierDid": "did:web:eu.did-dev.contoso.io",
    "priority": 0,
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
            "purpose": "onboarding"
        }
    ]
}
```

