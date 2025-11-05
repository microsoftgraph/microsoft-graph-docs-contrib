---
title: "agentIdentity resource type"
description: "Represents an agent identity in a directory. An agent identity is a specialized type of service principal that represents automated agents or services that can perform actions on behalf of Agent Identity Blueprint or users within the Microsoft Entra ID ecosystem."
author: "zallison22"
ms.date: 10/27/2025
ms.localizationpriority: medium
ms.subservice: "entra-applications"
doc_type: resourcePageType
---

# agentIdentity resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an agent identity in a directory. An agent identity is a specialized type of service principal that represents automated agents or services that can perform actions on behalf of Agent Identity Blueprints or users within the Microsoft Entra ID ecosystem.

Inherits from [servicePrincipal](../resources/serviceprincipal.md).

This resource is an open type.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get](../api/agentidentity-get.md)|[agentIdentity](../resources/agentidentity.md)|Read the properties and relationships of [agentIdentity](../resources/agentidentity.md) object.|
|[Update](../api/agentidentity-update.md)|[agentIdentity](../resources/agentidentity.md)|Update the properties of an agentIdentity object.|
|[createPasswordSingleSignOnCredentials](../api/agentidentity-createpasswordsinglesignoncredentials.md)|[passwordSingleSignOnCredentialSet](../resources/passwordsinglesignoncredentialset.md)|Create a credential set for the user or group specified in the body.|
|[getPasswordSingleSignOnCredentials](../api/agentidentity-getpasswordsinglesignoncredentials.md)|[passwordSingleSignOnCredentialSet](../resources/passwordsinglesignoncredentialset.md)|Get a credential set for the user or group specified in the body.|
|[deletePasswordSingleSignOnCredentials](../api/agentidentity-deletepasswordsinglesignoncredentials.md)|None|Delete a credential set for the user or group specified in the body.|
|[updatePasswordSingleSignOnCredentials](../api/agentidentity-updatepasswordsinglesignoncredentials.md)|None|Update a credential set for the user or group specified in the body.|
|[addTokenSigningCertificate](../api/agentidentity-addtokensigningcertificate.md)|[selfSignedCertificate](../resources/selfsignedcertificate.md)|Add a self-signed certificate to the agent identity for token signing.|
|[List appRoleAssignedTo](../api/agentidentity-list-approleassignedto.md)|[appRoleAssignment](../resources/approleassignment.md) collection|Get the users, groups, and agent identities assigned app roles for this agent identity.|
|[Create appRoleAssignment](../api/agentidentity-post-approleassignedto.md)|[appRoleAssignment](../resources/approleassignment.md)|Create a new appRoleAssignment object.|
|[List appRoleAssignments](../api/agentidentity-list-approleassignments.md)|[appRoleAssignment](../resources/approleassignment.md) collection|Get the app roles that this agent identity is assigned.|
|[Create appRoleAssignment](../api/agentidentity-post-approleassignments.md)|[appRoleAssignment](../resources/approleassignment.md)|Create a new appRoleAssignment object.|
|[List delegatedPermissionClassifications](../api/agentidentity-list-delegatedpermissionclassifications.md)|[delegatedPermissionClassification](../resources/delegatedpermissionclassification.md) collection|Get the permission classifications for delegated permissions exposed by this agent identity.|
|[Create delegatedPermissionClassification](../api/agentidentity-post-delegatedpermissionclassifications.md)|[delegatedPermissionClassification](../resources/delegatedpermissionclassification.md)|Create a new delegatedPermissionClassification object.|
|[List memberOf](../api/agentidentity-list-memberof.md)|[directoryObject](../resources/directoryobject.md) collection|Get the groups that this agent identity is a direct member of.|
|[List oauth2PermissionGrants](../api/agentidentity-list-oauth2permissiongrants.md)|[oAuth2PermissionGrant](../resources/oauth2permissiongrant.md) collection|Get the delegated permission grants authorizing this agent identity to access an API on behalf of a signed-in user.|
|[List ownedObjects](../api/agentidentity-list-ownedobjects.md)|[directoryObject](../resources/directoryobject.md) collection|Get directory objects owned by this agent identity.|
|[List owners](../api/agentidentity-list-owners.md)|[directoryObject](../resources/directoryobject.md) collection|Get the owners of this agent identity.|
|[Add owners](../api/agentidentity-post-owners.md)|[directoryObject](../resources/directoryobject.md)|Add owners by posting to the owners collection.|
|[Remove owners](../api/agentidentity-delete-owners.md)|None|Remove a [directoryObject](../resources/directoryobject.md) object.|
|[List sponsors](../api/agentidentity-list-sponsors.md)|[directoryObject](../resources/directoryobject.md) collection|Get the sponsors for this agent identity.|
|[Add sponsors](../api/agentidentity-post-sponsors.md)|[directoryObject](../resources/directoryobject.md)|Add sponsors by posting to the sponsors collection.|
|[Remove sponsors](../api/agentidentity-delete-sponsors.md)|None|Remove a [directoryObject](../resources/directoryobject.md) object.|
|[List transitiveMemberOf](../api/agentidentity-list-transitivememberof.md)|[directoryObject](../resources/directoryobject.md) collection|Get the groups that this agent identity is a member of. This operation is transitive and includes the groups that this agent identity is a nested member of.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|accountEnabled|Boolean|`true` if the agent identity account is enabled; otherwise, `false`. If set to `false`, then no users are able to sign in to this app, even if they're assigned to it. Inherited from [servicePrincipal](../resources/serviceprincipal.md).|
|agentIdentityBlueprintId|String|The unique identifier of the agent identity blueprint that defines the configuration for this agent identity.|
|createdByAppId|String|The **appId** of the Application used to create the Agent Identity. Set internally by Microsoft Enctra ID. Read-only. Inherited from [servicePrincipal](../resources/serviceprincipal.md).|
|createdDateTime|DateTimeOffset|The date and time the agent identity was created. Read-only. Inherited from [servicePrincipal](../resources/serviceprincipal.md).|
|disabledByMicrosoftStatus|String|Specifies whether Microsoft has disabled the registered Agent Identity Blueprint. Possible values are: `null` (default value), `NotDisabled`, and `DisabledDueToViolationOfServicesAgreement` (reasons may include suspicious, abusive, or malicious activity, or a violation of the Microsoft Services Agreement). Inherited from [servicePrincipal](../resources/serviceprincipal.md).|
|displayName|String|The display name for the agent identity. Inherited from [servicePrincipal](../resources/serviceprincipal.md).|
|id|String|The unique identifier for the agent identity. Inherited from [directoryObject](../resources/directoryobject.md). Key. Not nullable. Read-only. Inherited from [entity](../resources/entity.md).|
|servicePrincipalType|String|Set to __ServiceIdentity__ for all Agent Identities. Inherited from [servicePrincipal](../resources/serviceprincipal.md).|
|tags|String collection|Custom strings that can be used to categorize and identify the agent identity. Not nullable. The value is the union of strings set here and on the associated Agent Identity Blueprint entity's **tags** property. Inherited from [servicePrincipal](../resources/serviceprincipal.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|appManagementPolicies|[appManagementPolicy](../resources/appmanagementpolicy.md) collection|The appManagementPolicy applied to this agent identity. Inherited from [microsoft.graph.servicePrincipal](../resources/serviceprincipal.md)|
|appRoleAssignedTo|[appRoleAssignment](../resources/approleassignment.md) collection|App role assignments for this app or service, granted to users, groups, and other agent identities. Supports `$expand`. Inherited from [microsoft.graph.servicePrincipal](../resources/serviceprincipal.md)|
|appRoleAssignments|[appRoleAssignment](../resources/approleassignment.md) collection|App role assignment for another app or service, granted to this agent identity. Supports `$expand`. Inherited from [microsoft.graph.servicePrincipal](../resources/serviceprincipal.md)|
|claimsMappingPolicies|[claimsMappingPolicy](../resources/claimsmappingpolicy.md) collection|The claimsMappingPolicies assigned to this agent identity. Supports `$expand`. Inherited from [microsoft.graph.servicePrincipal](../resources/serviceprincipal.md)|
|claimsPolicy|[customClaimsPolicy](../resources/customclaimspolicy.md)|A claims policy that allows application admins to customize the claims that will be emitted in tokens affected by this policy. Inherited from [microsoft.graph.servicePrincipal](../resources/serviceprincipal.md)|
|createdObjects|[directoryObject](../resources/directoryobject.md) collection|Directory objects created by this agent identity. Read-only. Nullable. Inherited from [microsoft.graph.servicePrincipal](../resources/serviceprincipal.md)|
|delegatedPermissionClassifications|[delegatedPermissionClassification](../resources/delegatedpermissionclassification.md) collection|The permission classifications for delegated permissions exposed by the app that this agent identity represents. Supports `$expand`. **Relationship blocked on Agent Identity**. Inherited from [microsoft.graph.servicePrincipal](../resources/serviceprincipal.md)|
|endpoints|[endpoint](../resources/endpoint.md) collection|Endpoints available for discovery. Services like Sharepoint populate this property with a tenant specific SharePoint endpoints that other applications can discover and use in their experiences. **Relationship blocked on Agent Identity**. Inherited from [microsoft.graph.servicePrincipal](../resources/serviceprincipal.md)|
|homeRealmDiscoveryPolicies|[homeRealmDiscoveryPolicy](../resources/homerealmdiscoverypolicy.md) collection|The homeRealmDiscoveryPolicies assigned to this agent identity. Supports `$expand`. Inherited from [microsoft.graph.servicePrincipal](../resources/serviceprincipal.md)|
|memberOf|[directoryObject](../resources/directoryobject.md) collection|Roles that this agent identity is a member of. HTTP Methods: GET Read-only. Nullable. Supports `$expand`. Inherited from [microsoft.graph.servicePrincipal](../resources/serviceprincipal.md)|
|oauth2PermissionGrants|[oAuth2PermissionGrant](../resources/oauth2permissiongrant.md) collection|Delegated permission grants authorizing this agent identity to access an API on behalf of a signed-in user. Read-only. Nullable. Inherited from [microsoft.graph.servicePrincipal](../resources/serviceprincipal.md)|
|ownedObjects|[directoryObject](../resources/directoryobject.md) collection|Directory objects that are owned by this agent identity. Read-only. Nullable. Supports `$expand` and `$filter` (`/$count eq 0`, `/$count ne 0`, `/$count eq 1`, `/$count ne 1`). Inherited from [microsoft.graph.servicePrincipal](../resources/serviceprincipal.md)|
|owners|[directoryObject](../resources/directoryobject.md) collection|Directory objects that are owners of this agent identity. The owners are a set of nonadmin users or agent identities who are allowed to modify this object. Supports `$expand` and `$filter` (`/$count eq 0`, `/$count ne 0`, `/$count eq 1`, `/$count ne 1`). Inherited from [microsoft.graph.servicePrincipal](../resources/serviceprincipal.md)|
|remoteDesktopSecurityConfiguration|[remoteDesktopSecurityConfiguration](../resources/remotedesktopsecurityconfiguration.md)|The remoteDesktopSecurityConfiguration object applied to this agent identity. Supports `$filter` (`eq`) for **isRemoteDesktopProtocolEnabled** property. **Relationship blocked on Agent Identity**. Inherited from [microsoft.graph.servicePrincipal](../resources/serviceprincipal.md)|
|sponsors|[directoryObject](../resources/directoryobject.md) collection|The sponsors for this agent identity.|
|synchronization|[synchronization](../resources/synchronization.md)|Represents the capability for Microsoft Entra identity synchronization through the Microsoft Graph API. Inherited from [microsoft.graph.servicePrincipal](../resources/serviceprincipal.md)|
|tokenIssuancePolicies|[tokenIssuancePolicy](../resources/tokenissuancepolicy.md) collection|The tokenIssuancePolicies assigned to this agent identity. Supports `$expand`. Inherited from [microsoft.graph.servicePrincipal](../resources/serviceprincipal.md)|
|tokenLifetimePolicies|[tokenLifetimePolicy](../resources/tokenlifetimepolicy.md) collection|The tokenLifetimePolicies assigned to this agent identity. Supports `$expand`. Inherited from [microsoft.graph.servicePrincipal](../resources/serviceprincipal.md)|

## JSON representation
The following JSON representation shows the resource type. Only a subset of all properties are returned by default. All other properies can only be retrieved using $select.
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
  "accountEnabled": "Boolean",
  "createdByAppId": "String",
  "createdDateTime": "String (timestamp)",
  "disabledByMicrosoftStatus": "String",
  "displayName": "String",
  "servicePrincipalType": "String",
  "tags": [
    "String"
  ],
  "agentIdentityBlueprintId": "String"
}
```

