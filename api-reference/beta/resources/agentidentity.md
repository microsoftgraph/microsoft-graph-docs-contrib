---
title: "agentIdentity resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
ms.date: 10/27/2025
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS subservice. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
doc_type: resourcePageType
---

# agentIdentity resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [servicePrincipal](../resources/serviceprincipal.md).

This resource is an open type.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/agentserviceprincipal-list-identities.md)|[agentIdentity](../resources/agentidentity.md) collection|Get a list of the agentIdentity objects and their properties.|
|[Create](../api/agentserviceprincipal-post-identities.md)|[agentIdentity](../resources/agentidentity.md)|Create a new agentIdentity object.|
|[Get](../api/agentidentity-get.md)|[agentIdentity](../resources/agentidentity.md)|Read the properties and relationships of [agentIdentity](../resources/agentidentity.md) object.|
|[Update](../api/agentidentity-update.md)|[agentIdentity](../resources/agentidentity.md)|Update the properties of an agentIdentity object.|
|[Delete](../api/agentserviceprincipal-delete-identities.md)|None|Delete an agentIdentity object.|
|[extendLifetime](../api/agentidentity-extendlifetime.md)|[agentIdentity](../resources/agentidentity.md)|**TODO: Add Description**|
|[grantPermissions](../api/agentidentity-grantpermissions.md)|None|**TODO: Add Description**|
|[extendLifetime](../api/agentidentity-extendlifetime.md)|[servicePrincipal](../resources/serviceprincipal.md)|**TODO: Add Description**|
|[createPasswordSingleSignOnCredentials](../api/agentidentity-createpasswordsinglesignoncredentials.md)|[passwordSingleSignOnCredentialSet](../resources/passwordsinglesignoncredentialset.md)|**TODO: Add Description**|
|[getPasswordSingleSignOnCredentials](../api/agentidentity-getpasswordsinglesignoncredentials.md)|[passwordSingleSignOnCredentialSet](../resources/passwordsinglesignoncredentialset.md)|**TODO: Add Description**|
|[deletePasswordSingleSignOnCredentials](../api/agentidentity-deletepasswordsinglesignoncredentials.md)|None|**TODO: Add Description**|
|[updatePasswordSingleSignOnCredentials](../api/agentidentity-updatepasswordsinglesignoncredentials.md)|None|**TODO: Add Description**|
|[addTokenSigningCertificate](../api/agentidentity-addtokensigningcertificate.md)|[selfSignedCertificate](../resources/selfsignedcertificate.md)|**TODO: Add Description**|
|[permanentDelete](../api/agentidentity-permanentdelete.md)|None|**TODO: Add Description**|
|[revokeTokens](../api/agentidentity-revoketokens.md)|Boolean|**TODO: Add Description**|
|[extendLifecycle](../api/agentidentity-extendlifecycle.md)|None|**TODO: Add Description**|
|[List appManagementPolicies](../api/agentidentity-list-appmanagementpolicies.md)|[appManagementPolicy](../resources/appmanagementpolicy.md) collection|**TODO: Add a useful description.**|
|[Add appManagementPolicy](../api/agentidentity-post-appmanagementpolicies.md)|[appManagementPolicy](../resources/appmanagementpolicy.md)|Add appManagementPolicies by posting to the appManagementPolicies collection.|
|[Remove appManagementPolicies](../api/agentidentity-delete-appmanagementpolicies.md)|None|Remove an [appManagementPolicy](../resources/appmanagementpolicy.md) object.|
|[List appRoleAssignedTo](../api/agentidentity-list-approleassignedto.md)|[appRoleAssignment](../resources/approleassignment.md) collection|**TODO: Add a useful description.**|
|[Create appRoleAssignment](../api/agentidentity-post-approleassignedto.md)|[appRoleAssignment](../resources/approleassignment.md)|Create a new appRoleAssignment object.|
|[List appRoleAssignments](../api/agentidentity-list-approleassignments.md)|[appRoleAssignment](../resources/approleassignment.md) collection|**TODO: Add a useful description.**|
|[Create appRoleAssignment](../api/agentidentity-post-approleassignments.md)|[appRoleAssignment](../resources/approleassignment.md)|Create a new appRoleAssignment object.|
|[List servicePrincipalAuthorization](../api/agentidentity-list-authorization.md)|[servicePrincipalAuthorization](../resources/serviceprincipalauthorization.md) collection|**TODO: Add a useful description.**|
|[Create servicePrincipalAuthorization](../api/agentidentity-post-authorization.md)|[servicePrincipalAuthorization](../resources/serviceprincipalauthorization.md)|Create a new servicePrincipalAuthorization object.|
|[List claimsMappingPolicies](../api/agentidentity-list-claimsmappingpolicies.md)|[claimsMappingPolicy](../resources/claimsmappingpolicy.md) collection|**TODO: Add a useful description.**|
|[Add claimsMappingPolicy](../api/agentidentity-post-claimsmappingpolicies.md)|[claimsMappingPolicy](../resources/claimsmappingpolicy.md)|Add claimsMappingPolicies by posting to the claimsMappingPolicies collection.|
|[Remove claimsMappingPolicies](../api/agentidentity-delete-claimsmappingpolicies.md)|None|Remove a [claimsMappingPolicy](../resources/claimsmappingpolicy.md) object.|
|[List customClaimsPolicy](../api/agentidentity-list-claimspolicy.md)|[customClaimsPolicy](../resources/customclaimspolicy.md) collection|**TODO: Add a useful description.**|
|[Create customClaimsPolicy](../api/agentidentity-post-claimspolicy.md)|[customClaimsPolicy](../resources/customclaimspolicy.md)|Create a new customClaimsPolicy object.|
|[List createdObjects](../api/agentidentity-list-createdobjects.md)|[directoryObject](../resources/directoryobject.md) collection|**TODO: Add a useful description.**|
|[Add createdObjects](../api/agentidentity-post-createdobjects.md)|[directoryObject](../resources/directoryobject.md)|Add createdObjects by posting to the createdObjects collection.|
|[Remove createdObjects](../api/agentidentity-delete-createdobjects.md)|None|Remove a [directoryObject](../resources/directoryobject.md) object.|
|[List delegatedPermissionClassifications](../api/agentidentity-list-delegatedpermissionclassifications.md)|[delegatedPermissionClassification](../resources/delegatedpermissionclassification.md) collection|**TODO: Add a useful description.**|
|[Create delegatedPermissionClassification](../api/agentidentity-post-delegatedpermissionclassifications.md)|[delegatedPermissionClassification](../resources/delegatedpermissionclassification.md)|Create a new delegatedPermissionClassification object.|
|[List endpoints](../api/agentidentity-list-endpoints.md)|[endpoint](../resources/endpoint.md) collection|**TODO: Add a useful description.**|
|[Create endpoint](../api/agentidentity-post-endpoints.md)|[endpoint](../resources/endpoint.md)|Create a new endpoint object.|
|[List federatedIdentityCredentials](../api/agentidentity-list-federatedidentitycredentials.md)|[federatedIdentityCredential](../resources/federatedidentitycredential.md) collection|**TODO: Add a useful description.**|
|[Create federatedIdentityCredential](../api/agentidentity-post-federatedidentitycredentials.md)|[federatedIdentityCredential](../resources/federatedidentitycredential.md)|Create a new federatedIdentityCredential object.|
|[List homeRealmDiscoveryPolicies](../api/agentidentity-list-homerealmdiscoverypolicies.md)|[homeRealmDiscoveryPolicy](../resources/homerealmdiscoverypolicy.md) collection|**TODO: Add a useful description.**|
|[Add homeRealmDiscoveryPolicy](../api/agentidentity-post-homerealmdiscoverypolicies.md)|[homeRealmDiscoveryPolicy](../resources/homerealmdiscoverypolicy.md)|Add homeRealmDiscoveryPolicies by posting to the homeRealmDiscoveryPolicies collection.|
|[Remove homeRealmDiscoveryPolicies](../api/agentidentity-delete-homerealmdiscoverypolicies.md)|None|Remove a [homeRealmDiscoveryPolicy](../resources/homerealmdiscoverypolicy.md) object.|
|[List licenseDetails](../api/agentidentity-list-licensedetails.md)|[licenseDetails](../resources/licensedetails.md) collection|**TODO: Add a useful description.**|
|[Create licenseDetails](../api/agentidentity-post-licensedetails.md)|[licenseDetails](../resources/licensedetails.md)|Create a new licenseDetails object.|
|[List memberOf](../api/agentidentity-list-memberof.md)|[directoryObject](../resources/directoryobject.md) collection|**TODO: Add a useful description.**|
|[Add memberOf](../api/agentidentity-post-memberof.md)|[directoryObject](../resources/directoryobject.md)|Add memberOf by posting to the memberOf collection.|
|[Remove memberOf](../api/agentidentity-delete-memberof.md)|None|Remove a [directoryObject](../resources/directoryobject.md) object.|
|[List oauth2PermissionGrants](../api/agentidentity-list-oauth2permissiongrants.md)|[oAuth2PermissionGrant](../resources/oauth2permissiongrant.md) collection|**TODO: Add a useful description.**|
|[Add oAuth2PermissionGrant](../api/agentidentity-post-oauth2permissiongrants.md)|[oAuth2PermissionGrant](../resources/oauth2permissiongrant.md)|Add oauth2PermissionGrants by posting to the oauth2PermissionGrants collection.|
|[Remove oauth2PermissionGrants](../api/agentidentity-delete-oauth2permissiongrants.md)|None|Remove an [oAuth2PermissionGrant](../resources/oauth2permissiongrant.md) object.|
|[List ownedObjects](../api/agentidentity-list-ownedobjects.md)|[directoryObject](../resources/directoryobject.md) collection|**TODO: Add a useful description.**|
|[Add ownedObjects](../api/agentidentity-post-ownedobjects.md)|[directoryObject](../resources/directoryobject.md)|Add ownedObjects by posting to the ownedObjects collection.|
|[Remove ownedObjects](../api/agentidentity-delete-ownedobjects.md)|None|Remove a [directoryObject](../resources/directoryobject.md) object.|
|[List owners](../api/agentidentity-list-owners.md)|[directoryObject](../resources/directoryobject.md) collection|**TODO: Add a useful description.**|
|[Add owners](../api/agentidentity-post-owners.md)|[directoryObject](../resources/directoryobject.md)|Add owners by posting to the owners collection.|
|[Remove owners](../api/agentidentity-delete-owners.md)|None|Remove a [directoryObject](../resources/directoryobject.md) object.|
|[List permissionGrantPreApprovalPolicies](../api/agentidentity-list-permissiongrantpreapprovalpolicies.md)|[permissionGrantPreApprovalPolicy](../resources/permissiongrantpreapprovalpolicy.md) collection|**TODO: Add a useful description.**|
|[Add permissionGrantPreApprovalPolicy](../api/agentidentity-post-permissiongrantpreapprovalpolicies.md)|[permissionGrantPreApprovalPolicy](../resources/permissiongrantpreapprovalpolicy.md)|Add permissionGrantPreApprovalPolicies by posting to the permissionGrantPreApprovalPolicies collection.|
|[Remove permissionGrantPreApprovalPolicies](../api/agentidentity-delete-permissiongrantpreapprovalpolicies.md)|None|Remove a [permissionGrantPreApprovalPolicy](../resources/permissiongrantpreapprovalpolicy.md) object.|
|[List policies](../api/agentidentity-list-policies.md)|[directoryObject](../resources/directoryobject.md) collection|**TODO: Add a useful description.**|
|[Add policies](../api/agentidentity-post-policies.md)|[directoryObject](../resources/directoryobject.md)|Add policies by posting to the policies collection.|
|[Remove policies](../api/agentidentity-delete-policies.md)|None|Remove a [directoryObject](../resources/directoryobject.md) object.|
|[List remoteDesktopSecurityConfiguration](../api/agentidentity-list-remotedesktopsecurityconfiguration.md)|[remoteDesktopSecurityConfiguration](../resources/remotedesktopsecurityconfiguration.md) collection|**TODO: Add a useful description.**|
|[Create remoteDesktopSecurityConfiguration](../api/agentidentity-post-remotedesktopsecurityconfiguration.md)|[remoteDesktopSecurityConfiguration](../resources/remotedesktopsecurityconfiguration.md)|Create a new remoteDesktopSecurityConfiguration object.|
|[List principalBoundRoleManagement](../api/agentidentity-list-rolemanagement.md)|[principalBoundRoleManagement](../resources/principalboundrolemanagement.md) collection|**TODO: Add a useful description.**|
|[Create principalBoundRoleManagement](../api/agentidentity-post-rolemanagement.md)|[principalBoundRoleManagement](../resources/principalboundrolemanagement.md)|Create a new principalBoundRoleManagement object.|
|[List securedExternalData](../api/agentidentity-list-securedexternaldata.md)|[securedExternalData](../resources/securedexternaldata.md) collection|**TODO: Add a useful description.**|
|[Create securedExternalData](../api/agentidentity-post-securedexternaldata.md)|[securedExternalData](../resources/securedexternaldata.md)|Create a new securedExternalData object.|
|[List sponsors](../api/agentidentity-list-sponsors.md)|[directoryObject](../resources/directoryobject.md) collection|**TODO: Add a useful description.**|
|[Add sponsors](../api/agentidentity-post-sponsors.md)|[directoryObject](../resources/directoryobject.md)|Add sponsors by posting to the sponsors collection.|
|[Remove sponsors](../api/agentidentity-delete-sponsors.md)|None|Remove a [directoryObject](../resources/directoryobject.md) object.|
|[List synchronization](../api/agentidentity-list-synchronization.md)|[synchronization](../resources/synchronization.md) collection|**TODO: Add a useful description.**|
|[Create synchronization](../api/agentidentity-post-synchronization.md)|[synchronization](../resources/synchronization.md)|Create a new synchronization object.|
|[List tokenIssuancePolicies](../api/agentidentity-list-tokenissuancepolicies.md)|[tokenIssuancePolicy](../resources/tokenissuancepolicy.md) collection|**TODO: Add a useful description.**|
|[Add tokenIssuancePolicy](../api/agentidentity-post-tokenissuancepolicies.md)|[tokenIssuancePolicy](../resources/tokenissuancepolicy.md)|Add tokenIssuancePolicies by posting to the tokenIssuancePolicies collection.|
|[Remove tokenIssuancePolicies](../api/agentidentity-delete-tokenissuancepolicies.md)|None|Remove a [tokenIssuancePolicy](../resources/tokenissuancepolicy.md) object.|
|[List tokenLifetimePolicies](../api/agentidentity-list-tokenlifetimepolicies.md)|[tokenLifetimePolicy](../resources/tokenlifetimepolicy.md) collection|**TODO: Add a useful description.**|
|[Add tokenLifetimePolicy](../api/agentidentity-post-tokenlifetimepolicies.md)|[tokenLifetimePolicy](../resources/tokenlifetimepolicy.md)|Add tokenLifetimePolicies by posting to the tokenLifetimePolicies collection.|
|[Remove tokenLifetimePolicies](../api/agentidentity-delete-tokenlifetimepolicies.md)|None|Remove a [tokenLifetimePolicy](../resources/tokenlifetimepolicy.md) object.|
|[List tokenRevocations](../api/agentidentity-list-tokenrevocations.md)|[tokenRevocation](../resources/tokenrevocation.md) collection|**TODO: Add a useful description.**|
|[Create tokenRevocation](../api/agentidentity-post-tokenrevocations.md)|[tokenRevocation](../resources/tokenrevocation.md)|Create a new tokenRevocation object.|
|[List transitiveMemberOf](../api/agentidentity-list-transitivememberof.md)|[directoryObject](../resources/directoryobject.md) collection|**TODO: Add a useful description.**|
|[Add transitiveMemberOf](../api/agentidentity-post-transitivememberof.md)|[directoryObject](../resources/directoryobject.md)|Add transitiveMemberOf by posting to the transitiveMemberOf collection.|
|[Remove transitiveMemberOf](../api/agentidentity-delete-transitivememberof.md)|None|Remove a [directoryObject](../resources/directoryobject.md) object.|
|[List unifiedRoleAssignment](../api/agentidentity-list-transitiveroleassignments.md)|[unifiedRoleAssignment](../resources/unifiedroleassignment.md) collection|**TODO: Add a useful description.**|
|[Add unifiedRoleAssignment](../api/agentidentity-post-transitiveroleassignments.md)|[unifiedRoleAssignment](../resources/unifiedroleassignment.md)|Add transitiveRoleAssignments by posting to the transitiveRoleAssignments collection.|
|[Remove unifiedRoleAssignment](../api/agentidentity-delete-transitiveroleassignments.md)|None|Remove an [unifiedRoleAssignment](../resources/unifiedroleassignment.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|accountEnabled|Boolean|**TODO: Add Description** Inherited from [servicePrincipal](../resources/serviceprincipal.md).|
|addIns|[addIn](../resources/addin.md) collection|**TODO: Add Description** Inherited from [servicePrincipal](../resources/serviceprincipal.md).|
|agentAppId|String|**TODO: Add Description**|
|agentIdentityBlueprintId|String|**TODO: Add Description**|
|alternativeNames|String collection|**TODO: Add Description** Inherited from [servicePrincipal](../resources/serviceprincipal.md).|
|api|[apiServicePrincipal](../resources/apiserviceprincipal.md)|**TODO: Add Description** Inherited from [servicePrincipal](../resources/serviceprincipal.md).|
|appCategory|appCategoryState|**TODO: Add Description** Inherited from [servicePrincipal](../resources/serviceprincipal.md). The possible values are: `mdm`, `roamingSettingsSync`, `vpn`, `p2p`, `unknownFutureValue`.|
|appData|String|**TODO: Add Description** Inherited from [servicePrincipal](../resources/serviceprincipal.md).|
|appDescription|String|**TODO: Add Description** Inherited from [servicePrincipal](../resources/serviceprincipal.md).|
|appDisplayName|String|**TODO: Add Description** Inherited from [servicePrincipal](../resources/serviceprincipal.md).|
|appId|String|**TODO: Add Description** Inherited from [servicePrincipal](../resources/serviceprincipal.md).|
|applicationTemplateId|String|**TODO: Add Description** Inherited from [servicePrincipal](../resources/serviceprincipal.md).|
|appMetadata|[appMetadata](../resources/appmetadata.md)|**TODO: Add Description** Inherited from [servicePrincipal](../resources/serviceprincipal.md).|
|appOwnerOrganizationId|Guid|**TODO: Add Description** Inherited from [servicePrincipal](../resources/serviceprincipal.md).|
|appRoleAssignmentRequired|Boolean|**TODO: Add Description** Inherited from [servicePrincipal](../resources/serviceprincipal.md).|
|appRoles|[appRole](../resources/approle.md) collection|**TODO: Add Description** Inherited from [servicePrincipal](../resources/serviceprincipal.md).|
|assignmentRequiredForPrincipalTypes|assignmentRequiredForPrincipalTypes|**TODO: Add Description** Inherited from [servicePrincipal](../resources/serviceprincipal.md). The possible values are: `none`, `appOnlyClientServicePrincipals`, `usersNotInTenant`, `guestUsers`, `memberUsers`, `unknownFutureValue`.|
|certification|[certification](../resources/certification.md)|**TODO: Add Description** Inherited from [servicePrincipal](../resources/serviceprincipal.md).|
|createdByAppId|String|**TODO: Add Description** Inherited from [servicePrincipal](../resources/serviceprincipal.md).|
|createdDateTime|DateTimeOffset|**TODO: Add Description**|
|customSecurityAttributes|[customSecurityAttributeValue](../resources/customsecurityattributevalue.md)|**TODO: Add Description** Inherited from [servicePrincipal](../resources/serviceprincipal.md).|
|deletedDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [directoryObject](../resources/directoryobject.md).|
|description|String|**TODO: Add Description** Inherited from [servicePrincipal](../resources/serviceprincipal.md).|
|disabledByMicrosoftStatus|String|**TODO: Add Description** Inherited from [servicePrincipal](../resources/serviceprincipal.md).|
|displayName|String|**TODO: Add Description** Inherited from [servicePrincipal](../resources/serviceprincipal.md).|
|errorUrl|String|**TODO: Add Description** Inherited from [servicePrincipal](../resources/serviceprincipal.md).|
|hasPermissionClassifications|Boolean|**TODO: Add Description** Inherited from [servicePrincipal](../resources/serviceprincipal.md).|
|homepage|String|**TODO: Add Description** Inherited from [servicePrincipal](../resources/serviceprincipal.md).|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md). Inherits from [entity](../resources/entity.md)|
|info|[informationalUrl](../resources/informationalurl.md)|**TODO: Add Description** Inherited from [servicePrincipal](../resources/serviceprincipal.md).|
|isManagementRestricted|Boolean|**TODO: Add Description** Inherited from [servicePrincipal](../resources/serviceprincipal.md).|
|keyCredentials|[keyCredential](../resources/keycredential.md) collection|**TODO: Add Description** Inherited from [servicePrincipal](../resources/serviceprincipal.md).|
|lifecycle|[lifecycle](../resources/lifecycle.md)|**TODO: Add Description** Inherited from [servicePrincipal](../resources/serviceprincipal.md).|
|loginUrl|String|**TODO: Add Description** Inherited from [servicePrincipal](../resources/serviceprincipal.md).|
|logoutUrl|String|**TODO: Add Description** Inherited from [servicePrincipal](../resources/serviceprincipal.md).|
|managedIdentityResourceId|String|**TODO: Add Description** Inherited from [servicePrincipal](../resources/serviceprincipal.md).|
|microsoftPolicyGroup|Boolean|**TODO: Add Description** Inherited from [servicePrincipal](../resources/serviceprincipal.md).|
|notes|String|**TODO: Add Description** Inherited from [servicePrincipal](../resources/serviceprincipal.md).|
|notificationEmailAddresses|String collection|**TODO: Add Description** Inherited from [servicePrincipal](../resources/serviceprincipal.md).|
|passwordCredentials|[passwordCredential](../resources/passwordcredential.md) collection|**TODO: Add Description** Inherited from [servicePrincipal](../resources/serviceprincipal.md).|
|passwordSingleSignOnSettings|[passwordSingleSignOnSettings](../resources/passwordsinglesignonsettings.md)|**TODO: Add Description** Inherited from [servicePrincipal](../resources/serviceprincipal.md).|
|preferredSingleSignOnMode|String|**TODO: Add Description** Inherited from [servicePrincipal](../resources/serviceprincipal.md).|
|preferredTokenSigningKeyEndDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [servicePrincipal](../resources/serviceprincipal.md).|
|preferredTokenSigningKeyThumbprint|String|**TODO: Add Description** Inherited from [servicePrincipal](../resources/serviceprincipal.md).|
|publishedPermissionScopes|[permissionScope](../resources/permissionscope.md) collection|**TODO: Add Description** Inherited from [servicePrincipal](../resources/serviceprincipal.md).|
|publisherName|String|**TODO: Add Description** Inherited from [servicePrincipal](../resources/serviceprincipal.md).|
|replyUrls|String collection|**TODO: Add Description** Inherited from [servicePrincipal](../resources/serviceprincipal.md).|
|resourceSpecificApplicationPermissions|[resourceSpecificPermission](../resources/resourcespecificpermission.md) collection|**TODO: Add Description** Inherited from [servicePrincipal](../resources/serviceprincipal.md).|
|samlMetadataUrl|String|**TODO: Add Description** Inherited from [servicePrincipal](../resources/serviceprincipal.md).|
|samlSingleSignOnSettings|[samlSingleSignOnSettings](../resources/samlsinglesignonsettings.md)|**TODO: Add Description** Inherited from [servicePrincipal](../resources/serviceprincipal.md).|
|samlSLOBindingType|samlSLOBindingType|**TODO: Add Description** Inherited from [servicePrincipal](../resources/serviceprincipal.md). The possible values are: `httpRedirect`, `httpPost`, `unknownFutureValue`.|
|servicePrincipalNames|String collection|**TODO: Add Description** Inherited from [servicePrincipal](../resources/serviceprincipal.md).|
|servicePrincipalType|String|**TODO: Add Description** Inherited from [servicePrincipal](../resources/serviceprincipal.md).|
|signInAudience|String|**TODO: Add Description** Inherited from [servicePrincipal](../resources/serviceprincipal.md).|
|tags|String collection|**TODO: Add Description** Inherited from [servicePrincipal](../resources/serviceprincipal.md).|
|tokenEncryptionKeyId|Guid|**TODO: Add Description** Inherited from [servicePrincipal](../resources/serviceprincipal.md).|
|tokensRevocationDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [servicePrincipal](../resources/serviceprincipal.md).|
|verifiedPublisher|[verifiedPublisher](../resources/verifiedpublisher.md)|**TODO: Add Description** Inherited from [servicePrincipal](../resources/serviceprincipal.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|appManagementPolicies|[appManagementPolicy](../resources/appmanagementpolicy.md) collection|**TODO: Add Description** Inherited from [microsoft.graph.servicePrincipal](../resources/serviceprincipal.md)|
|appRoleAssignedTo|[appRoleAssignment](../resources/approleassignment.md) collection|**TODO: Add Description** Inherited from [microsoft.graph.servicePrincipal](../resources/serviceprincipal.md)|
|appRoleAssignments|[appRoleAssignment](../resources/approleassignment.md) collection|**TODO: Add Description** Inherited from [microsoft.graph.servicePrincipal](../resources/serviceprincipal.md)|
|authorization|[servicePrincipalAuthorization](../resources/serviceprincipalauthorization.md)|**TODO: Add Description** Inherited from [microsoft.graph.servicePrincipal](../resources/serviceprincipal.md)|
|claimsMappingPolicies|[claimsMappingPolicy](../resources/claimsmappingpolicy.md) collection|**TODO: Add Description** Inherited from [microsoft.graph.servicePrincipal](../resources/serviceprincipal.md)|
|claimsPolicy|[customClaimsPolicy](../resources/customclaimspolicy.md)|**TODO: Add Description** Inherited from [microsoft.graph.servicePrincipal](../resources/serviceprincipal.md)|
|createdObjects|[directoryObject](../resources/directoryobject.md) collection|**TODO: Add Description** Inherited from [microsoft.graph.servicePrincipal](../resources/serviceprincipal.md)|
|delegatedPermissionClassifications|[delegatedPermissionClassification](../resources/delegatedpermissionclassification.md) collection|**TODO: Add Description** Inherited from [microsoft.graph.servicePrincipal](../resources/serviceprincipal.md)|
|endpoints|[endpoint](../resources/endpoint.md) collection|**TODO: Add Description** Inherited from [microsoft.graph.servicePrincipal](../resources/serviceprincipal.md)|
|federatedIdentityCredentials|[federatedIdentityCredential](../resources/federatedidentitycredential.md) collection|**TODO: Add Description** Inherited from [microsoft.graph.servicePrincipal](../resources/serviceprincipal.md)|
|homeRealmDiscoveryPolicies|[homeRealmDiscoveryPolicy](../resources/homerealmdiscoverypolicy.md) collection|**TODO: Add Description** Inherited from [microsoft.graph.servicePrincipal](../resources/serviceprincipal.md)|
|licenseDetails|[licenseDetails](../resources/licensedetails.md) collection|**TODO: Add Description** Inherited from [microsoft.graph.servicePrincipal](../resources/serviceprincipal.md)|
|memberOf|[directoryObject](../resources/directoryobject.md) collection|**TODO: Add Description** Inherited from [microsoft.graph.servicePrincipal](../resources/serviceprincipal.md)|
|oauth2PermissionGrants|[oAuth2PermissionGrant](../resources/oauth2permissiongrant.md) collection|**TODO: Add Description** Inherited from [microsoft.graph.servicePrincipal](../resources/serviceprincipal.md)|
|ownedObjects|[directoryObject](../resources/directoryobject.md) collection|**TODO: Add Description** Inherited from [microsoft.graph.servicePrincipal](../resources/serviceprincipal.md)|
|owners|[directoryObject](../resources/directoryobject.md) collection|**TODO: Add Description** Inherited from [microsoft.graph.servicePrincipal](../resources/serviceprincipal.md)|
|permissionGrantPreApprovalPolicies|[permissionGrantPreApprovalPolicy](../resources/permissiongrantpreapprovalpolicy.md) collection|**TODO: Add Description** Inherited from [microsoft.graph.servicePrincipal](../resources/serviceprincipal.md)|
|policies|[directoryObject](../resources/directoryobject.md) collection|**TODO: Add Description** Inherited from [microsoft.graph.servicePrincipal](../resources/serviceprincipal.md)|
|remoteDesktopSecurityConfiguration|[remoteDesktopSecurityConfiguration](../resources/remotedesktopsecurityconfiguration.md)|**TODO: Add Description** Inherited from [microsoft.graph.servicePrincipal](../resources/serviceprincipal.md)|
|roleManagement|[principalBoundRoleManagement](../resources/principalboundrolemanagement.md)|**TODO: Add Description** Inherited from [microsoft.graph.servicePrincipal](../resources/serviceprincipal.md)|
|securedExternalData|[securedExternalData](../resources/securedexternaldata.md) collection|**TODO: Add Description** Inherited from [microsoft.graph.servicePrincipal](../resources/serviceprincipal.md)|
|sponsors|[directoryObject](../resources/directoryobject.md) collection|**TODO: Add Description**|
|synchronization|[synchronization](../resources/synchronization.md)|**TODO: Add Description** Inherited from [microsoft.graph.servicePrincipal](../resources/serviceprincipal.md)|
|tokenIssuancePolicies|[tokenIssuancePolicy](../resources/tokenissuancepolicy.md) collection|**TODO: Add Description** Inherited from [microsoft.graph.servicePrincipal](../resources/serviceprincipal.md)|
|tokenLifetimePolicies|[tokenLifetimePolicy](../resources/tokenlifetimepolicy.md) collection|**TODO: Add Description** Inherited from [microsoft.graph.servicePrincipal](../resources/serviceprincipal.md)|
|tokenRevocations|[tokenRevocation](../resources/tokenrevocation.md) collection|**TODO: Add Description** Inherited from [microsoft.graph.servicePrincipal](../resources/serviceprincipal.md)|
|transitiveMemberOf|[directoryObject](../resources/directoryobject.md) collection|**TODO: Add Description** Inherited from [microsoft.graph.servicePrincipal](../resources/serviceprincipal.md)|
|transitiveRoleAssignments|[unifiedRoleAssignment](../resources/unifiedroleassignment.md)|**TODO: Add Description** Inherited from [microsoft.graph.servicePrincipal](../resources/serviceprincipal.md)|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.agentIdentity",
  "baseType": "microsoft.graph.servicePrincipal",
  "openType": true
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.agentIdentity",
  "id": "String (identifier)",
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

