---
title: "authenticationMethodsPolicy resource type"
description: "Defines authentication methods and the users that are allowed to use them to sign in and perform multi-factor authentication (MFA)."
author: "jpettere"
ms.reviewer: intelligentaccesspm
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
ms.date: 05/23/2024
---

# authenticationMethodsPolicy resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Defines authentication methods and the users that are allowed to use them to sign in and perform multi-factor authentication (MFA) in Microsoft Entra ID.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get](../api/authenticationmethodspolicy-get.md)|[authenticationMethodsPolicy](../resources/authenticationmethodspolicy.md)|Read the properties and relationships of an [authenticationMethodsPolicy](../resources/authenticationmethodspolicy.md) object.|
|[Update](../api/authenticationmethodspolicy-update.md)|[authenticationMethodsPolicy](../resources/authenticationmethodspolicy.md)|Update the properties of an [authenticationMethodsPolicy](../resources/authenticationmethodspolicy.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|description|String|A description of the policy.|
|displayName|String|The name of the policy.|
|id|String|The identifier of the policy. Inherited from [entity](../resources/entity.md).|
|lastModifiedDateTime|DateTimeOffset|The date and time of the last update to the policy.|
|policyVersion|String|The version of the policy in use.|
|policyMigrationState|authenticationMethodsPolicyMigrationState|The state of migration of the authentication methods policy from the legacy multifactor authentication and self-service password reset (SSPR) policies. The possible values are: <br/><li>`premigration` - means the authentication methods policy is used for authentication only, legacy policies are respected. <li>`migrationInProgress` - means the authentication methods policy is used for both authentication and SSPR, legacy policies are respected. <li>`migrationComplete` - means the authentication methods policy is used for authentication and SSPR, legacy policies are ignored. <li>`unknownFutureValue` - Evolvable enumeration sentinel value. Don't use. |
|reconfirmationInDays|Int32|Days before the user will be asked to reconfirm their method. |
|registrationEnforcement|[registrationEnforcement](../resources/registrationenforcement.md)|Enforce registration at sign-in time. This property can be used to remind users to set up targeted authentication methods.|
|reportSuspiciousActivitySettings|[reportSuspiciousActivitySettings](../resources/reportsuspiciousactivitysettings.md)|Enable users to report unexpected voice call or phone app notification multi-factor authentication prompts as suspicious.|
|systemCredentialPreferences|[systemCredentialPreferences](../resources/systemcredentialpreferences.md)|Prompt users with their most-preferred credential for multifactor authentication.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|authenticationMethodConfigurations|[authenticationMethodConfiguration](../resources/authenticationmethodconfiguration.md) collection|Represents the settings for each authentication method. Automatically expanded on `GET /policies/authenticationMethodsPolicy`.|

## JSON representation
The following JSON representation shows the resource type.
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
  "registrationEnforcement": {
    "@odata.type": "microsoft.graph.registrationEnforcement"
  },
    "reportSuspiciousActivitySettings": {
    "@odata.type": "microsoft.graph.reportSuspiciousActivitySettings"
  },
  "systemCredentialPreferences": {
    "@odata.type": "microsoft.graph.systemCredentialPreferences"
  }
}
```
