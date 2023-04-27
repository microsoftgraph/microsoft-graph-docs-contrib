---
title: "synchronizationSecretKeyStringValuePair resource type"
description: "Represents a single secret value."
ms.localizationpriority: medium
doc_type: resourcePageType
author: "ArvindHarinder1"
ms.prod: "applications"
---

# synchronizationSecretKeyStringValuePair resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a single secret value. 

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|key|synchronizationSecret| Possible values are: `None`, `UserName`, `Password`, `SecretToken`, `AppKey`, `BaseAddress`, `ClientIdentifier`, `ClientSecret`, `SingleSignOnType`, `Sandbox`, `Url`, `Domain`, `ConsumerKey`, `ConsumerSecret`, `TokenKey`, `TokenExpiration`, `Oauth2AccessToken`, `Oauth2AccessTokenCreationTime`, `Oauth2RefreshToken`, `SyncAll`, `InstanceName`, `Oauth2ClientId`, `Oauth2ClientSecret`, `CompanyId`, `UpdateKeyOnSoftDelete`, `SynchronizationSchedule`, `SystemOfRecord`, `SandboxName`, `EnforceDomain`, `SyncNotificationSettings`, `SkipOutOfScopeDeletions`, `Oauth2AuthorizationCode`, `Oauth2RedirectUri`, `ApplicationTemplateIdentifier`, `Oauth2TokenExchangeUri`, `Oauth2AuthorizationUri`, `AuthenticationType`, `Server`, `PerformInboundEntitlementGrants`, `HardDeletesEnabled`, `SyncAgentCompatibilityKey`, `SyncAgentADContainer`, `ValidateDomain`, `TestReferences`, `ConnectionString`.|
|value|String|The value of the secret.|


### Supported key value pairs
| Key	   |Value|
|:---------------|:----------|
|BaseAddress| The tenant URL / SCIM end point that you are trying to provision.|
|SecretToken	| The token to authorize access to the application. This token is provided by the application developer. |
|SyncNotificationSettings	|This property is used to determine if quarantine emails are sent.|
|SyncAll	|Determines scope of sync between all users and groups or only ones that are assigned. When provisioning users into applications, the value is generally “True”.|
|SkipOutOfScopeDeletions |Determines if accounts that go out of scope will/won’t be disabled in the target.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.synchronizationSecretKeyStringValuePair"
}-->

```json
{
  "key": "String",
  "value": "String"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "synchronizationSecretKeyStringValuePair resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


