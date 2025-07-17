---
title: "passwordCredentialConfiguration resource type"
description: "Password credential configuration complex type to configure password credential restriction, maxLifetime, and enforcement date"
author: "madansr7"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
ms.date: 12/02/2024
---

# passwordCredentialConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Password credential configuration object that contains properties to configure restrictions such as blocking or restricting lifetimes of password secrets.

## Methods

None.

## Properties

| Property                                    | Type                            | Description |
| :------------------------------------------ | :------------------------------ | :--------------------------------------------------------------------------------------------------------------------------------------- |
| maxLifetime                                 | Duration                        | String value that indicates the maximum lifetime for password expiration, defined as an ISO 8601 duration. For example, `P4DT12H30M5S` represents four days, 12 hours, 30 minutes, and five seconds. This property is required when **restrictionType** is set to `passwordLifetime`.|
| restrictForAppsCreatedAfterDateTime         | DateTimeOffset                  | Specifies the date from which the policy restriction applies to newly created applications. For existing applications, the enforcement date can be retroactively applied.|
| restrictionType                             | appCredentialRestrictionType    | A unique identifier key for **passwordCredentialConfiguration**. This value also represents the type of restriction being applied. The possible values are: `passwordAddition`, `passwordLifetime`, `symmetricKeyAddition`, `symmetricKeyLifetime`, `customPasswordAddition`, and `unknownFutureValue`. Each value of restrictionType can be used only once per policy.|
| state                                       | appManagementRestrictionState   | Indicates whether the restriction is evaluated. The possible values are: `enabled`, `disabled`, `unknownFutureValue`. If `enabled`, the restriction is evaluated. If `disabled`, the restriction isn't evaluated or enforced.|
| excludeActors                | [appManagementPolicyActorExemptions](appmanagementpolicyactorexemptions.md)                         | Collection of custom security attribute exemptions. If an actor user or service principal has the custom security attribute defined in this section, they're exempted from the restriction.  This means that calls the user or service principal makes to create or update apps are exempt from this policy enforcement.  |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource.

<!-- {
  "blockType": "resource",
  "keyProperty": "restrictionType",
  "@odata.type": "microsoft.graph.passwordCredentialConfiguration",
  "openType": false
}
-->

```json
{
  "@odata.type": "#microsoft.graph.passwordCredentialConfiguration",
  "restrictionType": "String (identifier)",
  "state": "String",
  "restrictForAppsCreatedAfterDateTime": "String (DateTime)",
  "maxLifetime": "String (duration)",
  "excludeActors": {
    "@odata.type": "microsoft.graph.appManagementPolicyActorExemptions"
  }
}
```
