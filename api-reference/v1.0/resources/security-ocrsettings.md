---
title: "ocrSettings resource type"
description: "Represents the OCR settings for an eDiscovery case."
author: "SeunginLyu"
ms.localizationpriority: medium
ms.subservice: "ediscovery"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# ocrSettings resource type

Namespace: microsoft.graph.security



Represents the Optical Character Recognition (OCR) settings for an eDiscovery case.


## Properties
|Property|Type|Description|
|:---|:---|:---|
|isEnabled|Boolean|Indicates whether or not OCR is enabled for the case.|
|maxImageSize|Int32|Maximum image size that will be processed in KB).|
|timeout|Duration|The timeout duration for the OCR engine. A longer timeout might increase success of OCR, but might add to the total processing time.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.ocrSettings"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.ocrSettings",
  "isEnabled": "Boolean",
  "maxImageSize": "Integer",
  "timeout": "String (duration)"
}
```

