---
title: "passwordCredentialConfiguration resource type"
description: "Password credential configuration complex type to configure password credential restriction, maxLifetime, and enforcement date"
author: "Jackson-Woods"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
ms.date: 09/13/2024
---

# passwordCredentialConfiguration resource type

Namespace: microsoft.graph

Password credential configuration object that contains properties to configure restrictions such as blocking or restricting lifetimes of password secrets.

## Properties

| Property                                    | Type                            | Description |
| :------------------------------------------ | :------------------------------ | :--------------------------------------------------------------------------------------------------------------------------------------- |
| maxLifetime                                 | Duration                        | String value that indicates the maximum lifetime for password expiration, defined as an ISO 8601 duration. For example, `P4DT12H30M5S` represents four days, 12 hours, 30 minutes, and five seconds. This property is required when **restrictionType** is set to `passwordLifetime`.|
| restrictForAppsCreatedAfterDateTime         | DateTimeOffset                  | Specifies the date from which the policy restriction applies to newly created applications. For existing applications, the enforcement date can be retroactively applied.|
| restrictionType                             | appCredentialRestrictionType    | The type of restriction being applied. The possible values are: `passwordAddition`, `passwordLifetime`, `symmetricKeyAddition`, `symmetricKeyLifetime`, `customPasswordAddition`, and `unknownFutureValue`. Each value of restrictionType can be used only once per policy.|
| state                                       | appManagementRestrictionState   | Indicates whether the restriction is evaluated. The possible values are: `enabled`, `disabled`, `unknownFutureValue`. If `enabled`, the restriction is evaluated. If `disabled`, the restriction isn't evaluated or enforced.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.passwordCredentialConfiguration"
}
-->

```json
{
  "@odata.type": "#microsoft.graph.passwordCredentialConfiguration",
  "restrictionType": "String",
  "state": "String",
  "restrictForAppsCreatedAfterDateTime": "String (DateTime)",
  "maxLifetime": "String (duration)"
}
```
