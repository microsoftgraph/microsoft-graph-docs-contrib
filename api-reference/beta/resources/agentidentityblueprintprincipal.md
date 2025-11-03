---
title: "agentIdentityBlueprintPrincipal resource type"
description: "Represents an Agent Identity Blueprint principal in a directory. An Agent Identity Blueprint principal is a specialized service principal that serves as the parent blueprint for creating agent identity instances within the Microsoft Entra ID ecosystem."
author: "zallison22"
ms.date: 10/27/2025
ms.localizationpriority: medium
ms.subservice: "entra-applications"
doc_type: resourcePageType
---

# agentIdentityBlueprintPrincipal resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an Agent Identity Blueprint principal in a directory. An Agent Identity Blueprint principal is a specialized service principal that serves as the parent blueprint for creating agent identity instances within the Microsoft Entra ID ecosystem. 

This resource enables agentic applications to operate through a 1:N relationship where a single Agent Identity Blueprint can spawn multiple child [agentIdentity](../resources/agentidentity.md) instances, each with properly scoped permissions for autonomous use cases. Agent Identity Blueprint principals facilitate enforcement of least privilege principles, ephemeral consent, and modular permission schemes for agentic workflows.


Inherits from [servicePrincipal](../resources/serviceprincipal.md).

This resource is an open type.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/riskyagentidentityblueprintprincipal-list-agentidentityblueprintprincipal.md)|[agentIdentityBlueprintPrincipal](../resources/agentidentityblueprintprincipal.md) collection|Get a list of the agentIdentityBlueprintPrincipal objects and their properties.|
|[Create](../api/riskyagentidentityblueprintprincipal-post-agentidentityblueprintprincipal.md)|[agentIdentityBlueprintPrincipal](../resources/agentidentityblueprintprincipal.md)|Create a new agentIdentityBlueprintPrincipal object.|
|[Get](../api/agentidentityblueprintprincipal-get.md)|[agentIdentityBlueprintPrincipal](../resources/agentidentityblueprintprincipal.md)|Read the properties and relationships of [agentIdentityBlueprintPrincipal](../resources/agentidentityblueprintprincipal.md) object.|
|[Update](../api/agentidentityblueprintprincipal-update.md)|[agentIdentityBlueprintPrincipal](../resources/agentidentityblueprintprincipal.md)|Update the properties of an agentIdentityBlueprintPrincipal object.|
|[Delete](../api/riskyagentidentityblueprintprincipal-delete-agentidentityblueprintprincipal.md)|None|Delete an agentIdentityBlueprintPrincipal object.|
|[createPasswordSingleSignOnCredentials](../api/agentidentityblueprintprincipal-createpasswordsinglesignoncredentials.md)|[passwordSingleSignOnCredentialSet](../resources/passwordsinglesignoncredentialset.md)|Create a credential set for the user or group specified in the body.|
|[getPasswordSingleSignOnCredentials](../api/agentidentityblueprintprincipal-getpasswordsinglesignoncredentials.md)|[passwordSingleSignOnCredentialSet](../resources/passwordsinglesignoncredentialset.md)|Get a credential set for the user or group specified in the body.|
|[deletePasswordSingleSignOnCredentials](../api/agentidentityblueprintprincipal-deletepasswordsinglesignoncredentials.md)|None|Delete a credential set for the user or group specified in the body.|
|[updatePasswordSingleSignOnCredentials](../api/agentidentityblueprintprincipal-updatepasswordsinglesignoncredentials.md)|None|Update a credential set for the user or group specified in the body.|
|[addTokenSigningCertificate](../api/agentidentityblueprintprincipal-addtokensigningcertificate.md)|[selfSignedCertificate](../resources/selfsignedcertificate.md)|Add a self-signed certificate to the agent identity blueprint principal for token signing.|
|[List appRoleAssignedTo](../api/agentidentityblueprintprincipal-list-approleassignedto.md)|[appRoleAssignment](../resources/approleassignment.md) collection|Get the users, groups, and agent identities assigned app roles for this agent identity blueprint principal.|
|[Add appRoleAssignedTo](../api/agentidentityblueprintprincipal-post-approleassignedto.md)|[appRoleAssignment](../resources/approleassignment.md)|Assign an app role for this agent identity blueprint principal to a user, group, or service principal.|
|[Remove appRoleAssignedTo](../api/agentidentityblueprintprincipal-delete-approleassignedto.md)|None|Remove an app role assignment for this agent identity blueprint principal from a user, group, or service principal.|
|[List appRoleAssignments](../api/agentidentityblueprintprincipal-list-approleassignments.md)|[appRoleAssignment](../resources/approleassignment.md) collection|Get the app roles that this agent identity blueprint principal is assigned.|
|[Add appRoleAssignment](../api/agentidentityblueprintprincipal-post-approleassignments.md)|[appRoleAssignment](../resources/approleassignment.md)|Assign an app role to this agent identity blueprint principal.|
|[Remove appRoleAssignment](../api/agentidentityblueprintprincipal-delete-approleassignments.md)|None|Remove an app role assignment from this agent identity blueprint principal.|
|[List delegatedPermissionClassifications](../api/agentidentityblueprintprincipal-list-delegatedpermissionclassifications.md)|[delegatedPermissionClassification](../resources/delegatedpermissionclassification.md) collection|Get the permission classifications for delegated permissions exposed by this agent identity blueprint principal.|
|[Add delegatedPermissionClassification](../api/agentidentityblueprintprincipal-post-delegatedpermissionclassifications.md)|[delegatedPermissionClassification](../resources/delegatedpermissionclassification.md)|Add a permission classification for a delegated permission exposed by this agent identity blueprint principal.|
|[Remove delegatedPermissionClassification](../api/agentidentityblueprintprincipal-delete-delegatedpermissionclassifications.md)|None|Remove a permission classification for a delegated permission exposed by this agent identity blueprint principal.|
|[List memberOf](../api/agentidentityblueprintprincipal-list-memberof.md)|[directoryObject](../resources/directoryobject.md) collection|Get the groups that this agent identity blueprint principal is a direct member of.|
|[List oauth2PermissionGrants](../api/agentidentityblueprintprincipal-list-oauth2permissiongrants.md)|[oAuth2PermissionGrant](../resources/oauth2permissiongrant.md) collection|Get the delegated permission grants authorizing this agent identity blueprint principal to access an API on behalf of a signed-in user.|
|[List ownedObjects](../api/agentidentityblueprintprincipal-list-ownedobjects.md)|[directoryObject](../resources/directoryobject.md) collection|Get directory objects owned by this agent identity blueprint principal.|
|[List owners](../api/agentidentityblueprintprincipal-list-owners.md)|[directoryObject](../resources/directoryobject.md) collection|Get the owners of this agent identity blueprint principal.|
|[Add owners](../api/agentidentityblueprintprincipal-post-owners.md)|[directoryObject](../resources/directoryobject.md)|Assign an owner to this agent identity blueprint principal.|
|[Remove owners](../api/agentidentityblueprintprincipal-delete-owners.md)|None|Remove an owner from this agent identity blueprint principal.|
|[List createdObjects](../api/agentidentityblueprintprincipal-list-createdobjects.md)|[directoryObject](../resources/directoryobject.md) collection|Get directory objects created by this agent identity blueprint principal.|
|[List sponsors](../api/agentidentityblueprintprincipal-list-sponsors.md)|[directoryObject](../resources/directoryobject.md) collection|Get the sponsors for this agent identity blueprint principal.|
|[Add sponsors](../api/agentidentityblueprintprincipal-post-sponsors.md)|[directoryObject](../resources/directoryobject.md)|Add sponsors by posting to the sponsors collection.|
|[Remove sponsors](../api/agentidentityblueprintprincipal-delete-sponsors.md)|None|Remove a [directoryObject](../resources/directoryobject.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|accountEnabled|Boolean|`true` if the agent identity blueprint principal account is enabled; otherwise, `false`. If set to `false`, then no users are able to sign in to this app, even if they're assigned to it. Inherited from [servicePrincipal](../resources/serviceprincipal.md).|
|addIns|[addIn](../resources/addin.md) collection|Defines custom behavior that a consuming service can use to call an app in specific contexts. For example, applications that can render file streams may set the addIns property for its "FileHandler" functionality. This lets services like Microsoft 365 call the application in the context of a document the user is working on. Inherited from [servicePrincipal](../resources/serviceprincipal.md).|
|alternativeNames|String collection|Used to retrieve agent identity blueprint principals by subscription, identify resource group and full resource IDs for managed identities. **Property blocked on Agent Identity Blueprint Principal.** Inherited from [servicePrincipal](../resources/serviceprincipal.md).|
|appDescription|String|The description exposed by the associated agent identity blueprint. Inherited from [servicePrincipal](../resources/serviceprincipal.md).|
|appDisplayName|String|The display name exposed by the associated agent identity blueprint. Maximum length is 256 characters. Inherited from [servicePrincipal](../resources/serviceprincipal.md).|
|appId|String|The unique identifier for the associated agent identity blueprint (its **appId** property). Alternate key. Inherited from [servicePrincipal](../resources/serviceprincipal.md).|
|applicationTemplateId|String|Unique identifier of the applicationTemplate. Read-only. `null` if the app wasn't created from an application template. **Property blocked on Agent Identity Blueprint Principal.** Inherited from [servicePrincipal](../resources/serviceprincipal.md).|
|appOwnerOrganizationId|Guid|Contains the tenant ID where the agent identity blueprint is registered. This is applicable only to agent identity blueprint principals backed by applications. Inherited from [servicePrincipal](../resources/serviceprincipal.md).|
|appRoleAssignmentRequired|Boolean|Specifies whether users or other service principals need to be granted an app role assignment for this agent identity blueprint principal before users can sign in or apps can get tokens. The default value is `false`. Not nullable. Inherited from [servicePrincipal](../resources/serviceprincipal.md).|
|appRoles|[appRole](../resources/approle.md) collection|The roles exposed by the agent identity blueprintt, which this agent identity blueprint principal represents. For more information, see the **appRoles** property definition on the application entity. Not nullable. Inherited from [servicePrincipal](../resources/serviceprincipal.md).|
|createdByAppId|String|The unique identifier of the application that created this agent identity blueprint principal. Read-only. Inherited from [servicePrincipal](../resources/serviceprincipal.md).|
|customSecurityAttributes|[customSecurityAttributeValue](../resources/customsecurityattributevalue.md)|An open complex type that holds the value of a custom security attribute that is assigned to a directory object. Nullable. Returned only on `$select`. Inherited from [servicePrincipal](../resources/serviceprincipal.md).|
|deletedDateTime|DateTimeOffset|The date and time the agent identity blueprint principal was deleted. Read-only. Inherited from [directoryObject](../resources/directoryobject.md).|
|description|String|Free text field to provide an internal end-user facing description of the agent identity blueprint principal. End-user portals such MyApps displays the Agent Identity Blueprint description in this field. The maximum allowed size is 1,024 characters. Inherited from [servicePrincipal](../resources/serviceprincipal.md).|
|disabledByMicrosoftStatus|String|Specifies whether Microsoft has disabled the registered agent identity blueprint. Possible values are: `null` (default value), `NotDisabled`, and `DisabledDueToViolationOfServicesAgreement` (reasons may include suspicious, abusive, or malicious activity, or a violation of the Microsoft Services Agreement). Inherited from [servicePrincipal](../resources/serviceprincipal.md).|
|displayName|String|The display name for the agent identity blueprint principal. Inherited from [servicePrincipal](../resources/serviceprincipal.md).|
|errorUrl|String|Deprecated. Don't use. Inherited from [servicePrincipal](../resources/serviceprincipal.md).|
|homepage|String|Home page or landing page of the agent identity blueprint. Inherited from [servicePrincipal](../resources/serviceprincipal.md).|
|id|String|The unique identifier for the agent identity blueprint principal. Inherited from [entity](../resources/entity.md). Key. Not nullable. Read-only.|
|info|[informationalUrl](../resources/informationalurl.md)|Basic profile information of the acquired application such as app's marketing, support, terms of service and privacy statement URLs. The terms of service and privacy statement are surfaced to users through the user consent experience. Inherited from [servicePrincipal](../resources/serviceprincipal.md).|
|keyCredentials|[keyCredential](../resources/keycredential.md) collection|The collection of key credentials associated with the agent identity blueprint principal. Not nullable. Inherited from [servicePrincipal](../resources/serviceprincipal.md).|
|loginUrl|String|Specifies the URL where the service provider redirects the user to Microsoft Entra ID to authenticate. Microsoft Entra ID uses the URL to launch the application from Microsoft 365 or the Microsoft Entra My Apps. When blank, Microsoft Entra ID performs IdP-initiated sign-on for applications configured with SAML-based single sign-on. **Property blocked on Agent Identity Blueprint Principal.** Inherited from [servicePrincipal](../resources/serviceprincipal.md).|
|logoutUrl|String|Specifies the URL that the Microsoft's authorization service uses to sign out a user using OpenId Connect front-channel, back-channel, or SAML sign out protocols. Inherited from [servicePrincipal](../resources/serviceprincipal.md).|
|notes|String|Free text field to capture information about the agent identity blueprint principal, typically used for operational purposes. Maximum allowed size is 1,024 characters. Inherited from [servicePrincipal](../resources/serviceprincipal.md).|
|notificationEmailAddresses|String collection|Specifies the list of email addresses where Microsoft Entra ID sends a notification when the active certificate is near the expiration date. This is only for the certificates used to sign the SAML token issued for Microsoft Entra Gallery applications. Inherited from [servicePrincipal](../resources/serviceprincipal.md).|
|passwordCredentials|[passwordCredential](../resources/passwordcredential.md) collection|The collection of password credentials associated with the agent identity blueprint principal. Not nullable. Inherited from [servicePrincipal](../resources/serviceprincipal.md).|
|passwordSingleSignOnSettings|[passwordSingleSignOnSettings](../resources/passwordsinglesignonsettings.md)|The collection for settings related to password single sign-on. Use `$select=passwordSingleSignOnSettings` to read the property. Read-only for applicationTemplates except for custom applicationTemplates. Inherited from [servicePrincipal](../resources/serviceprincipal.md).|
|preferredSingleSignOnMode|String|Specifies the single sign-on mode configured for this agent identity blueprint. Microsoft Entra ID uses the preferred single sign-on mode to launch the agent identity blueprint from Microsoft 365 or the Microsoft Entra My Apps. The supported values are `password`, `saml`, `notSupported`, and `oidc`. Inherited from [servicePrincipal](../resources/serviceprincipal.md).|
|preferredTokenSigningKeyEndDateTime|DateTimeOffset|Specifies the expiration date of the keyCredential used for token signing, marked by **preferredTokenSigningKeyThumbprint**. Updating this attribute isn't currently supported. Inherited from [servicePrincipal](../resources/serviceprincipal.md).|
|preferredTokenSigningKeyThumbprint|String|This property can be used on SAML applications (apps that have **preferredSingleSignOnMode** set to `saml`) to control which certificate is used to sign the SAML responses. For applications that aren't SAML, don't write or otherwise rely on this property. **Property blocked on Agent Identity Blueprint Principal.** Inherited from [servicePrincipal](../resources/serviceprincipal.md).|
|publishedPermissionScopes|[permissionScope](../resources/permissionscope.md) collection|The delegated permissions exposed by the application. For more information, see the **oauth2PermissionScopes** property on the agent identity blueprint entity's **api** property. Not nullable. Inherited from [servicePrincipal](../resources/serviceprincipal.md).|
|publisherName|String|The name of the Microsoft Entra tenant that published the application. Inherited from [servicePrincipal](../resources/serviceprincipal.md).|
|replyUrls|String collection|The URLs that user tokens are sent to for sign in with the associated application, or the redirect URIs that OAuth 2.0 authorization codes and access tokens are sent to for the associated application. Not nullable. Inherited from [servicePrincipal](../resources/serviceprincipal.md).|
|samlMetadataUrl|String|The url where the service exposes SAML metadata for federation. Inherited from [servicePrincipal](../resources/serviceprincipal.md).|
|samlSingleSignOnSettings|[samlSingleSignOnSettings](../resources/samlsinglesignonsettings.md)|The collection for settings related to saml single sign-on. Inherited from [servicePrincipal](../resources/serviceprincipal.md).|
|servicePrincipalNames|String collection|Contains the list of **identifiersUris**, copied over from the associated agent identity blueprint. More values can be added to hybrid agent identity blueprint. These values can be used to identify the permissions exposed by this app within Microsoft Entra ID. Not nullable. **Property blocked on Agent Identity Blueprint Principal.** Inherited from [servicePrincipal](../resources/serviceprincipal.md).|
|servicePrincipalType|String|Identifies if the agent identity blueprint principal represents an application. This is set by Microsoft Entra ID internally. For an agent identity blueprint principal that represents an application this is set as __Application__. Inherited from [servicePrincipal](../resources/serviceprincipal.md).|
|signInAudience|String|Specifies the Microsoft accounts that are supported for the current agent identity blueprint. Read-only. Supported values are: `AzureADMyOrg`, `AzureADMultipleOrgs`, `AzureADandPersonalMicrosoftAccount`, and `PersonalMicrosoftAccount`. Inherited from [servicePrincipal](../resources/serviceprincipal.md).|
|tags|String collection|Custom strings that can be used to categorize and identify the agent identity blueprint principal. Not nullable. The value is the union of strings set here and on the associated agent identity blueprint entity's **tags** property. Inherited from [servicePrincipal](../resources/serviceprincipal.md).|
|tokenEncryptionKeyId|String|Specifies the keyId of a public key from the keyCredentials collection. When configured, Microsoft Entra ID issues tokens for this application encrypted using the key specified by this property. The application code that receives the encrypted token must use the matching private key to decrypt the token before it can be used for the signed-in user. Inherited from [servicePrincipal](../resources/serviceprincipal.md).|
|verifiedPublisher|[verifiedPublisher](../resources/verifiedpublisher.md)|Specifies the verified publisher of the application that's linked to this agent identity blueprint principal. Inherited from [servicePrincipal](../resources/serviceprincipal.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|appManagementPolicies|[appManagementPolicy](../resources/appmanagementpolicy.md) collection|The appManagementPolicy applied to this agent identity blueprint principal. Inherited from [microsoft.graph.servicePrincipal](../resources/serviceprincipal.md)|
|appRoleAssignedTo|[appRoleAssignment](../resources/approleassignment.md) collection|App role assignments for this agent identity blueprint principal, granted to users, groups, and other service principals. Supports `$expand`. Inherited from [microsoft.graph.servicePrincipal](../resources/serviceprincipal.md)|
|appRoleAssignments|[appRoleAssignment](../resources/approleassignment.md) collection|App role assignment for another app or service, granted to this agent identity blueprint principal. Supports `$expand`. Inherited from [microsoft.graph.servicePrincipal](../resources/serviceprincipal.md)|
|claimsMappingPolicies|[claimsMappingPolicy](../resources/claimsmappingpolicy.md) collection|The claimsMappingPolicies assigned to this agent identity blueprint principal. Supports `$expand`. Inherited from [microsoft.graph.servicePrincipal](../resources/serviceprincipal.md)|
|claimsPolicy|[customClaimsPolicy](../resources/customclaimspolicy.md)|A claims policy that allows application admins to customize the claims that will be emitted in tokens affected by this policy. Inherited from [microsoft.graph.servicePrincipal](../resources/serviceprincipal.md)|
|createdObjects|[directoryObject](../resources/directoryobject.md) collection|Directory objects created by this agent identity blueprint principal. Read-only. Nullable. Inherited from [microsoft.graph.servicePrincipal](../resources/serviceprincipal.md)|
|delegatedPermissionClassifications|[delegatedPermissionClassification](../resources/delegatedpermissionclassification.md) collection|The permission classifications for delegated permissions exposed by the app that this agent identity blueprint principal represents. Supports `$expand`. Inherited from [microsoft.graph.servicePrincipal](../resources/serviceprincipal.md)|
|endpoints|[endpoint](../resources/endpoint.md) collection|Endpoints available for discovery. Services like Sharepoint populate this property with a tenant specific SharePoint endpoints that other applications can discover and use in their experiences. **Property blocked on Agent Identity Blueprint Principal.** Inherited from [microsoft.graph.servicePrincipal](../resources/serviceprincipal.md)|
|homeRealmDiscoveryPolicies|[homeRealmDiscoveryPolicy](../resources/homerealmdiscoverypolicy.md) collection|The homeRealmDiscoveryPolicies assigned to this agent identity blueprint principal. Supports `$expand`. Inherited from [microsoft.graph.servicePrincipal](../resources/serviceprincipal.md)|
|identities|[agentIdentity](../resources/agentidentity.md) collection|The collection of agent identity instances created from this agent identity blueprint principal. Each agent identity represents a specific instance with scoped permissions for autonomous use cases.|
|memberOf|[directoryObject](../resources/directoryobject.md) collection|Roles that this agent identity blueprint principal is a member of. HTTP Methods: GET Read-only. Nullable. Supports `$expand`. Inherited from [microsoft.graph.servicePrincipal](../resources/serviceprincipal.md)|
|oauth2PermissionGrants|[oAuth2PermissionGrant](../resources/oauth2permissiongrant.md) collection|Delegated permission grants authorizing this agent identity blueprint principal to access an API on behalf of a signed-in user. Read-only. Nullable. Inherited from [microsoft.graph.servicePrincipal](../resources/serviceprincipal.md)|
|ownedObjects|[directoryObject](../resources/directoryobject.md) collection|Directory objects that are owned by this agent identity blueprint principal. Read-only. Nullable. Supports `$expand` and `$filter` (`/$count eq 0`, `/$count ne 0`, `/$count eq 1`, `/$count ne 1`). Inherited from [microsoft.graph.servicePrincipal](../resources/serviceprincipal.md)|
|owners|[directoryObject](../resources/directoryobject.md) collection|Directory objects that are owners of this agent identity blueprint principal. The owners are a set of nonadmin users or servicePrincipals who are allowed to modify this object. Supports `$expand` and `$filter` (`/$count eq 0`, `/$count ne 0`, `/$count eq 1`, `/$count ne 1`). Inherited from [microsoft.graph.servicePrincipal](../resources/serviceprincipal.md)|
|remoteDesktopSecurityConfiguration|[remoteDesktopSecurityConfiguration](../resources/remotedesktopsecurityconfiguration.md)|The remoteDesktopSecurityConfiguration object applied to this agent identity blueprint principal. Supports `$filter` (`eq`) for **isRemoteDesktopProtocolEnabled** property. **Property blocked on Agent Identity Blueprint Principal.** Inherited from [microsoft.graph.servicePrincipal](../resources/serviceprincipal.md)|
|sponsors|[directoryObject](../resources/directoryobject.md) collection|The sponsors for this agent identity blueprint principal. Sponsors are users or service principals who can authorize and manage the lifecycle of agent identity instances.|
|synchronization|[synchronization](../resources/synchronization.md)|Represents the capability for Microsoft Entra identity synchronization through the Microsoft Graph API. Inherited from [microsoft.graph.servicePrincipal](../resources/serviceprincipal.md)|
|tokenIssuancePolicies|[tokenIssuancePolicy](../resources/tokenissuancepolicy.md) collection|The tokenIssuancePolicies assigned to this agent identity blueprint principal. Supports `$expand`. Inherited from [microsoft.graph.servicePrincipal](../resources/serviceprincipal.md)|
|tokenLifetimePolicies|[tokenLifetimePolicy](../resources/tokenlifetimepolicy.md) collection|The tokenLifetimePolicies assigned to this agent identity blueprint principal. Supports `$expand`. Inherited from [microsoft.graph.servicePrincipal](../resources/serviceprincipal.md)|

## JSON representation
The following JSON representation shows the resource type. Only a subset of all properties are returned by default. All other properies can only be retrieved using $select.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.agentIdentityBlueprintPrincipal",
  "baseType": "microsoft.graph.servicePrincipal",
  "openType": true
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.agentIdentityBlueprintPrincipal",
  "id": "String (identifier)",
  "accountEnabled": "Boolean",
  "createdByAppId": "String",
  "appDescription": "String",
  "appDisplayName": "String",
  "appId": "String",
  "appOwnerOrganizationId": "Guid",
  "appRoleAssignmentRequired": "Boolean",
  "disabledByMicrosoftStatus": "String",
  "displayName": "String",
  "publisherName": "String",
  "servicePrincipalNames": [
    "String"
  ],
  "servicePrincipalType": "String",
  "signInAudience": "String",
  "tags": [
    "String"
  ],
  "appRoles": [
    {
      "@odata.type": "microsoft.graph.appRole"
    }
  ],
  "info": {
    "@odata.type": "microsoft.graph.informationalUrl"
  },
  "publishedPermissionScopes": [
    {
      "@odata.type": "microsoft.graph.permissionScope"
    }
  ],
  "verifiedPublisher": {
    "@odata.type": "microsoft.graph.verifiedPublisher"
  }
}
```

