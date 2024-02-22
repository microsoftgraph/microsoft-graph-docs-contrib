---
title: "cloudPcWindowsSetting resource type"
description: "Represents specific Windows settings to configure while creating Cloud PCs for a provisioning policy."
author: "RuiHou105"
ms.localizationpriority: medium
ms.prod: "cloud-pc"
doc_type: resourcePageType
---

# cloudPcWindowsSetting resource type

Namespace: microsoft.graph

Represents specific Windows settings to configure while creating Cloud PCs for a provisioning policy.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|locale|String|The Windows language/region tag to use for language pack configuration and localization of the Cloud PC. The default value is `en-US`, which corresponds to English (United States).|

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.cloudPcWindowsSetting"
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.cloudPcWindowsSetting",
  "language": "String"
}
```
