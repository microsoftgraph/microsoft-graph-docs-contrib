---
title: "List agentIdentityBlueprint objects"
description: "Get a list of the agentIdentityBlueprint objects and their properties."
author: "zallison22"
ms.date: 10/27/2025
ms.localizationpriority: medium
ms.subservice: "entra-applications"
doc_type: apiPageType
---

# List agentIdentityBlueprint objects

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the agentIdentityBlueprint objects and their properties. Does not return other types of application objects.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "agentidentityblueprint-list-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/agentidentityblueprint-list-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /applications/Microsoft.Graph.AgentIdentityBlueprint
```

## Optional query parameters

This method supports the `$count`, `$expand`, `$filter`, `$orderby`, `$search`, `$select`, and `$top` [OData query parameters](/graph/query-parameters) to help customize the response. The default and maximum page size is 100 agent identity objects. Some queries are supported only when you use the **ConsistencyLevel** header set to `eventual` and `$count`. For more information, see [Advanced query capabilities on directory objects](/graph/aad-advanced-queries).

By default, this API doesn't return the value of the **key** thumbprint in the **keyCredentials** property when listing all applications. To retrieve the **key** thumbprint, the **keyCredentials** property must be specified in a `$select` query. For example, `$select=id,appId,keyCredentials`.

The use of `$select` to get **keyCredentials** for applications has a throttling limit of 150 requests per minute for every tenant.

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
GET https://graph.microsoft.com/beta/applications/Microsoft.Graph.AgentIdentityBlueprint
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
      "id": "ff2a4f4e-945d-6918-40a8-844dcdc2d315",
      "deletedDateTime": "String (timestamp)",
      "api": {
        "@odata.type": "microsoft.graph.apiApplication"
      },
      "appId": "String",
      "appRoles": [
        {
          "@odata.type": "microsoft.graph.appRole"
        }
      ],
      "certification": {
        "@odata.type": "microsoft.graph.certification"
      },
      "createdByAppId": "String",
      "createdDateTime": "String (timestamp)",
      "description": "String",
      "disabledByMicrosoftStatus": "String",
      "identifierUris": [
        "String"
      ],
      "displayName": "String",
      "groupMembershipClaims": "String",
      "info": {
        "@odata.type": "microsoft.graph.informationalUrl"
      },
      "keyCredentials": [
        {
          "@odata.type": "microsoft.graph.keyCredential"
        }
      ],
      "logo": "Stream",
      "optionalClaims": {
        "@odata.type": "microsoft.graph.optionalClaims"
      },
      "passwordCredentials": [
        {
          "@odata.type": "microsoft.graph.passwordCredential"
        }
      ],
      "publisherDomain": "String",
      "serviceManagementReference": "String",
      "signInAudience": "String",
      "tags": [
        "String"
      ],
      "tokenEncryptionKeyId": "Guid",
      "uniqueName": "String",
      "verifiedPublisher": {
        "@odata.type": "microsoft.graph.verifiedPublisher"
      },
      "web": {
        "@odata.type": "microsoft.graph.webApplication"
      }
    }
  ]
}
```

