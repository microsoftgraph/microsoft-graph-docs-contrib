---
title: "audienceRestriction resource type"
description: "Represents a restriction to block apps based on their signInAudience value."
author: "madansr7"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
ms.date: 02/04/2025
---

# audienceRestriction resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a restriction to block apps based on their signInAudience value.

## Properties

| Property                            | Type                                                                                     | Description                                                                                                                                                                                                                          |
| :---------------------------------- | :--------------------------------------------------------------------------------------- | :----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| excludeActors                | [appManagementPolicyActorExemptions](appmanagementpolicyactorexemptions.md)                         | Collection of custom security attribute exemptions. If an actor user or service principal has the custom security attribute defined in this section, they're exempted from the restriction.  This means that calls the user or service principal makes to create or update apps are exempt from this policy enforcement. |
| restrictForAppsCreatedAfterDateTime | DateTimeOffset                                                                           | Specifies the date from which the policy restriction applies to newly created applications. For existing applications, the enforcement date can be retroactively applied.                                                            |
| state                               | appManagementRestrictionState                                                            | String value that indicates if the restriction is evaluated. The possible values are: enabled, disabled, and unknownFutureValue. If enabled, the restriction is evaluated. If disabled, the restriction isn't evaluated or enforced. |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.audienceRestriction"
}
-->

```json
{
  "@odata.type": "#microsoft.graph.audienceRestriction",
  "state": "String",
  "restrictForAppsCreatedAfterDateTime": "String (timestamp)",
  "excludeActors": {
    "@odata.type": "microsoft.graph.appManagementPolicyActorExemptions"
  }
}
```
