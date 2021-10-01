---
title: "Update servicePrincipal"
description: "Update the properties of a servicePrincipal object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Update servicePrincipal
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [servicePrincipal](../resources/serviceprincipal.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|**TODO: Provide applicable permissions.**|
|Delegated (personal Microsoft account)|**TODO: Provide applicable permissions.**|
|Application|**TODO: Provide applicable permissions.**|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /servicePrincipals/{servicePrincipalsId}
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [servicePrincipal](../resources/serviceprincipal.md) object.

The following table shows the properties that are required when you update the [servicePrincipal](../resources/serviceprincipal.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md)|
|deletedDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [directoryObject](../resources/directoryobject.md)|
|accountEnabled|Boolean|**TODO: Add Description**|
|addIns|[addIn](../resources/addin.md) collection|**TODO: Add Description**|
|alternativeNames|String collection|**TODO: Add Description**|
|api|[apiServicePrincipal](../resources/apiserviceprincipal.md)|**TODO: Add Description**|
|appData|String|**TODO: Add Description**|
|appDescription|String|**TODO: Add Description**|
|appDisplayName|String|**TODO: Add Description**|
|appId|String|**TODO: Add Description**|
|applicationTemplateId|String|**TODO: Add Description**|
|appMetadata|[appMetadata](../resources/appmetadata.md)|**TODO: Add Description**|
|appOwnerOrganizationId|Guid|**TODO: Add Description**|
|appRoleAssignmentRequired|Boolean|**TODO: Add Description**|
|appRoles|[appRole](../resources/approle.md) collection|**TODO: Add Description**|
|customSecurityAttributes|[customSecurityAttributeValue](../resources/customsecurityattributevalue.md)|**TODO: Add Description**|
|description|String|**TODO: Add Description**|
|disabledByMicrosoftStatus|String|**TODO: Add Description**|
|displayName|String|**TODO: Add Description**|
|errorUrl|String|**TODO: Add Description**|
|hasPermissionClassifications|Boolean|**TODO: Add Description**|
|homepage|String|**TODO: Add Description**|
|info|[informationalUrl](../resources/informationalurl.md)|**TODO: Add Description**|
|isManagementRestricted|Boolean|**TODO: Add Description**|
|keyCredentials|[keyCredential](../resources/keycredential.md) collection|**TODO: Add Description**|
|loginUrl|String|**TODO: Add Description**|
|logoutUrl|String|**TODO: Add Description**|
|managedIdentityResourceId|String|**TODO: Add Description**|
|microsoftPolicyGroup|Boolean|**TODO: Add Description**|
|notes|String|**TODO: Add Description**|
|notificationEmailAddresses|String collection|**TODO: Add Description**|
|passwordCredentials|[passwordCredential](../resources/passwordcredential.md) collection|**TODO: Add Description**|
|passwordSingleSignOnSettings|[passwordSingleSignOnSettings](../resources/passwordsinglesignonsettings.md)|**TODO: Add Description**|
|preferredSingleSignOnMode|String|**TODO: Add Description**|
|preferredTokenSigningKeyEndDateTime|DateTimeOffset|**TODO: Add Description**|
|preferredTokenSigningKeyThumbprint|String|**TODO: Add Description**|
|publishedPermissionScopes|[permissionScope](../resources/permissionscope.md) collection|**TODO: Add Description**|
|publisherName|String|**TODO: Add Description**|
|replyUrls|String collection|**TODO: Add Description**|
|resourceSpecificApplicationPermissions|[resourceSpecificPermission](../resources/resourcespecificpermission.md) collection|**TODO: Add Description**|
|samlMetadataUrl|String|**TODO: Add Description**|
|samlSingleSignOnSettings|[samlSingleSignOnSettings](../resources/samlsinglesignonsettings.md)|**TODO: Add Description**|
|servicePrincipalNames|String collection|**TODO: Add Description**|
|servicePrincipalType|String|**TODO: Add Description**|
|signInAudience|String|**TODO: Add Description**|
|tags|String collection|**TODO: Add Description**|
|tokenEncryptionKeyId|Guid|**TODO: Add Description**|



## Response

If successful, this method returns a `200 OK` response code and an updated [servicePrincipal](../resources/serviceprincipal.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "update_serviceprincipal"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/servicePrincipals/{servicePrincipalsId}
Content-Type: application/json
Content-length: 2448

{
  "@odata.type": "#microsoft.graph.servicePrincipal",
  "deletedDateTime": "String (timestamp)",
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
  "appData": "String",
  "appDescription": "String",
  "appDisplayName": "String",
  "appId": "String",
  "applicationTemplateId": "String",
  "appMetadata": {
    "@odata.type": "microsoft.graph.appMetadata"
  },
  "appOwnerOrganizationId": "Guid",
  "appRoleAssignmentRequired": "Boolean",
  "appRoles": [
    {
      "@odata.type": "microsoft.graph.appRole"
    }
  ],
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
  "loginUrl": "String",
  "logoutUrl": "String",
  "managedIdentityResourceId": "String",
  "microsoftPolicyGroup": "Boolean",
  "notes": "String",
  "notificationEmailAddresses": [
    "String"
  ],
  "passwordCredentials": [
    {
      "@odata.type": "microsoft.graph.passwordCredential"
    }
  ],
  "passwordSingleSignOnSettings": {
    "@odata.type": "microsoft.graph.passwordSingleSignOnSettings"
  },
  "preferredSingleSignOnMode": "String",
  "preferredTokenSigningKeyEndDateTime": "String (timestamp)",
  "preferredTokenSigningKeyThumbprint": "String",
  "publishedPermissionScopes": [
    {
      "@odata.type": "microsoft.graph.permissionScope"
    }
  ],
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
  "servicePrincipalNames": [
    "String"
  ],
  "servicePrincipalType": "String",
  "signInAudience": "String",
  "tags": [
    "String"
  ],
  "tokenEncryptionKeyId": "Guid"
}
```


### Response
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
  "@odata.type": "#microsoft.graph.servicePrincipal",
  "id": "220533cb-33cb-2205-cb33-0522cb330522",
  "deletedDateTime": "String (timestamp)",
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
  "appData": "String",
  "appDescription": "String",
  "appDisplayName": "String",
  "appId": "String",
  "applicationTemplateId": "String",
  "appMetadata": {
    "@odata.type": "microsoft.graph.appMetadata"
  },
  "appOwnerOrganizationId": "Guid",
  "appRoleAssignmentRequired": "Boolean",
  "appRoles": [
    {
      "@odata.type": "microsoft.graph.appRole"
    }
  ],
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
  "loginUrl": "String",
  "logoutUrl": "String",
  "managedIdentityResourceId": "String",
  "microsoftPolicyGroup": "Boolean",
  "notes": "String",
  "notificationEmailAddresses": [
    "String"
  ],
  "passwordCredentials": [
    {
      "@odata.type": "microsoft.graph.passwordCredential"
    }
  ],
  "passwordSingleSignOnSettings": {
    "@odata.type": "microsoft.graph.passwordSingleSignOnSettings"
  },
  "preferredSingleSignOnMode": "String",
  "preferredTokenSigningKeyEndDateTime": "String (timestamp)",
  "preferredTokenSigningKeyThumbprint": "String",
  "publishedPermissionScopes": [
    {
      "@odata.type": "microsoft.graph.permissionScope"
    }
  ],
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
  "servicePrincipalNames": [
    "String"
  ],
  "servicePrincipalType": "String",
  "signInAudience": "String",
  "tags": [
    "String"
  ],
  "tokenEncryptionKeyId": "Guid"
}
```

