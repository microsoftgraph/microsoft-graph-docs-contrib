---
title: "monitoringSettings resource type"
description: "Settings controlling automated monitoring and response in a deployment."
author: "andredm7"
ms.localizationpriority: medium
ms.subservice: windows-autopatch
doc_type: resourcePageType
ms.date: 01/27/2026
---

# monitoringSettings resource type

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Settings controlling automated monitoring and response in a deployment.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|monitoringRules|[microsoft.graph.windowsUpdates.monitoringRule](../resources/windowsupdates-monitoringrule.md) collection|Specifies the rules through which monitoring signals can trigger actions on the deployment. Rules are combined using "or."|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.windowsUpdates.monitoringSettings"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsUpdates.monitoringSettings",
  "monitoringRules": [
    {
      "@odata.type": "microsoft.graph.windowsUpdates.monitoringRule"
    }
  ]
}
```

