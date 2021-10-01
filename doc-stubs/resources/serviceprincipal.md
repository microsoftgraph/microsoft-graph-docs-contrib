---
title: "servicePrincipal resource type"
description: "Represents an Azure Active Directory object. The directoryObject type is the base type for many other directory entity types."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# servicePrincipal resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an Azure Active Directory object. The directoryObject type is the base type for many other directory entity types.


Inherits from [directoryObject](../resources/directoryobject.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List servicePrincipals](../api/serviceprincipal-list.md)|[servicePrincipal](../resources/serviceprincipal.md) collection|Get a list of the [servicePrincipal](../resources/serviceprincipal.md) objects and their properties.|
|[Create servicePrincipal](../api/serviceprincipal-post-serviceprincipals.md)|[servicePrincipal](../resources/serviceprincipal.md)|Create a new [servicePrincipal](../resources/serviceprincipal.md) object.|
|[Get servicePrincipal](../api/serviceprincipal-get.md)|[servicePrincipal](../resources/serviceprincipal.md)|Read the properties and relationships of a [servicePrincipal](../resources/serviceprincipal.md) object.|
|[Update servicePrincipal](../api/serviceprincipal-update.md)|[servicePrincipal](../resources/serviceprincipal.md)|Update the properties of a [servicePrincipal](../resources/serviceprincipal.md) object.|
|[Delete servicePrincipal](../api/serviceprincipal-delete.md)|None|Deletes a [servicePrincipal](../resources/serviceprincipal.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
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
|deletedDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [directoryObject](../resources/directoryobject.md).|
|description|String|**TODO: Add Description**|
|disabledByMicrosoftStatus|String|**TODO: Add Description**|
|displayName|String|**TODO: Add Description**|
|errorUrl|String|**TODO: Add Description**|
|hasPermissionClassifications|Boolean|**TODO: Add Description**|
|homepage|String|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
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

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|appManagementPolicies|[appManagementPolicy](../resources/appmanagementpolicy.md) collection|**TODO: Add Description**|
|appRoleAssignedTo|[appRoleAssignment](../resources/approleassignment.md) collection|**TODO: Add Description**|
|appRoleAssignments|[appRoleAssignment](../resources/approleassignment.md) collection|**TODO: Add Description**|
|claimsMappingPolicies|[claimsMappingPolicy](../resources/claimsmappingpolicy.md) collection|**TODO: Add Description**|
|createdObjects|[directoryObject](../resources/directoryobject.md) collection|**TODO: Add Description**|
|delegatedPermissionClassifications|[delegatedPermissionClassification](../resources/delegatedpermissionclassification.md) collection|**TODO: Add Description**|
|endpoints|[endpoint](../resources/endpoint.md) collection|**TODO: Add Description**|
|federatedIdentityCredentials|[federatedIdentityCredential](../resources/federatedidentitycredential.md) collection|**TODO: Add Description**|
|homeRealmDiscoveryPolicies|[homeRealmDiscoveryPolicy](../resources/homerealmdiscoverypolicy.md) collection|**TODO: Add Description**|
|licenseDetails|[licenseDetails](../resources/licensedetails.md) collection|**TODO: Add Description**|
|memberOf|[directoryObject](../resources/directoryobject.md) collection|**TODO: Add Description**|
|oauth2PermissionGrants|[oAuth2PermissionGrant](../resources/oauth2permissiongrant.md) collection|**TODO: Add Description**|
|ownedObjects|[directoryObject](../resources/directoryobject.md) collection|**TODO: Add Description**|
|owners|[directoryObject](../resources/directoryobject.md) collection|**TODO: Add Description**|
|policies|[directoryObject](../resources/directoryobject.md) collection|**TODO: Add Description**|
|roleManagement|[principalBoundRoleManagement](../resources/principalboundrolemanagement.md)|**TODO: Add Description**|
|synchronization|[synchronization](../resources/synchronization.md)|**TODO: Add Description**|
|tokenIssuancePolicies|[tokenIssuancePolicy](../resources/tokenissuancepolicy.md) collection|**TODO: Add Description**|
|tokenLifetimePolicies|[tokenLifetimePolicy](../resources/tokenlifetimepolicy.md) collection|**TODO: Add Description**|
|transitiveMemberOf|[directoryObject](../resources/directoryobject.md) collection|**TODO: Add Description**|
|transitiveRoleAssignments|[unifiedRoleAssignment](../resources/unifiedroleassignment.md)|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.servicePrincipal",
  "baseType": "microsoft.graph.directoryObject",
  "openType": true
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.servicePrincipal",
  "id": "String (identifier)",
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

