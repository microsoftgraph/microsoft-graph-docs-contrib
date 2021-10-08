---
title: "servicePrincipal resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# servicePrincipal resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [directoryObject](../resources/directoryobject.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List servicePrincipals](../api/serviceprincipal-list.md)|[servicePrincipal](../resources/serviceprincipal.md) collection|Get a list of the [servicePrincipal](../resources/serviceprincipal.md) objects and their properties.|
|[Create servicePrincipal](../api/serviceprincipal-post-serviceprincipals.md)|[servicePrincipal](../resources/serviceprincipal.md)|Create a new [servicePrincipal](../resources/serviceprincipal.md) object.|
|[Get servicePrincipal](../api/serviceprincipal-get.md)|[servicePrincipal](../resources/serviceprincipal.md)|Read the properties and relationships of a [servicePrincipal](../resources/serviceprincipal.md) object.|
|[Update servicePrincipal](../api/serviceprincipal-update.md)|[servicePrincipal](../resources/serviceprincipal.md)|Update the properties of a [servicePrincipal](../resources/serviceprincipal.md) object.|
|[Delete servicePrincipal](../api/serviceprincipal-delete.md)|None|Deletes a [servicePrincipal](../resources/serviceprincipal.md) object.|
|[List appManagementPolicies](../api/serviceprincipal-list-appmanagementpolicies.md)|[appManagementPolicy](../resources/appmanagementpolicy.md) collection|Get the appManagementPolicy resources from the appManagementPolicies navigation property.|
|[Add appManagementPolicy](../api/serviceprincipal-post-appmanagementpolicies.md)|[appManagementPolicy](../resources/appmanagementpolicy.md)|Add appManagementPolicies by posting to the appManagementPolicies collection.|
|[List appRoleAssignedTo](../api/serviceprincipal-list-approleassignedto.md)|[appRoleAssignment](../resources/approleassignment.md) collection|Get the appRoleAssignment resources from the appRoleAssignedTo navigation property.|
|[Create appRoleAssignment](../api/serviceprincipal-post-approleassignedto.md)|[appRoleAssignment](../resources/approleassignment.md)|Create a new appRoleAssignment object.|
|[List appRoleAssignments](../api/serviceprincipal-list-approleassignments.md)|[appRoleAssignment](../resources/approleassignment.md) collection|Get the appRoleAssignment resources from the appRoleAssignments navigation property.|
|[Create appRoleAssignment](../api/serviceprincipal-post-approleassignments.md)|[appRoleAssignment](../resources/approleassignment.md)|Create a new appRoleAssignment object.|
|[List claimsMappingPolicies](../api/serviceprincipal-list-claimsmappingpolicies.md)|[claimsMappingPolicy](../resources/claimsmappingpolicy.md) collection|Get the claimsMappingPolicy resources from the claimsMappingPolicies navigation property.|
|[Add claimsMappingPolicy](../api/serviceprincipal-post-claimsmappingpolicies.md)|[claimsMappingPolicy](../resources/claimsmappingpolicy.md)|Add claimsMappingPolicies by posting to the claimsMappingPolicies collection.|
|[List createdObjects](../api/serviceprincipal-list-createdobjects.md)|[directoryObject](../resources/directoryobject.md) collection|Get the directoryObject resources from the createdObjects navigation property.|
|[Add createdObjects](../api/serviceprincipal-post-createdobjects.md)|[directoryObject](../resources/directoryobject.md)|Add createdObjects by posting to the createdObjects collection.|
|[List delegatedPermissionClassifications](../api/serviceprincipal-list-delegatedpermissionclassifications.md)|[delegatedPermissionClassification](../resources/delegatedpermissionclassification.md) collection|Get the delegatedPermissionClassification resources from the delegatedPermissionClassifications navigation property.|
|[Create delegatedPermissionClassification](../api/serviceprincipal-post-delegatedpermissionclassifications.md)|[delegatedPermissionClassification](../resources/delegatedpermissionclassification.md)|Create a new delegatedPermissionClassification object.|
|[List endpoints](../api/serviceprincipal-list-endpoints.md)|[endpoint](../resources/endpoint.md) collection|Get the endpoint resources from the endpoints navigation property.|
|[Create endpoint](../api/serviceprincipal-post-endpoints.md)|[endpoint](../resources/endpoint.md)|Create a new endpoint object.|
|[List homeRealmDiscoveryPolicies](../api/serviceprincipal-list-homerealmdiscoverypolicies.md)|[homeRealmDiscoveryPolicy](../resources/homerealmdiscoverypolicy.md) collection|Get the homeRealmDiscoveryPolicy resources from the homeRealmDiscoveryPolicies navigation property.|
|[Add homeRealmDiscoveryPolicy](../api/serviceprincipal-post-homerealmdiscoverypolicies.md)|[homeRealmDiscoveryPolicy](../resources/homerealmdiscoverypolicy.md)|Add homeRealmDiscoveryPolicies by posting to the homeRealmDiscoveryPolicies collection.|
|[List licenseDetails](../api/serviceprincipal-list-licensedetails.md)|[licenseDetails](../resources/licensedetails.md) collection|Get the licenseDetails resources from the licenseDetails navigation property.|
|[Create licenseDetails](../api/serviceprincipal-post-licensedetails.md)|[licenseDetails](../resources/licensedetails.md)|Create a new licenseDetails object.|
|[List memberOf](../api/serviceprincipal-list-memberof.md)|[directoryObject](../resources/directoryobject.md) collection|Get the directoryObject resources from the memberOf navigation property.|
|[Add memberOf](../api/serviceprincipal-post-memberof.md)|[directoryObject](../resources/directoryobject.md)|Add memberOf by posting to the memberOf collection.|
|[List oauth2PermissionGrants](../api/serviceprincipal-list-oauth2permissiongrants.md)|[oAuth2PermissionGrant](../resources/oauth2permissiongrant.md) collection|Get the oAuth2PermissionGrant resources from the oauth2PermissionGrants navigation property.|
|[Add oAuth2PermissionGrant](../api/serviceprincipal-post-oauth2permissiongrants.md)|[oAuth2PermissionGrant](../resources/oauth2permissiongrant.md)|Add oauth2PermissionGrants by posting to the oauth2PermissionGrants collection.|
|[List ownedObjects](../api/serviceprincipal-list-ownedobjects.md)|[directoryObject](../resources/directoryobject.md) collection|Get the directoryObject resources from the ownedObjects navigation property.|
|[Add ownedObjects](../api/serviceprincipal-post-ownedobjects.md)|[directoryObject](../resources/directoryobject.md)|Add ownedObjects by posting to the ownedObjects collection.|
|[List owners](../api/serviceprincipal-list-owners.md)|[directoryObject](../resources/directoryobject.md) collection|Get the directoryObject resources from the owners navigation property.|
|[Add owners](../api/serviceprincipal-post-owners.md)|[directoryObject](../resources/directoryobject.md)|Add owners by posting to the owners collection.|
|[List tokenIssuancePolicies](../api/serviceprincipal-list-tokenissuancepolicies.md)|[tokenIssuancePolicy](../resources/tokenissuancepolicy.md) collection|Get the tokenIssuancePolicy resources from the tokenIssuancePolicies navigation property.|
|[Add tokenIssuancePolicy](../api/serviceprincipal-post-tokenissuancepolicies.md)|[tokenIssuancePolicy](../resources/tokenissuancepolicy.md)|Add tokenIssuancePolicies by posting to the tokenIssuancePolicies collection.|
|[List tokenLifetimePolicies](../api/serviceprincipal-list-tokenlifetimepolicies.md)|[tokenLifetimePolicy](../resources/tokenlifetimepolicy.md) collection|Get the tokenLifetimePolicy resources from the tokenLifetimePolicies navigation property.|
|[Add tokenLifetimePolicy](../api/serviceprincipal-post-tokenlifetimepolicies.md)|[tokenLifetimePolicy](../resources/tokenlifetimepolicy.md)|Add tokenLifetimePolicies by posting to the tokenLifetimePolicies collection.|
|[List transitiveMemberOf](../api/serviceprincipal-list-transitivememberof.md)|[directoryObject](../resources/directoryobject.md) collection|Get the directoryObject resources from the transitiveMemberOf navigation property.|
|[Add transitiveMemberOf](../api/serviceprincipal-post-transitivememberof.md)|[directoryObject](../resources/directoryobject.md)|Add transitiveMemberOf by posting to the transitiveMemberOf collection.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|accountEnabled|Boolean|**TODO: Add Description**|
|addIns|[addIn](../resources/addin.md) collection|**TODO: Add Description**|
|alternativeNames|String collection|**TODO: Add Description**|
|api|[apiServicePrincipal](../resources/apiserviceprincipal.md)|**TODO: Add Description**|
|appDescription|String|**TODO: Add Description**|
|appDisplayName|String|**TODO: Add Description**|
|appId|String|**TODO: Add Description**|
|applicationTemplateId|String|**TODO: Add Description**|
|appMetadata|[appMetadata](../resources/appmetadata.md)|**TODO: Add Description**|
|appOwnerOrganizationId|Guid|**TODO: Add Description**|
|appRoleAssignmentRequired|Boolean|**TODO: Add Description**|
|appRoles|[appRole](../resources/approle.md) collection|**TODO: Add Description**|
|createdDateTime|DateTimeOffset|**TODO: Add Description**|
|customSecurityAttributes|[customSecurityAttributeValue](../resources/customsecurityattributevalue.md)|**TODO: Add Description**|
|deletedDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [directoryObject](../resources/directoryobject.md).|
|description|String|**TODO: Add Description**|
|disabledByMicrosoftStatus|String|**TODO: Add Description**|
|displayName|String|**TODO: Add Description**|
|errorUrl|String|**TODO: Add Description**|
|hasPermissionClassifications|Boolean|**TODO: Add Description**|
|homepage|String|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [directoryObject](../resources/directoryobject.md).|
|info|[informationalUrl](../resources/informationalurl.md)|**TODO: Add Description**|
|isManagementRestricted|Boolean|**TODO: Add Description**|
|keyCredentials|[keyCredential](../resources/keycredential.md) collection|**TODO: Add Description**|
|loginUrl|String|**TODO: Add Description**|
|logoutUrl|String|**TODO: Add Description**|
|notes|String|**TODO: Add Description**|
|notificationEmailAddresses|String collection|**TODO: Add Description**|
|passwordCredentials|[passwordCredential](../resources/passwordcredential.md) collection|**TODO: Add Description**|
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
  "baseType": "Microsoft.DirectoryServices.directoryObject",
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
  "appDescription": "String",
  "appDisplayName": "String",
  "appMetadata": {
    "@odata.type": "microsoft.graph.appMetadata"
  },
  "appId": "String",
  "applicationTemplateId": "String",
  "appOwnerOrganizationId": "Guid",
  "appRoleAssignmentRequired": "Boolean",
  "appRoles": [
    {
      "@odata.type": "microsoft.graph.appRole"
    }
  ],
  "createdDateTime": "String (timestamp)",
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
  "tokenEncryptionKeyId": "Guid",
  "resourceSpecificApplicationPermissions": [
    {
      "@odata.type": "microsoft.graph.resourceSpecificPermission"
    }
  ]
}
```

