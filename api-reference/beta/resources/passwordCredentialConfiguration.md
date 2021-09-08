---
title: "passwordCredentialConfiguration resource type"
description: "Password credential configuration complex type to configure password credential restriction, maxLifetime, and enforcement date"
author: "madansr7"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# passwordCredentialConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Password credential configuration object that contains properties to configure restrictions such as blocking or restricting lifetimes of password secrets.

## Properties

| Property                            | Type                                                                               | Description                                                                                                                                                                                                                                                                                   |
| :---------------------------------- | :--------------------------------------------------------------------------------- | :-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| restrictionType                     | appCredentialRestrictionType | The type of restriction being applied. Possible values are `passwordAddition` or `passwordLifetime`. Each value of restrictionType can be used only once per policy.                                                                                                                        |
| maxLifeTime                         | Duration                                                                           | Value that can be used as the maximum number for setting password expiration time in days, hours, minutes or seconds. For example, "P4DT12H30M5S" represents a duration of four days, twelve hours, thirty minutes, and five seconds. This property is required when restriction type is set to `passwordLifetime`. |
| restrictForAppsCreatedAfterDateTime | DateTimeOffset                                                                     | Enforces the policy for an app created on or after the enforcement date. For existing applications, the enforcement date would be back dated. To apply to all applications, enforcement datetime would be null.                                                                               |

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.passwordCredentialConfiguration"
}
-->

```json
{
  "@odata.type": "#microsoft.graph.passwordCredentialConfiguration",
  "restrictionType": {
    "@odata.type": "microsoft.graph.appCredentialRestrictionType"
  },
  "maxLifetime": "String (duration)",
  "restrictForAppsCreatedAfterDateTime": "DateTimeOffset"
}
```
