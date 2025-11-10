---
title: "Get agentIdentityBlueprint"
description: "Read the properties and relationships of agentIdentityBlueprint object."
author: "zallison22"
ms.date: 10/27/2025
ms.localizationpriority: medium
ms.subservice: "entra-applications"
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
<!-- {
  "blockType": "request",
  "name": "get_agentidentityblueprint"
}
-->
``` http
GET https://graph.microsoft.com/beta/applications/{id}/microsoft.graph.agentIdentityBlueprint
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
  "value": {
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
    },
  }
}
```

