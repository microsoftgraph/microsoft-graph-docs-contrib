---
title: "Get agentIdentityBlueprint"
description: "Read the properties and relationships of agentIdentityBlueprint object."
author: "zallison22"
ms.date: 10/27/2025
ms.localizationpriority: medium
ms.subservice: "entra-agent-id"
doc_type: apiPageType
---

# Get agentIdentityBlueprint

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of [agentIdentityBlueprint](../resources/agentidentityblueprint.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "agentidentityblueprint-get-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/agentidentityblueprint-get-permissions.md)]

[!INCLUDE [rbac-agentid-apis-write](../includes/rbac-for-apis/rbac-agentid-apis-write.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /applications/{id}/microsoft.graph.agentIdentityBlueprint
```

## Optional query parameters

This method supports the `$select` and `$expand` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and an [agentIdentityBlueprint](../resources/agentidentityblueprint.md) object in the response body.

## Examples

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_agentidentityblueprint"
}
-->
``` http
GET https://graph.microsoft.com/beta/applications/{id}/microsoft.graph.agentIdentityBlueprint
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-agentidentityblueprint-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.agentIdentityBlueprint"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.agentIdentityBlueprint",
    "id": "08be1f79-37a1-49c0-b444-3075e74d1e8c",
    "appId": "00001111-aaaa-2222-bbbb-3333cccc4444",
    "identifierUris": [
        "api://00001111-aaaa-2222-bbbb-3333cccc4444"
    ],
    "createdByAppId": "14d82eec-204b-4c2f-b7e8-296a70dab67e",
    "createdDateTime": "2025-09-10T17:04:20Z",
    "description": null,
    "disabledByMicrosoftStatus": null,
    "displayName": "My Agent Blueprint",
    "groupMembershipClaims": null,
    "publisherDomain": "contoso.onmicrosoft.com",
    "signInAudience": "AzureADMyOrg",
    "tags": [],
    "tokenEncryptionKeyId": null,
    "uniqueName": null,
    "serviceManagementReference": null,
    "optionalClaims": null,
    "api": {
        "requestedAccessTokenVersion": 2,
        "acceptMappedClaims": null,
        "knownClientApplications": [],
        "oauth2PermissionScopes": [],
        "preAuthorizedApplications": [],
        "tokenEncryptionSetting": {
            "scheme": null,
            "audience": null,
            "automatedTokenVersion": {
                "current": null,
                "available": []
            }
        }
    },
    "appRoles": [],
    "info": {
        "termsOfServiceUrl": null,
        "supportUrl": null,
        "privacyStatementUrl": null,
        "marketingUrl": null,
        "logoUrl": null
    },
    "keyCredentials": [],
    "passwordCredentials": [],
    "verifiedPublisher": {
        "displayName": null,
        "verifiedPublisherId": null,
        "addedDateTime": null
    },
    "web": {
        "redirectUris": [],
        "homePageUrl": null,
        "logoutUrl": null,
        "redirectUriSettings": [],
        "implicitGrantSettings": {
            "enableIdTokenIssuance": false,
            "enableAccessTokenIssuance": false
        }
    }
  }
}
```

