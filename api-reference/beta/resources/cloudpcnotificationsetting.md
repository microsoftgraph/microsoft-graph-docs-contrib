---
title: "cloudPcNotificationSetting resource type"
description: "Represents specific settings of notification prompt."
author: "ChyouChyou"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: resourcePageType
---

# cloudPcNotificationSetting resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the settings of a point-in-time restore of a Cloud PC.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|restartPromptsDisabled|Boolean|If `true`, the prompts to restart Cloud PC will be hidden. If `false`, the user will receive prompts to restart Cloud PC. The default value is `false`.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.cloudPcNotificationSetting"
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.cloudPcNotificationSetting",
  "restartPromptsDisabled": "Boolean"
}
```
