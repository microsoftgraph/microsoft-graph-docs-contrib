---
title: "Update agentIdentity"
description: "Update the properties of an agentIdentity object."
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
ms.date: 10/27/2025
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS subservice. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
doc_type: apiPageType
---

# Update agentIdentity

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of an agentIdentity object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "agentidentity-update-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/agentidentity-update-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /riskyAgentIdentity/agentIdentity
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]


**TODO: Remove properties that don't apply**
|Property|Type|Description|
|:---|:---|:---|
|deletedDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [directoryObject](../resources/directoryobject.md). Optional.|
|passwordSingleSignOnSettings|[passwordSingleSignOnSettings](../resources/passwordsinglesignonsettings.md)|**TODO: Add Description** Inherited from [servicePrincipal](../resources/serviceprincipal.md). Optional.|
|accountEnabled|Boolean|**TODO: Add Description** Inherited from [servicePrincipal](../resources/serviceprincipal.md). Optional.|
|addIns|[addIn](../resources/addin.md) collection|**TODO: Add Description** Inherited from [servicePrincipal](../resources/serviceprincipal.md). Required.|
|alternativeNames|String collection|**TODO: Add Description** Inherited from [servicePrincipal](../resources/serviceprincipal.md). Required.|
|api|[apiServicePrincipal](../resources/apiserviceprincipal.md)|**TODO: Add Description** Inherited from [servicePrincipal](../resources/serviceprincipal.md). Optional.|
|appCategory|appCategoryState|**TODO: Add Description** Inherited from [servicePrincipal](../resources/serviceprincipal.md). The possible values are: `mdm`, `roamingSettingsSync`, `vpn`, `p2p`, `unknownFutureValue`. Optional.|
|appData|String|**TODO: Add Description** Inherited from [servicePrincipal](../resources/serviceprincipal.md). Optional.|
|appDescription|String|**TODO: Add Description** Inherited from [servicePrincipal](../resources/serviceprincipal.md). Optional.|
|appDisplayName|String|**TODO: Add Description** Inherited from [servicePrincipal](../resources/serviceprincipal.md). Optional.|
|appId|String|**TODO: Add Description** Inherited from [servicePrincipal](../resources/serviceprincipal.md). Optional.|
|appMetadata|[appMetadata](../resources/appmetadata.md)|**TODO: Add Description** Inherited from [servicePrincipal](../resources/serviceprincipal.md). Optional.|
|applicationTemplateId|String|**TODO: Add Description** Inherited from [servicePrincipal](../resources/serviceprincipal.md). Optional.|
|appOwnerOrganizationId|Guid|**TODO: Add Description** Inherited from [servicePrincipal](../resources/serviceprincipal.md). Optional.|
|appRoleAssignmentRequired|Boolean|**TODO: Add Description** Inherited from [servicePrincipal](../resources/serviceprincipal.md). Required.|
|assignmentRequiredForPrincipalTypes|assignmentRequiredForPrincipalTypes|**TODO: Add Description** Inherited from [servicePrincipal](../resources/serviceprincipal.md). The possible values are: `none`, `appOnlyClientServicePrincipals`, `usersNotInTenant`, `guestUsers`, `memberUsers`, `unknownFutureValue`. Optional.|
|appRoles|[appRole](../resources/approle.md) collection|**TODO: Add Description** Inherited from [servicePrincipal](../resources/serviceprincipal.md). Required.|
|certification|[certification](../resources/certification.md)|**TODO: Add Description** Inherited from [servicePrincipal](../resources/serviceprincipal.md). Optional.|
|createdByAppId|String|**TODO: Add Description** Inherited from [servicePrincipal](../resources/serviceprincipal.md). Optional.|
|customSecurityAttributes|[customSecurityAttributeValue](../resources/customsecurityattributevalue.md)|**TODO: Add Description** Inherited from [servicePrincipal](../resources/serviceprincipal.md). Optional.|
|description|String|**TODO: Add Description** Inherited from [servicePrincipal](../resources/serviceprincipal.md). Optional.|
|disabledByMicrosoftStatus|String|**TODO: Add Description** Inherited from [servicePrincipal](../resources/serviceprincipal.md). Optional.|
|displayName|String|**TODO: Add Description** Inherited from [servicePrincipal](../resources/serviceprincipal.md). Optional.|
|errorUrl|String|**TODO: Add Description** Inherited from [servicePrincipal](../resources/serviceprincipal.md). Optional.|
|hasPermissionClassifications|Boolean|**TODO: Add Description** Inherited from [servicePrincipal](../resources/serviceprincipal.md). Optional.|
|homepage|String|**TODO: Add Description** Inherited from [servicePrincipal](../resources/serviceprincipal.md). Optional.|
|info|[informationalUrl](../resources/informationalurl.md)|**TODO: Add Description** Inherited from [servicePrincipal](../resources/serviceprincipal.md). Optional.|
|isManagementRestricted|Boolean|**TODO: Add Description** Inherited from [servicePrincipal](../resources/serviceprincipal.md). Optional.|
|keyCredentials|[keyCredential](../resources/keycredential.md) collection|**TODO: Add Description** Inherited from [servicePrincipal](../resources/serviceprincipal.md). Required.|
|lifecycle|[lifecycle](../resources/lifecycle.md)|**TODO: Add Description** Inherited from [servicePrincipal](../resources/serviceprincipal.md). Optional.|
|loginUrl|String|**TODO: Add Description** Inherited from [servicePrincipal](../resources/serviceprincipal.md). Optional.|
|logoutUrl|String|**TODO: Add Description** Inherited from [servicePrincipal](../resources/serviceprincipal.md). Optional.|
|managedIdentityResourceId|String|**TODO: Add Description** Inherited from [servicePrincipal](../resources/serviceprincipal.md). Optional.|
|microsoftPolicyGroup|Boolean|**TODO: Add Description** Inherited from [servicePrincipal](../resources/serviceprincipal.md). Optional.|
|notes|String|**TODO: Add Description** Inherited from [servicePrincipal](../resources/serviceprincipal.md). Optional.|
|notificationEmailAddresses|String collection|**TODO: Add Description** Inherited from [servicePrincipal](../resources/serviceprincipal.md). Required.|
|publishedPermissionScopes|[permissionScope](../resources/permissionscope.md) collection|**TODO: Add Description** Inherited from [servicePrincipal](../resources/serviceprincipal.md). Required.|
|passwordCredentials|[passwordCredential](../resources/passwordcredential.md) collection|**TODO: Add Description** Inherited from [servicePrincipal](../resources/serviceprincipal.md). Required.|
|preferredTokenSigningKeyEndDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [servicePrincipal](../resources/serviceprincipal.md). Optional.|
|preferredTokenSigningKeyThumbprint|String|**TODO: Add Description** Inherited from [servicePrincipal](../resources/serviceprincipal.md). Optional.|
|preferredSingleSignOnMode|String|**TODO: Add Description** Inherited from [servicePrincipal](../resources/serviceprincipal.md). Optional.|
|publisherName|String|**TODO: Add Description** Inherited from [servicePrincipal](../resources/serviceprincipal.md). Optional.|
|replyUrls|String collection|**TODO: Add Description** Inherited from [servicePrincipal](../resources/serviceprincipal.md). Required.|
|resourceSpecificApplicationPermissions|[resourceSpecificPermission](../resources/resourcespecificpermission.md) collection|**TODO: Add Description** Inherited from [servicePrincipal](../resources/serviceprincipal.md). Required.|
|samlMetadataUrl|String|**TODO: Add Description** Inherited from [servicePrincipal](../resources/serviceprincipal.md). Optional.|
|samlSingleSignOnSettings|[samlSingleSignOnSettings](../resources/samlsinglesignonsettings.md)|**TODO: Add Description** Inherited from [servicePrincipal](../resources/serviceprincipal.md). Optional.|
|samlSLOBindingType|samlSLOBindingType|**TODO: Add Description** Inherited from [servicePrincipal](../resources/serviceprincipal.md). The possible values are: `httpRedirect`, `httpPost`, `unknownFutureValue`. Optional.|
|servicePrincipalNames|String collection|**TODO: Add Description** Inherited from [servicePrincipal](../resources/serviceprincipal.md). Required.|
|servicePrincipalType|String|**TODO: Add Description** Inherited from [servicePrincipal](../resources/serviceprincipal.md). Optional.|
|signInAudience|String|**TODO: Add Description** Inherited from [servicePrincipal](../resources/serviceprincipal.md). Optional.|
|tags|String collection|**TODO: Add Description** Inherited from [servicePrincipal](../resources/serviceprincipal.md). Required.|
|tokenEncryptionKeyId|Guid|**TODO: Add Description** Inherited from [servicePrincipal](../resources/serviceprincipal.md). Optional.|
|tokensRevocationDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [servicePrincipal](../resources/serviceprincipal.md). Optional.|
|verifiedPublisher|[verifiedPublisher](../resources/verifiedpublisher.md)|**TODO: Add Description** Inherited from [servicePrincipal](../resources/serviceprincipal.md). Optional.|
|agentIdentityBlueprintId|String|**TODO: Add Description** Required.|
|createdDateTime|DateTimeOffset|**TODO: Add Description** Optional.|
|agentAppId|String|**TODO: Add Description** Required.|



## Response

If successful, this method returns a `200 OK` response code and an updated [agentIdentity](../resources/agentidentity.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "update_agentidentity"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/riskyAgentIdentity/agentIdentity
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.agentIdentity",
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
  },
  "agentIdentityBlueprintId": "String",
  "agentAppId": "String"
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
  "@odata.type": "#microsoft.graph.agentIdentity",
  "id": "46c58c0b-9f52-6295-c513-c514c1fd961a",
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
  },
  "agentIdentityBlueprintId": "String",
  "createdDateTime": "String (timestamp)",
  "agentAppId": "String"
}
```

