---
title: "keyCredentialConfiguration resource type"
description: "Represents a key credential configuration object that contains properties to configure application certificate restrictions."
ms.localizationpriority: medium
author: "Jackson-Woods"
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
ms.date: 09/13/2024
---

# keyCredentialConfiguration resource type

Namespace: microsoft.graph

Represents a key credential configuration object that contains properties to configure application certificate restriction.

## Properties

| Property                                    | Type                            | Description |
| :------------------------------------------ | :------------------------------ | :--------------------------------------------------------------------------------------------------------------------------------------- |
| maxLifetime                                 | Duration                        | String value that indicates the maximum lifetime for key expiration, defined as an ISO 8601 duration. For example, `P4DT12H30M5S` represents four days, 12 hours, 30 minutes, and five seconds. This property is required when **restrictionType** is set to `keyLifetime`.|
| restrictForAppsCreatedAfterDateTime         | DateTimeOffset                  | Specifies the date from which the policy restriction applies to newly created applications. For existing applications, the enforcement date can be retroactively applied.|
| restrictionType                             | appKeyCredentialRestrictionType | The type of restriction being applied. Possible values are `asymmetricKeyLifetime`, and `unknownFutureValue`. Each value of restrictionType can be used only once per policy.|
| state                                       | appManagementRestrictionState   | Indicates whether the restriction is evaluated. The possible values are: `enabled`, `disabled`, `unknownFutureValue`. If `enabled`, the restriction is evaluated. If `disabled`, the restriction isn't evaluated or enforced.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.keyCredentialConfiguration"
}
-->

```json
{
  "@odata.type": "#microsoft.graph.keyCredentialConfiguration",
  "restrictionType": "String",
  "state": "String",
  "restrictForAppsCreatedAfterDateTime": "String (DateTime)",
  "maxLifetime": "String (duration)"
}
```
