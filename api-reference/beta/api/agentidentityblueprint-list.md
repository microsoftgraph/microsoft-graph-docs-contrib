---
title: "List agentIdentityBlueprint objects"
description: "Get a list of the agentIdentityBlueprint objects and their properties."
author: "zallison22"
ms.date: 11/10/2025
ms.localizationpriority: medium
ms.subservice: "entra-applications"
doc_type: apiPageType
---

# List agentIdentityBlueprint objects

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [agentIdentityBlueprint](../resources/agentidentityblueprint.md) objects and their properties. Does not return other types of application objects.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "agentidentityblueprint-list-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/agentidentityblueprint-list-permissions.md)]

[!INCLUDE [rbac-agentid-apis-write](../includes/rbac-for-apis/rbac-agentid-apis-write.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /applications/microsoft.graph.agentIdentityBlueprint
```

## Optional query parameters

This method supports the `$count`, `$expand`, `$filter`, `$orderby`, `$search`, `$select`, and `$top` [OData query parameters](/graph/query-parameters) to help customize the response. The default and maximum page size is 100 agent identity objects. Some queries are supported only when you use the **ConsistencyLevel** header set to `eventual` and `$count`. For more information, see [Advanced query capabilities on directory objects](/graph/aad-advanced-queries).

By default, this API doesn't return the value of the **key** thumbprint in the **keyCredentials** property when listing all agentIdentityBlueprints. To retrieve the **key** thumbprint, the **keyCredentials** property must be specified in a `$select` query. For example, `$select=id,appId,keyCredentials`.

The use of `$select` to get **keyCredentials** for agentIdentityBlueprints has a throttling limit of 150 requests per minute for every tenant.

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [agentIdentityBlueprint](../resources/agentidentityblueprint.md) objects in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_agentidentityblueprint"
}
-->
``` http
GET https://graph.microsoft.com/beta/applications/microsoft.graph.agentIdentityBlueprint
```


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
  "value": [
    {
      "@odata.type": "#microsoft.graph.agentIdentityBlueprint",
      "id": "08be1f79-37a1-49c0-b444-3075e74d1e8c",
      "appId": "11f8f3e9-97df-4bef-84a8-1aa86d5dbc3f",
      "identifierUris": [
          "api://11f8f3e9-97df-4bef-84a8-1aa86d5dbc3f"
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
  ]
}
```

