---
title: "Update verifiedIdProfile"
description: "Update the properties of a verifiedIdProfile object."
author: "tilarso" 
ms.date: 10/10/2025
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
---

# Update verifiedIdProfile

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [verifiedIdProfile](../resources/verifiedidprofile.md) object.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "verifiedidprofile-update-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/verifiedidprofile-update-permissions.md)]

[!INCLUDE [rbac-verifiedid](../includes/rbac-for-apis/rbac-verifiedid-write.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /identity/verifiedId/profiles/{verifiedIdProfileId}
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]


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

If successful, this method returns a `204 No Content` response code.

## Examples

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_verifiedidprofile"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/identity/verifiedId/profiles/ca15ec56-7adf-42ee-847b-00c3008264fb
Content-Type: application/json

{
  "verifiedIdUsageConfigurations": [
      {
          "isEnabledForTestOnly": false,
          "purpose": "recovery"
      }
  ]
}
  
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/update-verifiedidprofile-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/update-verifiedidprofile-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/update-verifiedidprofile-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-verifiedidprofile-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/update-verifiedidprofile-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/update-verifiedidprofile-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
```http
HTTP/1.1 204 No Content
```

