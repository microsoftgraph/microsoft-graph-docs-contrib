---
title: "cloudPcPoolAutopilotConfiguration resource type"
description: "Represents the autopilot configuration for a Cloud PC pool. When set on the pool's capability configuration, provisioned Cloud PCs are enrolled using the specified device preparation profile."
author: "yityu"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: resourcePageType
ms.date: 03/23/2026
---

# cloudPcPoolAutopilotConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the autopilot configuration for a Cloud PC pool. When set on the pool's capability configuration, provisioned Cloud PCs are enrolled using the specified device preparation profile.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|applicationTimeoutInMinutes|Int32|The timeout in minutes for application installation during autopilot provisioning.|
|devicePreparationProfileId|String|The identifier of the device preparation profile used for autopilot enrollment.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.cloudPcPoolAutopilotConfiguration"
} -->
``` json
{
  "@odata.type": "#microsoft.graph.cloudPcPoolAutopilotConfiguration",
  "applicationTimeoutInMinutes": "Int32",
  "devicePreparationProfileId": "String"
}
```
