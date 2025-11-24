---
title: "keyCredentialConfiguration resource type"
description: "Represents a key credential configuration object that contains properties to configure application certificate restrictions."
ms.localizationpriority: medium
author: "Jackson-Woods"
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
ms.date: 12/02/2024
---

# keyCredentialConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a key credential configuration object that contains properties to configure application certificate restriction.

## Methods

None.

## Properties

| Property                                    | Type                            | Description |
| :------------------------------------------ | :------------------------------ | :--------------------------------------------------------------------------------------------------------------------------------------- |
| certificateBasedApplicationConfigurationIds | String collection               | Collection of GUIDs that represent [certificateBasedApplicationConfiguration](../resources/certificatebasedapplicationconfiguration.md) that is allowed as root and intermediate certificate authorities.|
| maxLifetime                                 | Duration                        | String value that indicates the maximum lifetime for key expiration, defined as an ISO 8601 duration. For example, `P4DT12H30M5S` represents four days, 12 hours, 30 minutes, and five seconds. This property is required when **restrictionType** is set to `keyLifetime`.|
| restrictForAppsCreatedAfterDateTime         | DateTimeOffset                  | Specifies the date from which the policy restriction applies to newly created applications. For existing applications, the enforcement date can be retroactively applied.|
| restrictionType                             | appKeyCredentialRestrictionType | A unique identifier key for **keyCredentialConfiguration**. This value also represents the type of restriction being applied. Possible values are `asymmetricKeyLifetime`, and `unknownFutureValue`. Each value of restrictionType can be used only once per policy.|
| state                                       | appManagementRestrictionState   | Indicates whether the restriction is evaluated. The possible values are: `enabled`, `disabled`, `unknownFutureValue`. If `enabled`, the restriction is evaluated. If `disabled`, the restriction isn't evaluated or enforced.|
| excludeActors                | [appManagementPolicyActorExemptions](appmanagementpolicyactorexemptions.md)                         | Collection of custom security attribute exemptions. If an actor user or service principal has the custom security attribute defined in this section, they're exempted from the restriction.  This means that calls the user or service principal makes to create or update apps are exempt from this policy enforcement. |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "keyProperty": "restrictionType",
  "@odata.type": "microsoft.graph.keyCredentialConfiguration",
  "openType": false
}
-->

```json
{
  "@odata.type": "#microsoft.graph.keyCredentialConfiguration",
  "restrictionType": "String (identifier)",
  "state": "String",
  "restrictForAppsCreatedAfterDateTime": "String (DateTime)",
  "maxLifetime": "String (duration)",
  "certificateBasedApplicationConfigurationIds": [
    "String (Guid)"
  ],
  "excludeActors": {
    "@odata.type": "microsoft.graph.appManagementPolicyActorExemptions"
  }
}
```
