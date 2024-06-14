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
| restrictionType                             | appKeyCredentialRestrictionType | The type of restriction being applied. Possible values are `asymmetricKeyLifetime`. Each value of restrictionType can be used only once per policy.|
| state                                       | appManagementRestrictionState   | String value indicating the how the restriction is evaluated. The possible values are: `enabled`, `disabled`. If `enabled`, the restriction will be evaluated. If `disabled`, the restriction will not be evaluated.|
| restrictForAppsCreatedAfterDateTime         | DateTimeOffset                  | Datetime timestamp indicating the date on or after which the apps are created that the policy restriction should apply to. For existing applications, the enforcement date can be back dated.|
| maxLifetime                                 | Duration                        | String value indicating as maximum lifetime for key expiration, defined as an ISO 8601 duration. For example, `P4DT12H30M5S` represents a duration of four days, twelve hours, thirty minutes, and five seconds. This property is required when **restrictionType** is set to `keyLifetime`.|
| certificateBasedApplicationConfigurationIds | Collection (Guid)               | Collection of Guids that point to the [certificateBasedApplicationConfiguration](../resources/certificatebasedapplicationconfiguration.md) that contains the collection of allowed root and intermediate certificate authorities.|

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
    "String"
  ]
}
```