---
title: "detonationObservables resource type"
description: Detonation observables.
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# detonationObservables resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Detonation captures behavior details like exact events that took place during detonation, and observables that contain URLs, IPs, domains, and files that were found during detonation (and can either be problematic or benign). 

## Properties
|Property|Type|Description|
|:---|:---|:---|
|contactedIps|String collection|List of all contacted IPs in detonation.|
|contactedUrls|String collection|List of all urls found in detonation.|
|droppedfiles|String collection|List of all dropped files in detonation.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.detonationObservables"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.detonationObservables",
  "droppedfiles": [
    "String"
  ],
  "contactedIps": [
    "String"
  ],
  "contactedUrls": [
    "String"
  ]
}
```

