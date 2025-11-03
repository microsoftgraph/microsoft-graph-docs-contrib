---
title: "agentIdentityBlueprint resource type"
description: "Represents an Agent Identity Blueprint application. An Agent Identity Blueprint application is a specialized application type that serves as the template for creating agent identity instances within the Microsoft Entra ID ecosystem."
author: "zallison22"
ms.date: 10/27/2025
ms.localizationpriority: medium
ms.subservice: "entra-applications"
doc_type: resourcePageType
---

# agentIdentityBlueprint resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an Agent Identity Blueprint application. An Agent Identity Blueprint application is a specialized application type that serves as the template for creating agent identity instances within the Microsoft Entra ID ecosystem.

This resource defines the blueprint configuration that enables agentic applications to operate through a 1:N relationship where a single Agent Identity Blueprint application can be instantiated as multiple [agentIdentityBlueprintPrincipal](../resources/agentidentityblueprintprincipal.md) service principals, each capable of spawning child [agentIdentity](../resources/agentidentity.md) instances with properly scoped permissions for autonomous use cases. Agent Identity Blueprint applications facilitate the definition of applications that support least privilege principles, ephemeral consent, and modular permission schemes for agentic workflows.


Inherits from [application](../resources/application.md).

This resource is an open type.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/agentidentityblueprint-list.md)|[agentIdentityBlueprint](../resources/agentidentityblueprint.md) collection|Get a list of the agentIdentityBlueprint objects and their properties.|
|[Get](../api/agentidentityblueprint-get.md)|[agentIdentityBlueprint](../resources/agentidentityblueprint.md)|Read the properties and relationships of [agentIdentityBlueprint](../resources/agentidentityblueprint.md) object.|
|[Update](../api/agentidentityblueprint-update.md)|[agentIdentityBlueprint](../resources/agentidentityblueprint.md)|Update the properties of an agentIdentityBlueprint object.|
|[Delete](../api/agentidentityblueprint-delete.md)|None|Delete an agentIdentityBlueprint object.|
|[Add password](../api/agentidentityblueprint-addpassword.md)|[passwordCredential](../resources/passwordcredential.md)|Add a strong password or secret to an agent identity blueprint.|
|[Remove password](../api/agentidentityblueprint-removepassword.md)|[passwordCredential](../resources/passwordcredential.md)|Remove a password or secret from an agent identity blueprint.|
|[Add key](../api/agentidentityblueprint-addkey.md)|[keyCredential](../resources/keycredential.md)|Add a key credential to an agent identity blueprint.|
|[Remove key](../api/agentidentityblueprint-removekey.md)|None|Remove a key credential from an agent identity blueprint.|
|[List sponsors](../api/agentidentityblueprint-list-sponsors.md)|[directoryObject](../resources/directoryobject.md) collection|Get the sponsors for this agent identity blueprint. Sponsors are users or service principals who can authorize and manage the lifecycle of agent identity instances.|
|[Add sponsors](../api/agentidentityblueprint-post-sponsors.md)|[directoryObject](../resources/directoryobject.md)|Add sponsors by posting to the sponsors collection.|
|[Remove sponsors](../api/agentidentityblueprint-delete-sponsors.md)|None|Remove a [directoryObject](../resources/directoryobject.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|addIns|[addIn](../resources/addin.md) collection|Defines custom behavior that a consuming service can use to call an agent identity blueprint in specific contexts. Inherited from [application](../resources/application.md).|
|api|[apiApplication](../resources/apiapplication.md)|Specifies settings for an agent identity blueprint that implements a web API. Inherited from [application](../resources/application.md).|
|appId|String|The unique identifier for the agent identity blueprint that is assigned by Microsoft Entra ID. Not nullable. Read-only. Inherited from [application](../resources/application.md).|
|applicationTemplateId|String|Unique identifier of the applicationTemplate. Read-only. `null` if the agent identity blueprint wasn't created from an application template. Inherited from [application](../resources/application.md).|
|appRoles|[appRole](../resources/approle.md) collection|The collection of roles defined for the agent identity blueprint. With app role assignments, these roles can be assigned to users, groups, or service principals associated with other applications. Not nullable. Inherited from [application](../resources/application.md).|
|authenticationBehaviors|[authenticationBehaviors](../resources/authenticationbehaviors.md)|The collection of breaking change behaviors related to token issuance that are configured for the agent identity blueprint. Authentication behaviors are unset by default (`null`) and must be explicitly enabled or disabled. Nullable. Inherited from [application](../resources/application.md).|
|certification|[certification](../resources/certification.md)|Specifies the certification status of the agent identity blueprint. Inherited from [application](../resources/application.md).|
|createdDateTime|DateTimeOffset|The date and time the agent identity blueprint was registered. The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. Read-only. Inherited from [application](../resources/application.md).|
|defaultRedirectUri|String|The default redirect URI. If specified and there's no explicit redirect URI in the sign-in request for SAML and OIDC flows, Microsoft Entra ID sends the token to this redirect URI. Inherited from [application](../resources/application.md).|
|deletedDateTime|DateTimeOffset|The date and time the agent identity blueprint was deleted. The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. Read-only. Inherited from [directoryObject](../resources/directoryobject.md).|
|description|String|Free text field to provide a description of the agent identity blueprint to end users. The maximum allowed size is 1,024 characters. Inherited from [application](../resources/application.md).|
|disabledByMicrosoftStatus|String|Specifies whether Microsoft has disabled the registered agent identity blueprint. Possible values are: `null` (default value), `NotDisabled`, and `DisabledDueToViolationOfServicesAgreement` (reasons may include suspicious, abusive, or malicious activity, or a violation of the Microsoft Services Agreement). Inherited from [application](../resources/application.md).|
|displayName|String|The display name for the agent identity blueprint. Maximum length is 256 characters. Inherited from [application](../resources/application.md).|
|groupMembershipClaims|String|Configures the `groups` claim issued in a user or OAuth 2.0 access token that the agent identity blueprint expects. To set this attribute, use one of the following string values: `None`, `SecurityGroup` (for security groups and Microsoft Entra roles), `All` (this gets all security groups, distribution groups, and Microsoft Entra directory roles that the signed-in user is a member of). Inherited from [application](../resources/application.md).|
|id|String|Unique identifier for the agent identity blueprint object. This property is referred to as **Object ID** in the Microsoft Entra admin center. Key. Not nullable. Read-only. Inherited from [directoryObject](../resources/directoryobject.md).|
|identifierUris|String collection|Also known as App ID URI, this value is set when an agent identity blueprint is used as a resource app. The identifierUris acts as the prefix for the scopes you reference in your API's code, and it must be globally unique across Microsoft Entra ID. Not nullable. Inherited from [application](../resources/application.md).|
|info|[informationalUrl](../resources/informationalurl.md)|Basic profile information of the agent identity blueprint, such as it's marketing, support, terms of service, and privacy statement URLs. The terms of service and privacy statement are surfaced to users through the user consent experience. Inherited from [application](../resources/application.md).|
|isDeviceOnlyAuthSupported|Boolean|Specifies whether this agent identity blueprint supports device authentication without a user. The default is `false`. Inherited from [application](../resources/application.md).|
|isFallbackPublicClient|Boolean|Specifies the fallback application type as public client, such as an installed application running on a mobile device. The default value is `false`, which means the fallback application type is confidential client such as a web app. Inherited from [application](../resources/application.md).|
|keyCredentials|[keyCredential](../resources/keycredential.md) collection|The collection of key credentials associated with the agent identity blueprint. Not nullable. Inherited from [application](../resources/application.md).|
|logo|Stream|The main logo for the agent identity blueprint. Not nullable. Inherited from [application](../resources/application.md).|
|nativeAuthenticationApisEnabled|nativeAuthenticationApisEnabled|Specifies whether the Native Authentication APIs are enabled for the agent identity blueprint. The possible values are: `none` and `all`. Default is `none`. Inherited from [application](../resources/application.md).|
|notes|String|Notes relevant for the management of the agent identity blueprint. Inherited from [application](../resources/application.md).|
|oauth2RequiredPostResponse|Boolean|Specifies whether, as part of OAuth 2.0 token requests, Microsoft Entra ID allows POST requests, as opposed to GET requests. The default is `false`, which specifies that only GET requests are allowed. Inherited from [application](../resources/application.md).|
|onPremisesPublishing|[onPremisesPublishing](../resources/onpremisespublishing.md)|Represents the set of properties required for configuring Application Proxy for this agent identity blueprint. Configuring these properties allows you to publish your on-premises application for secure remote access. Inherited from [application](../resources/application.md).|
|optionalClaims|[optionalClaims](../resources/optionalclaims.md)|Application developers can configure optional claims in their Microsoft Entra agent identity blueprints to specify the claims that are sent to their application by the Microsoft security token service. Inherited from [application](../resources/application.md).|
|parentalControlSettings|[parentalControlSettings](../resources/parentalcontrolsettings.md)|Specifies parental control settings for an agent identity blueprint. Inherited from [application](../resources/application.md).|
|passwordCredentials|[passwordCredential](../resources/passwordcredential.md) collection|The collection of password credentials associated with the agent identity blueprint. Not nullable. Inherited from [application](../resources/application.md).|
|publicClient|[publicClientApplication](../resources/publicclientapplication.md)|Specifies settings for installed clients such as desktop or mobile devices. Inherited from [application](../resources/application.md).|
|publisherDomain|String|The verified publisher domain for the agent identity blueprint. Read-only. Inherited from [application](../resources/application.md).|
|requestSignatureVerification|[requestSignatureVerification](../resources/requestsignatureverification.md)|Specifies whether this agent identity blueprint requires Microsoft Entra ID to verify the signed authentication requests. Inherited from [application](../resources/application.md).|
|requiredResourceAccess|[requiredResourceAccess](../resources/requiredresourceaccess.md) collection|Specifies the resources that the agent identity blueprint needs to access. This property also specifies the set of delegated permissions and application roles that it needs for each of those resources. This configuration of access to the required resources drives the consent experience. Not nullable. Inherited from [application](../resources/application.md).|
|samlMetadataUrl|String|The URL where the service exposes SAML metadata for federation. This property is valid only for single-tenant agent identity blueprints. Nullable. Inherited from [application](../resources/application.md).|
|serviceManagementReference|String|References application or service contact information from a Service or Asset Management database. Nullable. Inherited from [application](../resources/application.md).|
|servicePrincipalLockConfiguration|[servicePrincipalLockConfiguration](../resources/serviceprincipallockconfiguration.md)|Specifies whether sensitive properties of a multitenant agent identity blueprint should be locked for editing after the application is provisioned in a tenant. Nullable. `null` by default. Inherited from [application](../resources/application.md).|
|signInAudience|String|Specifies the Microsoft accounts that are supported for the current agent identity blueprint. The possible values are: `AzureADMyOrg` (default), `AzureADMultipleOrgs`, `AzureADandPersonalMicrosoftAccount`, and `PersonalMicrosoftAccount`. Inherited from [application](../resources/application.md).|
|spa|[spaApplication](../resources/spaapplication.md)|Specifies settings for a single-page application, including sign out URLs and redirect URIs for authorization codes and access tokens. Inherited from [application](../resources/application.md).|
|tags|String collection|Custom strings that can be used to categorize and identify the agent identity blueprint. Not nullable. Inherited from [application](../resources/application.md).|
|tokenEncryptionKeyId|Guid|Specifies the keyId of a public key from the keyCredentials collection. When configured, Microsoft Entra ID encrypts all the tokens it emits by using the key this property points to. Inherited from [application](../resources/application.md).|
|uniqueName|String|The unique identifier that can be assigned to an agent identity blueprint and used as an alternate key. Immutable. Read-only. Inherited from [application](../resources/application.md).|
|verifiedPublisher|[verifiedPublisher](../resources/verifiedpublisher.md)|Specifies the verified publisher of the agent identity blueprint. Inherited from [application](../resources/application.md).|
|web|[webApplication](../resources/webapplication.md)|Specifies settings for a web application. Inherited from [application](../resources/application.md).|
|windows|[windowsApplication](../resources/windowsapplication.md)|Specifies settings for apps running Microsoft Windows and published in the Microsoft Store or Xbox games store. Inherited from [application](../resources/application.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|appManagementPolicies|[appManagementPolicy](../resources/appmanagementpolicy.md) collection|The appManagementPolicy applied to this agent identity blueprint. Inherited from [microsoft.graph.application](../resources/application.md)|
|calls|[call](../resources/call.md) collection|Read-only. Nullable. Inherited from [microsoft.graph.application](../resources/application.md)|
|connectorGroup|[connectorGroup](../resources/connectorgroup.md)|The connectorGroup the agent identity blueprint is using with Microsoft Entra application proxy. Nullable. Inherited from [microsoft.graph.application](../resources/application.md)|
|createdOnBehalfOf|[directoryObject](../resources/directoryobject.md)|Read-only. Inherited from [microsoft.graph.application](../resources/application.md)|
|extensionProperties|[extensionProperty](../resources/extensionproperty.md) collection|Read-only. Nullable. Inherited from [microsoft.graph.application](../resources/application.md)|
|federatedIdentityCredentials|[federatedIdentityCredential](../resources/federatedidentitycredential.md) collection|Federated identities for agent identity blueprints. Inherited from [microsoft.graph.application](../resources/application.md)|
|onlineMeetings|[onlineMeeting](../resources/onlinemeeting.md) collection|Read-only. Nullable. Inherited from [microsoft.graph.application](../resources/application.md)|
|owners|[directoryObject](../resources/directoryobject.md) collection|Directory objects that are owners of this agent identity blueprint. The owners are a set of nonadmin users or service principals allowed to modify this object. Read-only. Nullable. Inherited from [microsoft.graph.application](../resources/application.md)|
|sponsors|[directoryObject](../resources/directoryobject.md) collection|The sponsors for this agent identity blueprint. Sponsors are users or service principals who can authorize and manage the lifecycle of agent identity instances.|
|synchronization|[synchronization](../resources/synchronization.md)|Represents the capability for Microsoft Entra identity synchronization through the Microsoft Graph API. Inherited from [microsoft.graph.application](../resources/application.md)|
|tokenLifetimePolicies|[tokenLifetimePolicy](../resources/tokenlifetimepolicy.md) collection|The tokenLifetimePolicies assigned to this agent identity blueprint. Inherited from [microsoft.graph.application](../resources/application.md)|

## JSON representation
The following JSON representation shows the resource type. Only a subset of all properties are returned by default. All other properies can only be retrieved using $select.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.agentIdentityBlueprint",
  "baseType": "microsoft.graph.application",
  "openType": true
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.agentIdentityBlueprint",
  "id": "String (identifier)",
  "appId": "String",
  "identifierUris": ["String"],
  "createdByAppId": "String",
  "createdDateTime": "String (timestamp)",
  "description": "String",
  "disabledByMicrosoftStatus": "String",
  "displayName": "String",
  "groupMembershipClaims": "String",
  "publisherDomain": "String",
  "signInAudience": "String",
  "tags": ["String"],
  "tokenEncryptionKeyId": "Guid",
  "uniqueName": "String",
  "defaultRedirectUri": "String",
  "serviceManagementReference": "String",
  "certification": {
    "@odata.type": "microsoft.graph.certification"
  },
  "optionalClaims": {
    "@odata.type": "microsoft.graph.optionalClaims"
  },
  "api": {
    "@odata.type": "microsoft.graph.apiApplication"
  },
  "appRoles": [
    {
      "@odata.type": "microsoft.graph.appRole"
    }
  ],
  "info": {
    "@odata.type": "microsoft.graph.informationalUrl"
  },
  "keyCredentials": [
    {
      "@odata.type": "microsoft.graph.keyCredential"
    }
  ],
  "passwordCredentials": [
    {
      "@odata.type": "microsoft.graph.passwordCredential"
    }
  ],
  "verifiedPublisher": {
    "@odata.type": "microsoft.graph.verifiedPublisher"
  },
  "web": {
    "@odata.type": "microsoft.graph.webApplication"
  }
}
```

