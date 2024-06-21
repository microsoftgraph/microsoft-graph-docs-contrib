---
title: "keyCredentialConfiguration resource type"
description: "Represents a key credential configuration object that contains properties to configure restrictions for application certificates."
ms.localizationpriority: medium
author: "madansr7"
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# keyCredentialConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a key credential configuration object that contains properties to configure restrictions for application certificates.

## Properties

| Property                                    | Type                            | Description |
| :------------------------------------------ | :------------------------------ | :--------------------------------------------------------------------------------------------------------------------------------------- |
| certificateBasedApplicationConfigurationIds | Collection (Guid)               | Collection of Guids representing [certificateBasedApplicationConfiguration](../resources/certificatebasedapplicationconfiguration.md) that are allowed as root and intermediate certificate authorities.|
| maxLifetime                                 | Duration                        | String value which indicates the maximum lifetime for key expiration, defined as an ISO 8601 duration. For example, `P4DT12H30M5S` represents four days, twelve hours, thirty minutes, and five seconds. This property is required when **restrictionType** is set to `keyLifetime`.|
| restrictForAppsCreatedAfterDateTime         | DateTimeOffset                  | Specifies the date from which the policy restriction applies to newly created applications. For existing applications, the enforcement date can be retroactively applied.|
| restrictionType                             | appKeyCredentialRestrictionType | The type of restriction being applied. Possible values are `asymmetricKeyLifetime`, and `unknownFutureValue`. Each value of restrictionType can be used only once per policy.|
| state                                       | appManagementRestrictionState   | String value that indicates if the restriction is evaluated. The possible values are: `enabled`, `disabled`, and `unknownFutureValue`. If `enabled`, the restriction is evaluated. If `disabled`, the restriction is not evaluated or enforced.|

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
  "state": {
    "@odata.type": "microsoft.graph.appManagementRestrictionState"
  },
  "restrictForAppsCreatedAfterDateTime": "String (DateTime)",
  "maxLifetime": "String (ISO 8601 duration)",
  "certificateBasedApplicationConfigurationIds": [
    "String (Guid)"
  ]
}
```