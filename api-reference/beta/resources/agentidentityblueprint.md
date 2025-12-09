---
title: "agentIdentityBlueprint resource type"
description: "An agent identity blueprint is a specialized application type that serves as the template for creating agent identity instances within the Microsoft Entra ID ecosystem."
author: "zallison22"
ms.date: 11/10/2025
ms.localizationpriority: medium
ms.subservice: "entra-applications"
doc_type: resourcePageType
---

# agentIdentityBlueprint resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

An agent identity blueprint serves as a template for creating agent identities within the Microsoft Entra ID ecosystem.

Inherits from [application](../resources/application.md).

This resource is an open type that allows additional properties beyond those documented here.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/agentidentityblueprint-list.md)|[agentIdentityBlueprint](../resources/agentidentityblueprint.md) collection|Get a list of the agentIdentityBlueprint objects and their properties.|
|[Create](../api/agentidentityblueprint-post.md) | [agentIdentityBlueprint](../resources/agentidentityblueprint.md) | Create (register) a new agentIdentityBlueprint.|
|[Get](../api/agentidentityblueprint-get.md)|[agentIdentityBlueprint](../resources/agentidentityblueprint.md)|Read the properties and relationships of [agentIdentityBlueprint](../resources/agentidentityblueprint.md) object.|
|[Update](../api/agentidentityblueprint-update.md)|[agentIdentityBlueprint](../resources/agentidentityblueprint.md)|Update the properties of an agentIdentityBlueprint object.|
|[Upsert](../api/agentidentityblueprint-upsert.md) | [agentIdentityBlueprint](../resources/agentidentityblueprint.md) | Create a new agent identity blueprint if it doesn't exist, or update the properties of an existing blueprint.|
|[Delete](../api/agentidentityblueprint-delete.md)|None|Delete an agentIdentityBlueprint object.|
|**Credentials**|||
|[Add password](../api/agentidentityblueprint-addpassword.md)|[passwordCredential](../resources/passwordcredential.md)|Add a strong password or secret to an agent identity blueprint.|
|[Remove password](../api/agentidentityblueprint-removepassword.md)|[passwordCredential](../resources/passwordcredential.md)|Remove a password or secret from an agent identity blueprint.|
|[Add key](../api/agentidentityblueprint-addkey.md)|[keyCredential](../resources/keycredential.md)|Add a key credential to an agent identity blueprint.|
|[Remove key](../api/agentidentityblueprint-removekey.md)|None|Remove a key credential from an agent identity blueprint.|
|[List federatedIdentityCredential](../api/federatedidentitycredential-list.md)|[federatedIdentityCredential](../resources/federatedidentitycredential.md) collection|Get a list of the [federatedIdentityCredential](../resources/federatedidentitycredential.md) objects and their properties.|
|[Create federatedIdentityCredential](../api/federatedidentitycredential-post.md)|[federatedIdentityCredential](../resources/federatedidentitycredential.md)|Create a new [federatedIdentityCredential](../resources/federatedidentitycredential.md) object.|
|[Get federatedIdentityCredential](../api/federatedidentitycredential-get.md)|[federatedIdentityCredential](../resources/federatedidentitycredential.md)|Read the properties and relationships of a [federatedIdentityCredential](../resources/federatedidentitycredential.md) object.|
|[Update federatedIdentityCredential](../api/federatedidentitycredential-update.md)|None|Update the properties of a [federatedIdentityCredential](../resources/federatedidentitycredential.md) object.|
|[Upsert federatedIdentityCredential](../api/federatedidentitycredential-upsert.md)|[federatedIdentityCredential](../resources/federatedidentitycredential.md)|Create a new [federatedIdentityCredential](../resources/federatedidentitycredential.md) if it doesn't exist, or update the properties of an existing [federatedIdentityCredential](../resources/federatedidentitycredential.md) object.|
|[Delete federatedIdentityCredential](../api/federatedidentitycredential-delete.md)|None|Delete a [federatedIdentityCredential](../resources/federatedidentitycredential.md) object.|
|**Deleted items**|||
|[List](../api/directory-deleteditems-list.md) | [directoryObject](directoryobject.md) collection | Retrieve a list of recently deleted agent identities. |
|[Get](../api/directory-deleteditems-get.md) | [directoryObject](directoryobject.md) | Retrieve the properties of a recently deleted agent identity. |
|[Restore](../api/directory-deleteditems-restore.md) | [directoryObject](directoryobject.md) | Restore a recently deleted agent identity. |
|[Permanently delete](../api/directory-deleteditems-delete.md) | None | Permanently delete an agent identity. |
|**Owners**|||
|[List owners](../api/agentidentityblueprint-list-owners.md)|[directoryObject](../resources/directoryobject.md) collection|Get the owners of this agent identity blueprint principal.|
|[Add owners](../api/agentidentityblueprint-post-owners.md)|[directoryObject](../resources/directoryobject.md)|Assign an owner to this agent identity blueprint principal.|
|[Remove owners](../api/agentidentityblueprint-delete-owners.md)|None|Remove an owner from this agent identity blueprint principal.|
|**Sponsors**|||
|[List sponsors](../api/agentidentityblueprint-list-sponsors.md)|[directoryObject](../resources/directoryobject.md) collection|Get the sponsors for this agent identity blueprint. Sponsors are users or service principals who can authorize and manage the lifecycle of agent identity instances.|
|[Add sponsors](../api/agentidentityblueprint-post-sponsors.md)|[directoryObject](../resources/directoryobject.md)|Add sponsors by posting to the sponsors collection.|
|[Remove sponsors](../api/agentidentityblueprint-delete-sponsors.md)|None|Remove a [directoryObject](../resources/directoryobject.md) object.|
|**Verified publisher**| | |
|[Set](../api/agentidentityblueprint-setverifiedpublisher.md)| None | Set the verified publisher of an application.|
|[Unset](../api/agentidentityblueprint-unsetverifiedpublisher.md)| None | Unset the verified publisher of an application.|
|**Inheritable permissions**|||
|[List inheritable permissions](../api/agentidentityblueprint-list-inheritablepermissions.md)|[inheritablePermission](../resources/inheritablepermission.md) collection|Get a list of the inheritablePermission objects and their properties.|
|[Add inheritable permission](../api/agentidentityblueprint-post-inheritablepermissions.md)|[inheritablePermission](../resources/inheritablepermission.md)|Create a new inheritablePermission object.|
|[Delete inheritable permission](../api/agentidentityblueprint-delete-inheritablepermissions.md)|None|Delete an inheritablePermission object.|

