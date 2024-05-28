---
title: "cloudPcWindowsSetting resource type"
description: "Represents a specific Windows setting to configure during the creation of Cloud PCs for a provisioning policy."
author: "RuiHou105"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: resourcePageType
---

# cloudPcWindowsSetting resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a specific Windows setting to configure during the creation of Cloud PCs for a provisioning policy.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|locale|String|The Windows language or region tag to use for language pack configuration and localization of the Cloud PC. The default value is `en-US`, which corresponds to English (United States).|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.cloudPcWindowsSetting"
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.cloudPcWindowsSetting",
  "locale": "String"
}
```
