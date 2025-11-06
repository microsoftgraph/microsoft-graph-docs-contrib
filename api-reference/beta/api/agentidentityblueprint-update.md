---
title: "Update agentIdentityBlueprint"
description: "Update the properties of an agentIdentityBlueprint object."
author: "zallison22"
ms.date: 10/27/2025
ms.localizationpriority: medium
ms.subservice: "entra-applications"
doc_type: apiPageType
---

# Update agentIdentityBlueprint

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of an agentIdentityBlueprint object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "agentidentityblueprint-update-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/agentidentityblueprint-update-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /applications/{id}/Microsoft.Graph.AgentIdentityBlueprint
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply the values for relevant fields that should be updated. Existing properties that aren't included in the request body maintains their previous values or be recalculated based on changes to other property values. For best performance you shouldn't include existing values that haven't changed.


## Response

If successful, this method returns a `200 OK` response code and an updated [agentIdentityBlueprint](../resources/agentidentityblueprint.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "update_agentidentityblueprint"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/applications/{id}/Microsoft.Graph.AgentIdentityBlueprint
Content-Type: application/json

{
  "displayName": "My New Name"
}
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

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
  },
}
```

