---
title: "cloudPcNotificationSetting resource type (deprecated)"
description: "Represents specific settings of notification prompt."
author: "ChyouChyou"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: resourcePageType
ms.date: 10/09/2024
toc.title: "Cloud PC notification setting (deprecated)"
ROBOTS: NOINDEX
---

# cloudPcNotificationSetting resource type (deprecated)

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

> [!CAUTION]
> The **cloudPcNotificationSetting** resource is deprecated and will stop returning data on July 14, 2026.

Represents specific settings of notification prompt.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|restartPromptsDisabled|Boolean|If `true`, doesn't prompt the user to restart the Cloud PC. If `false`, prompts the user to restart Cloud PC. The default value is `false`.|

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
