---
title: "alertTemplate resource type"
description: "Describes the alert that is generated in response to a detection by a custom detection rule."
author: "mmekler"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
ms.date: 06/17/2026
---

# alertTemplate resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Describes the alert that is generated in response to a detection by a [custom detection rule](../resources/security-detectionrule.md), including the alert metadata, recommended actions, custom details, MITRE tactics, and entity mappings.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|customDetails|[microsoft.graph.security.alertCustomDetails](../resources/security-alertcustomdetails.md)|Custom key-value detail pairs to include in the alert. Each value identifies the detection query column that supplies the corresponding custom detail.|
|description|String|Description of the alert triggered by the custom detection rule.|
|entityMappings|[microsoft.graph.security.entityMappingConfiguration](../resources/security-entitymappingconfiguration.md)|Defines how detection query columns map to the entities that are attached to the resulting alert.|
|recommendedActions|String|Recommended actions to mitigate the threat related to the alert triggered by the custom detection rule.|
|severity|[microsoft.graph.security.alertSeverity](../resources/security-alert.md#alertseverity-values)|Severity assigned to the alert triggered by the custom detection rule. The possible values are: `informational`, `low`, `medium`, `high`.|
|tactics|[microsoft.graph.security.mitreTactic](../resources/security-mitretactic.md) collection|The MITRE ATT&CK tactics framing for this alert.|
|title|String|Name of the alert triggered by the custom detection rule.|
|category (deprecated)|String|Indicates the category assigned to the alert triggered by the custom detection rule. **Deprecated.** Use **tactics** instead. This property will be removed from this resource on 2026-10-01.|
|impactedAssets (deprecated)|[microsoft.graph.security.impactedAsset](../resources/security-impactedasset.md) collection|Indicates the impacted assets for the alert triggered by the custom detection rule. **Deprecated.** Use **entityMappings** instead. This property will be removed from this resource on 2026-10-01.|
|mitreTechniques (deprecated)|String collection|Indicates the MITRE techniques assigned to the alert triggered by the custom detection rule. **Deprecated.** Use **tactics** instead. This property will be removed from this resource on 2026-10-01.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
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
  "entityMappings":  {
    "@odata.type": "microsoft.graph.security.entityMappingConfiguration"
  },
  "mitreTechniques": [
    "String"
  ],
  "tactics": [
    {
      "@odata.type": "microsoft.graph.security.mitreTactic"
    }
  ],
  "impactedAssets": [
    {
      "@odata.type": "microsoft.graph.security.impactedUserAsset"
    }
  ],
  "customDetails": {
    "@odata.type": "microsoft.graph.security.alertCustomDetails"
  }
}
```
