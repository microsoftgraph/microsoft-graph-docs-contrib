---
title: "authenticationMethodsPolicy resource type"
description: "Defines authentication methods and the users that are allowed to use them to sign in and perform multi-factor authentication (MFA)."
author: "mmcla"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# authenticationMethodsPolicy resource type

Namespace: microsoft.graph

Defines authentication methods and the users that are allowed to use them to sign in and perform multi-factor authentication (MFA) in Azure Active Directory (Azure AD).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get authenticationMethodsPolicy](../api/authenticationmethodspolicy-get.md)|[authenticationMethodsPolicy](../resources/authenticationmethodspolicy.md)|Read the properties and relationships of an [authenticationMethodsPolicy](../resources/authenticationmethodspolicy.md) object.|
|[Update authenticationMethodsPolicy](../api/authenticationmethodspolicy-update.md)|[authenticationMethodsPolicy](../resources/authenticationmethodspolicy.md)|Update the properties of an [authenticationMethodsPolicy](../resources/authenticationmethodspolicy.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|description|String|A description of the policy. Read-only.|
|displayName|String|The name of the policy. Read-only.|
|id|String|The identifier of the policy. Inherited from [entity](../resources/entity.md).|
|lastModifiedDateTime|DateTimeOffset|The date and time of the last update to the policy. Read-only.|
|policyVersion|String|The version of the policy in use. Read-only.|
|registrationEnforcement|[registrationEnforcement](../resources/registrationenforcement.md)|Enforce registration at sign-in time. This property can be used to remind users to set up targeted authentication methods.|
|policyMigrationState|authenticationMethodsPolicyMigrationState|The state of migration of the authentication methods policy from the legacy multifactor authentication and self-service password reset (SSPR) policies. The possible values are: <br/><li>`premigration` - means the authentication methods policy is used for authentication only, legacy policies are respected. <li>`migrationInProgress` - means the authentication methods policy is used for both authentication and SSPR, legacy policies are respected. <li>`migrationComplete` - means the authentication methods policy is used for authentication and SSPR, legacy policies are ignored. <li>`unknownFutureValue` - Evolvable enumeration sentinel value. Do not use. |

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|authenticationMethodConfigurations|[authenticationMethodConfiguration](../resources/authenticationmethodconfiguration.md) collection|Represents the settings for each authentication method. Automatically expanded on `GET /policies/authenticationMethodsPolicy`.|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.authenticationMethodsPolicy",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.authenticationMethodsPolicy",
  "description": "String",
  "displayName": "String",
  "id": "String (identifier)",
  "lastModifiedDateTime": "String (timestamp)",
  "policyVersion": "String",
  "policyMigrationState": "String",
  "registrationEnforcement": {
    "@odata.type": "microsoft.graph.registrationEnforcement"
  } 
}
```
