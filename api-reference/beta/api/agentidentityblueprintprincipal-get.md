---
title: "Get agentIdentityBlueprintPrincipal"
description: "Read the properties and relationships of agentIdentityBlueprintPrincipal object."
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
ms.date: 10/27/2025
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS subservice. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
doc_type: apiPageType
---

# Get agentIdentityBlueprintPrincipal

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of [agentIdentityBlueprintPrincipal](../resources/agentidentityblueprintprincipal.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "agentidentityblueprintprincipal-get-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/agentidentityblueprintprincipal-get-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /riskyAgentIdentityBlueprintPrincipal/agentIdentityBlueprintPrincipal
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

If successful, this method returns a `200 OK` response code and an [agentIdentityBlueprintPrincipal](../resources/agentidentityblueprintprincipal.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "get_agentidentityblueprintprincipal"
}
-->
``` http
GET https://graph.microsoft.com/beta/riskyAgentIdentityBlueprintPrincipal/agentIdentityBlueprintPrincipal
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.agentIdentityBlueprintPrincipal"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.agentIdentityBlueprintPrincipal",
    "id": "4b533f8a-90fa-b3df-a331-c48ebdd7a121",
    "deletedDateTime": "String (timestamp)",
    "passwordSingleSignOnSettings": {
      "@odata.type": "microsoft.graph.passwordSingleSignOnSettings"
    },
    "accountEnabled": "Boolean",
    "addIns": [
      {
        "@odata.type": "microsoft.graph.addIn"
      }
    ],
    "alternativeNames": [
      "String"
    ],
    "api": {
      "@odata.type": "microsoft.graph.apiServicePrincipal"
    },
    "appCategory": "String",
    "appData": "String",
    "appDescription": "String",
    "appDisplayName": "String",
    "appId": "String",
    "appMetadata": {
      "@odata.type": "microsoft.graph.appMetadata"
    },
    "applicationTemplateId": "String",
    "appOwnerOrganizationId": "Guid",
    "appRoleAssignmentRequired": "Boolean",
    "assignmentRequiredForPrincipalTypes": "String",
    "appRoles": [
      {
        "@odata.type": "microsoft.graph.appRole"
      }
    ],
    "certification": {
      "@odata.type": "microsoft.graph.certification"
    },
    "createdByAppId": "String",
    "customSecurityAttributes": {
      "@odata.type": "microsoft.graph.customSecurityAttributeValue"
    },
    "description": "String",
    "disabledByMicrosoftStatus": "String",
    "displayName": "String",
    "errorUrl": "String",
    "hasPermissionClassifications": "Boolean",
    "homepage": "String",
    "info": {
      "@odata.type": "microsoft.graph.informationalUrl"
    },
    "isManagementRestricted": "Boolean",
    "keyCredentials": [
      {
        "@odata.type": "microsoft.graph.keyCredential"
      }
    ],
    "lifecycle": {
      "@odata.type": "microsoft.graph.lifecycle"
    },
    "loginUrl": "String",
    "logoutUrl": "String",
    "managedIdentityResourceId": "String",
    "microsoftPolicyGroup": "Boolean",
    "notes": "String",
    "notificationEmailAddresses": [
      "String"
    ],
    "publishedPermissionScopes": [
      {
        "@odata.type": "microsoft.graph.permissionScope"
      }
    ],
    "passwordCredentials": [
      {
        "@odata.type": "microsoft.graph.passwordCredential"
      }
    ],
    "preferredTokenSigningKeyEndDateTime": "String (timestamp)",
    "preferredTokenSigningKeyThumbprint": "String",
    "preferredSingleSignOnMode": "String",
    "publisherName": "String",
    "replyUrls": [
      "String"
    ],
    "resourceSpecificApplicationPermissions": [
      {
        "@odata.type": "microsoft.graph.resourceSpecificPermission"
      }
    ],
    "samlMetadataUrl": "String",
    "samlSingleSignOnSettings": {
      "@odata.type": "microsoft.graph.samlSingleSignOnSettings"
    },
    "samlSLOBindingType": "String",
    "servicePrincipalNames": [
      "String"
    ],
    "servicePrincipalType": "String",
    "signInAudience": "String",
    "tags": [
      "String"
    ],
    "tokenEncryptionKeyId": "Guid",
    "tokensRevocationDateTime": "String (timestamp)",
    "verifiedPublisher": {
      "@odata.type": "microsoft.graph.verifiedPublisher"
    }
  }
}
```

