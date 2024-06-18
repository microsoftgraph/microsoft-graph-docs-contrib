---
title: "passwordCredentialConfiguration resource type"
description: "Password credential configuration complex type to configure password credential restriction, maxLifetime, and enforcement date"
author: "madansr7"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# passwordCredentialConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Password credential configuration object that contains properties to configure restrictions such as blocking or restricting lifetimes of password secrets.

## Properties

| Property                                    | Type                            | Description |
| :------------------------------------------ | :------------------------------ | :--------------------------------------------------------------------------------------------------------------------------------------- |
| maxLifetime                                 | Duration                        | String value indicating as maximum lifetime for password expiration, defined as an ISO 8601 duration. For example, `P4DT12H30M5S` represents a duration of four days, twelve hours, thirty minutes, and five seconds. This property is required when **restrictionType** is set to `passwordLifetime`.|
| restrictForAppsCreatedAfterDateTime         | DateTimeOffset                  | Datetime timestamp indicating the date on or after which the apps are created that the policy restriction should apply to. For existing applications, the enforcement date can be back dated.|
| restrictionType                             | appCredentialRestrictionType    | The type of restriction being applied. The possible values are: `passwordAddition`, `passwordLifetime`, `symmetricKeyAddition`, `symmetricKeyLifetime`,`customPasswordAddition`. Each value of restrictionType can be used only once per policy.|
| state                                       | appManagementRestrictionState   | String value indicating if the restriction will be evaluated. The possible values are: `enabled`, `disabled`. If `enabled`, the restriction will be evaluated. If `disabled`, the restriction will not be evaluated and so will not be enforced.|

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
  "state": {
    "@odata.type": "microsoft.graph.appManagementRestrictionState"
  },
  "restrictForAppsCreatedAfterDateTime": "String (DateTime)",
  "maxLifetime": "String (ISO 8601 duration)"
}
```
