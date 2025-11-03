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
|addIns|[addIn](../resources/addin.md) collection|Defines custom behavior that a consuming service can use to call an app in specific contexts. For example, applications that can render file streams may set the addIns property for its "FileHandler" functionality. This lets services like Microsoft 365 call the application in the context of a document the user is working on. Inherited from [servicePrincipal](../resources/serviceprincipal.md).|
|agentIdentityBlueprintId|String|The unique identifier of the agent identity blueprint that defines the configuration for this agent identity.|
|alternativeNames|String collection|Used to retrieve agent identities by subscription, identify resource group and full resource IDs for managed identities. **Property blocked on Agent Identity**. Inherited from [servicePrincipal](../resources/serviceprincipal.md).|
|appDescription|String|The description exposed by the associated Agent Identity Blueprint. Inherited from [servicePrincipal](../resources/serviceprincipal.md).|
|appDisplayName|String|The display name exposed by the associated Agent Identity Blueprint. Maximum length is 256 characters. Inherited from [servicePrincipal](../resources/serviceprincipal.md).|
|appId|String|The unique identifier. Matches the ojbectId. Alternate key. Inherited from [servicePrincipal](../resources/serviceprincipal.md).|
|applicationTemplateId|String|Unique identifier of the applicationTemplate. Read-only. `null` if the app wasn't created from an Agent Identity Blueprint template. **Property blocked on Agent Identity**. Inherited from [servicePrincipal](../resources/serviceprincipal.md).|
|appOwnerOrganizationId|Guid|Contains the tenant ID where the Agent Identity Blueprint is registered. **Property blocked on Agent Identity**. Inherited from [servicePrincipal](../resources/serviceprincipal.md).|
|appRoleAssignmentRequired|Boolean|Specifies whether users or other agent identities need to be granted an app role assignment for this agent identity before users can sign in or apps can get tokens. The default value is `false`. Not nullable. Inherited from [servicePrincipal](../resources/serviceprincipal.md).|
|appRoles|[appRole](../resources/approle.md) collection|The roles exposed by the Agent Identity Blueprint, which this agent identity represents. For more information, see the **appRoles** property definition on the Agent Identity Blueprint entity. Not nullable. Inherited from [servicePrincipal](../resources/serviceprincipal.md).|
|createdByAppId|String|The **appId** of the Application used to create the Agent Identity. Read-only. Inherited from [servicePrincipal](../resources/serviceprincipal.md).|
|customSecurityAttributes|[customSecurityAttributeValue](../resources/customsecurityattributevalue.md)|An open complex type that holds the value of a custom security attribute that is assigned to a directory object. Nullable. Returned only on `$select`. Inherited from [servicePrincipal](../resources/serviceprincipal.md).|
|deletedDateTime|DateTimeOffset|The date and time the agent identity was deleted. Read-only. Inherited from [directoryObject](../resources/directoryobject.md).|
|description|String|Free text field to provide an internal end-user facing description of the agent identity. End-user portals such MyApps displays the Agent Identity Blueprint description in this field. The maximum allowed size is 1,024 characters. Inherited from [servicePrincipal](../resources/serviceprincipal.md).|
|disabledByMicrosoftStatus|String|Specifies whether Microsoft has disabled the registered Agent Identity Blueprint. Possible values are: `null` (default value), `NotDisabled`, and `DisabledDueToViolationOfServicesAgreement` (reasons may include suspicious, abusive, or malicious activity, or a violation of the Microsoft Services Agreement). Inherited from [servicePrincipal](../resources/serviceprincipal.md).|
|displayName|String|The display name for the agent identity. Inherited from [servicePrincipal](../resources/serviceprincipal.md).|
|errorUrl|String|Deprecated. Don't use. Inherited from [servicePrincipal](../resources/serviceprincipal.md).|
|homepage|String|Home page or landing page of the Agent Identity Blueprint. Inherited from [servicePrincipal](../resources/serviceprincipal.md).|
|id|String|The unique identifier for the agent identity. Inherited from [directoryObject](../resources/directoryobject.md). Key. Not nullable. Read-only. Inherited from [entity](../resources/entity.md).|
|info|[informationalUrl](../resources/informationalurl.md)|Basic profile information of the acquired Agent Identity Blueprint such as app's marketing, support, terms of service and privacy statement URLs. The terms of service and privacy statement are surfaced to users through the user consent experience. Inherited from [servicePrincipal](../resources/serviceprincipal.md).|
|keyCredentials|[keyCredential](../resources/keycredential.md) collection|The collection of key credentials associated with the agent identity. Not nullable. Inherited from [servicePrincipal](../resources/serviceprincipal.md).|
|loginUrl|String|Specifies the URL where the service provider redirects the user to Microsoft Entra ID to authenticate. Microsoft Entra ID uses the URL to launch the Agent Identity Blueprint from Microsoft 365 or the Microsoft Entra My Apps. When blank, Microsoft Entra ID performs IdP-initiated sign-on for Agent Identity Blueprints configured with SAML-based single sign-on. Inherited from [servicePrincipal](../resources/serviceprincipal.md).|
|logoutUrl|String|Specifies the URL that the Microsoft's authorization service uses to sign out a user using OpenId Connect front-channel, back-channel, or SAML sign out protocols. Inherited from [servicePrincipal](../resources/serviceprincipal.md).|
|notes|String|Free text field to capture information about the agent identity, typically used for operational purposes. Maximum allowed size is 1,024 characters. Inherited from [servicePrincipal](../resources/serviceprincipal.md).|
|notificationEmailAddresses|String collection|Specifies the list of email addresses where Microsoft Entra ID sends a notification when the active certificate is near the expiration date. This is only for the certificates used to sign the SAML token issued for Microsoft Entra Gallery Agent Identity Blueprints. Inherited from [servicePrincipal](../resources/serviceprincipal.md).|
|passwordCredentials|[passwordCredential](../resources/passwordcredential.md) collection|The collection of password credentials associated with the agent identity. Not nullable. Inherited from [servicePrincipal](../resources/serviceprincipal.md).|
|passwordSingleSignOnSettings|[passwordSingleSignOnSettings](../resources/passwordsinglesignonsettings.md)|The collection for settings related to password single sign-on. Use `$select=passwordSingleSignOnSettings` to read the property. Read-only for applicationTemplates except for custom applicationTemplates. Inherited from [servicePrincipal](../resources/serviceprincipal.md).|
|preferredSingleSignOnMode|String|Specifies the single sign-on mode configured for this Agent Identity Blueprint. Microsoft Entra ID uses the preferred single sign-on mode to launch the Agent Identity Blueprint from Microsoft 365 or the Microsoft Entra My Apps. The supported values are `password`, `saml`, `notSupported`, and `oidc`. Inherited from [servicePrincipal](../resources/serviceprincipal.md).|
|preferredTokenSigningKeyEndDateTime|DateTimeOffset|Specifies the expiration date of the keyCredential used for token signing, marked by **preferredTokenSigningKeyThumbprint**. Updating this attribute isn't currently supported. Inherited from [servicePrincipal](../resources/serviceprincipal.md).|
|preferredTokenSigningKeyThumbprint|String|This property can be used on SAML Agent Identity Blueprints (apps that have **preferredSingleSignOnMode** set to `saml`) to control which certificate is used to sign the SAML responses. For Agent Identity Blueprints that aren't SAML, don't write or otherwise rely on this property. **Property blocked on Agent Identity**. Inherited from [servicePrincipal](../resources/serviceprincipal.md).|
|publishedPermissionScopes|[permissionScope](../resources/permissionscope.md) collection|The delegated permissions exposed by the Agent Identity Blueprint. For more information, see the **oauth2PermissionScopes** property on the Agent Identity Blueprint entity's **api** property. Not nullable. Inherited from [servicePrincipal](../resources/serviceprincipal.md).|
|publisherName|String|The name of the Microsoft Entra tenant that published the Agent Identity Blueprint. Inherited from [servicePrincipal](../resources/serviceprincipal.md).|
|replyUrls|String collection|The URLs that user tokens are sent to for sign in with the associated Agent Identity Blueprint, or the redirect URIs that OAuth 2.0 authorization codes and access tokens are sent to for the associated Agent Identity Blueprint. Not nullable. **Property blocked on Agent Identity.**. Inherited from [servicePrincipal](../resources/serviceprincipal.md).|
|samlMetadataUrl|String|The url where the service exposes SAML metadata for federation. Inherited from [servicePrincipal](../resources/serviceprincipal.md).|
|samlSingleSignOnSettings|[samlSingleSignOnSettings](../resources/samlsinglesignonsettings.md)|The collection for settings related to saml single sign-on. Inherited from [servicePrincipal](../resources/serviceprincipal.md).|
|servicePrincipalNames|String collection|Contains the list of **identifiersUris**, copied over from the associated Agent Identity Blueprint. More values can be added to hybrid Agent Identity Blueprints. These values can be used to identify the permissions exposed by this app within Microsoft Entra ID. For example, client apps can specify a resource URI that is based on the values of this property to acquire an access token, which is the URI returned in the "aud" claim. The any operator is required for filter expressions on multi-valued properties. Not nullable. Inherited from [servicePrincipal](../resources/serviceprincipal.md).|
|servicePrincipalType|String|Set to __ServiceIdentity__ for all Agent Identities. Inherited from [servicePrincipal](../resources/serviceprincipal.md).|
|signInAudience|String|Specifies the Microsoft accounts that are supported for the current Agent Identity Blueprint. Read-only. Supported values are: `AzureADMyOrg`: Users with a Microsoft work or school account in my organization's Microsoft Entra tenant (single-tenant). `AzureADMultipleOrgs`: Users with a Microsoft work or school account in any organization's Microsoft Entra tenant (multitenant). `AzureADandPersonalMicrosoftAccount`: Users with a personal Microsoft account, or a work or school account in any organization's Microsoft Entra tenant. `PersonalMicrosoftAccount`: Users with a personal Microsoft account only. Inherited from [servicePrincipal](../resources/serviceprincipal.md).|
|tags|String collection|Custom strings that can be used to categorize and identify the agent identity. Not nullable. The value is the union of strings set here and on the associated Agent Identity Blueprint entity's **tags** property. Inherited from [servicePrincipal](../resources/serviceprincipal.md).|
|tokenEncryptionKeyId|Guid|Specifies the keyId of a public key from the keyCredentials collection. When configured, Microsoft Entra ID issues tokens for this Agent Identity Blueprint encrypted using the key specified by this property. The Agent Identity Blueprint code that receives the encrypted token must use the matching private key to decrypt the token before it can be used for the signed-in user. Inherited from [servicePrincipal](../resources/serviceprincipal.md).|
|verifiedPublisher|[verifiedPublisher](../resources/verifiedpublisher.md)|Specifies the verified publisher of the Agent Identity Blueprint that's linked to this agent identity. Inherited from [servicePrincipal](../resources/serviceprincipal.md).|

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

