---
title: "alertTemplate resource type"
description: "Describes the alert that will be generated following a detection"
author: "mmekler"
ms.localizationpriority: medium
ROBOTS: NOINDEX
ms.prod: "security"
doc_type: resourcePageType
---

# alertTemplate resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Describes the alert that will be generated following a detection by a [Custom Detection Rule](../resources/security-detectionrule.md).

## Properties

| Property           | Type                                                                                        | Description                                                                                             |
|--------------------|---------------------------------------------------------------------------------------------|---------------------------------------------------------------------------------------------------------|
| title              | String                                                                                      | Name of the alert triggered by the custom detection rule.                                               |
| description        | String                                                                                      | Description of the alert triggered by the custom detection rule.                                        |
| severity           | [microsoft.graph.alertSeverity](../resources/enums.md#alertseverity-values)                 | Severity assigned to the alert triggered by the custom detection rule.                                  |
| category           | String                                                                                      | Category assigned to the alert triggered by the custom detection rule.                                  |
| mitreTechniques    | String collection                                                                           | MITRE technique assigned to the alert triggered by the custom detection rule.                           |
| recommendedActions | String                                                                                      | Recommended actions to mitigate the threat related to the alert triggered by the custom detection rule. |
| impactedAssets     | [microsoft.graph.security.impactedAsset](../resources/security-impactedasset.md) collection | Which asset or assets were impacted based on the alert triggered by the custom detection rule.          |


## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.alertTemplate"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.alertTemplate",
  "title": "String",
  "description": "String",
  "severity": "String",
  "category": "String",
  "recommendedActions": "String",
  "mitreTechniques": [
    "String"
  ],
  "impactedAssets": [
    {
      "@odata.type": "microsoft.graph.security.impactedUserAsset"
    }
  ]
}
```

