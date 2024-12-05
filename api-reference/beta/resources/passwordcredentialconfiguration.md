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

## Properties

| Property                                    | Type                            | Description |
| :------------------------------------------ | :------------------------------ | :--------------------------------------------------------------------------------------------------------------------------------------- |
| maxLifetime                                 | Duration                        | String value that indicates the maximum lifetime for password expiration, defined as an ISO 8601 duration. For example, `P4DT12H30M5S` represents 4 days, 12 hours, 30 minutes, and 5 seconds. This property is required when **restrictionType** is set to `passwordLifetime`.|
| restrictForAppsCreatedAfterDateTime         | DateTimeOffset                  | Specifies the date from which the policy restriction applies to newly created applications. For existing applications, the enforcement date can be retroactively applied.|
| restrictionType                             | appCredentialRestrictionType    | The type of restriction being applied. The possible values are: `passwordAddition`, `passwordLifetime`, `symmetricKeyAddition`, `symmetricKeyLifetime`, `customPasswordAddition`, and `unknownFutureValue`. Each value of restrictionType can be used only once per policy.|
| state                                       | appManagementRestrictionState   | Indicates whether the restriction is evaluated. The possible values are: `enabled`, `disabled`, `unknownFutureValue`. If `enabled`, the restriction is evaluated. If `disabled`, the restriction isn't evaluated or enforced.|
| isStateSetByMicrosoft                       | Boolean                         | This property is read-only. If `true`, Microsoft set the `passwordCredentialConfiguration` state. If `false`, the tenant modified the `passwordCredentialConfiguration` state.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource.

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
  "isStateSetByMicrosoft": "Boolean",
  "restrictForAppsCreatedAfterDateTime": "String (DateTime)",
  "maxLifetime": "String (duration)"
}
```
