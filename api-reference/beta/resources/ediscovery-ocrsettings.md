---
title: "ocrSettings resource type"
description: "OCR settings for an eDiscovery case"
author: "mahage-msft"
ms.localizationpriority: medium
ms.subservice: "ediscovery"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# ocrSettings resource type

Namespace: microsoft.graph.ediscovery

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

[!INCLUDE [ediscovery-deprecation](../includes/ediscovery-subnamespace-deprecation.md)]

The OCR (Optical Character Recognition) settings for the eDiscovery case.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|isEnabled|Boolean|Indicates whether or not OCR is enabled for the case.|
|maxImageSize|Int32|Maximum image size that will be processed in KB).|
|timeout|Duration|The timeout duration for the OCR engine. A longer timeout may increase success of OCR, but may add to the total processing time.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.ediscovery.ocrSettings"
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.ediscovery.ocrSettings",
  "isEnabled": "Boolean",
  "maxImageSize": "Integer",
  "timeout": "String (duration)"
}
```
