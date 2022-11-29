---
title: "authenticationStrengthPolicy resource type"
description: "A collection of settings that define specific combinations of authentication methods and metadata. The authentication strength policy, when applied to a given scenario using Azure AD Conditional Access, defines which authentication methods must be used to authenticate in that scenario."
author: "mmcla"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# authenticationStrengthPolicy resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A collection of settings that define specific combinations of authentication methods and metadata. The authentication strength policy, when applied to a given scenario using Azure AD Conditional Access, defines which authentication methods must be used to authenticate in that scenario. An authentication strength may be built-in or custom (defined by the tenant) and may or may not fulfill the requirements to grant an MFA claim.

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List authenticationStrengthPolicies](../api/authenticationstrengthroot-list-policies.md)|[authenticationStrengthPolicy](../resources/authenticationstrengthpolicy.md) collection|Get a list of the [authenticationStrengthPolicy](../resources/authenticationstrengthpolicy.md) objects and their properties.|
|[Create authenticationStrengthPolicy](../api/authenticationstrengthroot-post-policies.md)|[authenticationStrengthPolicy](../resources/authenticationstrengthpolicy.md)|Create a new custom [authenticationStrengthPolicy](../resources/authenticationstrengthpolicy.md) object.|
|[Get authenticationStrengthPolicy](../api/authenticationstrengthpolicy-get.md)|[authenticationStrengthPolicy](../resources/authenticationstrengthpolicy.md)|Read the properties and relationships of an [authenticationStrengthPolicy](../resources/authenticationstrengthpolicy.md) object.|
|[Update authenticationStrengthPolicy](../api/authenticationstrengthpolicy-update.md)|[authenticationStrengthPolicy](../resources/authenticationstrengthpolicy.md)|Update the properties of a custom [authenticationStrengthPolicy](../resources/authenticationstrengthpolicy.md) object. You can't update a built-in **authenticationStrengthPolicy** object. |
|[Delete authenticationStrengthPolicy](../api/authenticationstrengthroot-delete-policies.md)|None|Delete a custom [authenticationStrengthPolicy](../resources/authenticationstrengthpolicy.md) object. You can't delete a built-in **authenticationStrengthPolicy** object.|
|[findByMethodMode](../api/authenticationstrengthpolicy-findbymethodmode.md)|[authenticationStrengthPolicy](../resources/authenticationstrengthpolicy.md) collection|Find an [authenticationStrengthPolicy](../resources/authenticationstrengthpolicy.md) by allowed mode.|
|[List usage](../api/authenticationstrengthpolicy-usage.md)|[authenticationStrengthUsage](../resources/authenticationstrengthusage.md)|Find all [conditionalAccessPolicies](../resources/conditionalaccesspolicy.md) that reference an authentication strength.|
|[updateAllowedCombinations](../api/authenticationstrengthpolicy-updateallowedcombinations.md)|[updateAllowedCombinationsResult](../resources/updateallowedcombinationsresult.md)|Update the allowed [authenticationCombinationConfiguration](../resources/authenticationcombinationconfiguration.md) for a given [authenticationStrengthPolicy](../resources/authenticationstrengthpolicy.md).|
|[List combinationConfigurations](../api/authenticationstrengthpolicy-list-combinationconfigurations.md)|[authenticationCombinationConfiguration](../resources/authenticationcombinationconfiguration.md) collection|Get the authenticationCombinationConfiguration resources from the combinationConfigurations navigation property.|
|[Create authenticationCombinationConfiguration](../api/authenticationstrengthpolicy-post-combinationconfigurations.md)|[authenticationCombinationConfiguration](../resources/authenticationcombinationconfiguration.md)|Create a new authenticationCombinationConfiguration object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|allowedCombinations|authenticationMethodModes collection|A collection of authentication method modes that are required be used to satify this authentication strength.|
|createdDateTime|DateTimeOffset|The datetime when this policy was created.|
|description|String|The human-readable description of this policy.|
|displayName|String|The human-readable display name of this policy. <br><br>Supports `$filter` (`eq`, `ne`, `not` , and `in`). |
|id|String|The system-generated identifier for this mode. Inherited from [entity](../resources/entity.md).|
|modifiedDateTime|DateTimeOffset|The datetime when this policy was last modified.|
|policyType|authenticationStrengthPolicyType|A descriptor of whether this policy is built into Azure AD or created by an admin for the tenant. The possible values are: `builtIn`, `custom`, `unknownFutureValue`. <br><br>Supports `$filter` (`eq`, `ne`, `not` , and `in`). |
|requirementsSatisfied|authenticationStrengthRequirements|A descriptor of whether this authentication strength grants the MFA claim upon successful satisfaction. The possible values are: `none`, `mfa`, `unknownFutureValue`.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|combinationConfigurations|[authenticationCombinationConfiguration](../resources/authenticationcombinationconfiguration.md) collection|Settings that may be used to require specific types or instances of an authentication method to be used when authenticating with a specified combination of authentication methods.|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.authenticationStrengthPolicy",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.authenticationStrengthPolicy",
  "id": "String (identifier)",
  "createdDateTime": "String (timestamp)",
  "modifiedDateTime": "String (timestamp)",
  "displayName": "String",
  "description": "String",
  "policyType": "String",
  "requirementsSatisfied": "String",
  "allowedCombinations": [
    "String"
  ]
}
```

