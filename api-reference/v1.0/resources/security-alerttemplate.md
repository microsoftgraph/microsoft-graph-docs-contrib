---
title: "alertTemplate resource type"
description: "Describes the alert that is generated in response to a detection by a custom detection rule."
author: "mmekler"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
ms.date: 08/25/2026
---

# alertTemplate resource type

Namespace: microsoft.graph.security

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
  "customDetails": {
    "@odata.type": "microsoft.graph.security.alertCustomDetails"
  },
  "description": "String",
  "entityMappings": {
    "@odata.type": "microsoft.graph.security.entityMappingConfiguration"
  },
  "recommendedActions": "String",
  "severity": "String",
  "tactics": [
    {
      "@odata.type": "microsoft.graph.security.mitreTactic"
    }
  ],
  "title": "String"
}
```