## Properties

> [!IMPORTANT]
> While this resource inherits from **application**, some properties are not applicable and return `null` or default values. These properties are excluded from the table below.

|Property|Type|Description|
|:---|:---|:---|
|api|[apiApplication](../resources/apiapplication.md)|Specifies settings for an agent identity blueprint that implements a web API. Inherited from [application](../resources/application.md).|
|appId|String|The unique identifier for the agent identity blueprint that is assigned by Microsoft Entra ID. Not nullable. Read-only. Inherited from [application](../resources/application.md).|
|appRoles|[appRole](../resources/approle.md) collection|The collection of roles defined for the agent identity blueprint. With app role assignments, these roles can be assigned to users, groups, or service principals associated with other applications. Not nullable. Inherited from [application](../resources/application.md).|
|certification|[certification](../resources/certification.md)|Specifies the certification status of the agent identity blueprint. Inherited from [application](../resources/application.md).|
|createdByAppId|String|The unique identifier of the application that created this agent identity blueprint. Set internally by Microsoft Entra ID. Read-only. Inherited from [application](../resources/application.md).|
|createdDateTime|DateTimeOffset|The date and time the agent identity blueprint was registered. The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. Read-only. Inherited from [application](../resources/application.md).|
|createdByAppId|String|The **appId** (called **Application (client) ID** on the Microsoft Entra admin center) of the application that created this agent identity blueprint. Set internally by Microsoft Entra ID. Read-only. Inherited from [application](../resources/application.md).|
|description|String|Free text field to provide a description of the agent identity blueprint to end users. The maximum allowed size is 1,024 characters. Inherited from [application](../resources/application.md).|
|disabledByMicrosoftStatus|String|Specifies whether Microsoft has disabled the registered agent identity blueprint. The possible values are: `null` (default value), `NotDisabled`, and `DisabledDueToViolationOfServicesAgreement` (reasons may include suspicious, abusive, or malicious activity, or a violation of the Microsoft Services Agreement). Inherited from [application](../resources/application.md).|
|displayName|String|The display name for the agent identity blueprint. Maximum length is 256 characters. Inherited from [application](../resources/application.md).|
|groupMembershipClaims|String|Configures the `groups` claim issued in a user or OAuth 2.0 access token that the agent identity blueprint expects. To set this attribute, use one of the following string values: `None`, `SecurityGroup` (for security groups and Microsoft Entra roles), `All` (this gets all security groups, distribution groups, and Microsoft Entra directory roles that the signed-in user is a member of). Inherited from [application](../resources/application.md).|
|id|String|Unique identifier for the agent identity blueprint object. This property is referred to as **Object ID** in the Microsoft Entra admin center. Key. Not nullable. Read-only. Inherited from [directoryObject](../resources/directoryobject.md).|
|identifierUris|String collection| Also known as App ID URI, this value is set when an agent identity blueprint is used as a resource app. The identifierUris acts as the prefix for the scopes you reference in your API's code, and it must be globally unique across Microsoft Entra ID. Not nullable. Inherited from [application](../resources/application.md).|
|info|[informationalUrl](../resources/informationalurl.md)|Basic profile information of the agent identity blueprint, such as it's marketing, support, terms of service, and privacy statement URLs. The terms of service and privacy statement are surfaced to users through the user consent experience. Inherited from [application](../resources/application.md).|
|keyCredentials|[keyCredential](../resources/keycredential.md) collection|The collection of key credentials associated with the agent identity blueprint. Not nullable. Inherited from [application](../resources/application.md).|
|optionalClaims|[optionalClaims](../resources/optionalclaims.md)|Application developers can configure optional claims in their Microsoft Entra agent identity blueprints to specify the claims that are sent to their application by the Microsoft security token service. Inherited from [application](../resources/application.md).|
|passwordCredentials|[passwordCredential](../resources/passwordcredential.md) collection|The collection of password credentials associated with the agent identity blueprint. Not nullable. Inherited from [application](../resources/application.md).<br/><br/>You can also add passwords after creating the agent identity blueprint by calling the [Add password](../api/agentidentityblueprint-addpassword.md) API.|
|publisherDomain|String|The verified publisher domain for the agent identity blueprint. Read-only. Inherited from [application](../resources/application.md).|
|serviceManagementReference|String|References application or service contact information from a Service or Asset Management database. Nullable. Inherited from [application](../resources/application.md).|
|signInAudience|String|Specifies the Microsoft accounts that are supported for the current agent identity blueprint. The possible values are: `AzureADMyOrg` (default), `AzureADMultipleOrgs`, `AzureADandPersonalMicrosoftAccount`, and `PersonalMicrosoftAccount`. Inherited from [application](../resources/application.md).|
|tags|String collection|Custom strings that can be used to categorize and identify the agent identity blueprint. Not nullable. Inherited from [application](../resources/application.md).|
|tokenEncryptionKeyId|Guid|Specifies the keyId of a public key from the keyCredentials collection. When configured, Microsoft Entra ID encrypts all the tokens it emits by using the key this property points to. Inherited from [application](../resources/application.md).|
|uniqueName|String|The unique identifier that can be assigned to an agent identity blueprint and used as an alternate key. Immutable. Read-only. Inherited from [application](../resources/application.md).|
|verifiedPublisher|[verifiedPublisher](../resources/verifiedpublisher.md)|Specifies the verified publisher of the agent identity blueprint. Inherited from [application](../resources/application.md).|
|web|[webApplication](../resources/webapplication.md)|Specifies settings for a web application. Inherited from [application](../resources/application.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|appManagementPolicies|[appManagementPolicy](../resources/appmanagementpolicy.md) collection|The appManagementPolicy applied to this agent identity blueprint. Inherited from [microsoft.graph.application](../resources/application.md)|
|federatedIdentityCredentials|[federatedIdentityCredential](../resources/federatedidentitycredential.md) collection|Federated identities for agent identity blueprints. Inherited from [microsoft.graph.application](../resources/application.md)|
|inheritablePermissions|[inheritablePermission](../resources/inheritablepermission.md) collection|Defines scopes of a resource application that may be automatically granted to agent identities without additional consent.|
|owners|[directoryObject](../resources/directoryobject.md) collection|Directory objects that are owners of this agent identity blueprint. The owners are a set of nonadmin users or service principals allowed to modify this object. Read-only. Nullable. Inherited from [microsoft.graph.application](../resources/application.md)|
|sponsors|[directoryObject](../resources/directoryobject.md) collection|The sponsors for this agent identity blueprint. Sponsors are users or groups who can authorize and manage the lifecycle of agent identity instances. Required during the create operation.|

## JSON representation
The following JSON representation shows the resource type. Only a subset of all properties are returned by default. All other properties can only be retrieved using `$select`.
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

