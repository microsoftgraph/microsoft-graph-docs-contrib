---
title: "keyCredentialConfiguration resource type"
description: "Key credential configuration complex type to configure key credential restriction, maxLifetime, and enforcement date"
author: "madansr7"
localization_priority: Normal
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# keyCredentialConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Key credential configuration object that contains properties to configure restrictions such as restricting lifetime of key secrets.

## Properties

| Property                            | Type                                                                               | Description                                                                                                                                                                                                                                                                                   |
| :---------------------------------- | :--------------------------------------------------------------------------------- | :-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| restrictionType                     | appKeyCredentialRestrictionType | The type of restriction being applied. Possible values are `asymmetricKeyLifetime`. Each value of restrictionType can be used only once per policy.                                                                                                                        |
| maxLifeTime                         | Duration                                                                           | Value that can be used as the maximum number for setting key expiration time in days, hours, minutes or seconds. For example, "P4DT12H30M5S" represents a duration of four days, twelve hours, thirty minutes, and five seconds. This property is required when restriction type is set to `keyLifetime`. |
| restrictForAppsCreatedAfterDateTime | DateTimeOffset                                                                     | Enforces the policy for an app created on or after the enforcement date. For existing applications, the enforcement date would be back dated. To apply to all applications, enforcement datetime would be null.                                                                               |

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.keyCredentialConfiguration"
}
-->

```json
{
  "@odata.type": "#microsoft.graph.keyCredentialConfiguration",
  "restrictionType": {
    "@odata.type": "microsoft.graph.appKeyCredentialRestrictionType"
  },
  "maxLifetime": "String (duration)",
  "restrictForAppsCreatedAfterDateTime": "DateTimeOffset"
}
```
