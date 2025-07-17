---
title: printerBase resource type
description: Represents the base type for printer and printer share.
author: braedenp-msft
ms.localizationpriority: medium
ms.subservice: universal-print
doc_type: resourcePageType
ms.date: 08/23/2024
---
# printerBase resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the base type for the [printer](printer.md) and [printerShare](printerShare.md) entity types. Inherits from [printerBase](./printerbase.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|capabilities|[printerCapabilities](printercapabilities.md)|The capabilities of the printer/printerShare.|
|defaults|[printerDefaults](printerdefaults.md)|The default print settings of printer/printerShare.|
|displayName|String|The name of the printer/printerShare.|
|id|String|The identifier.|
|isAcceptingJobs|Boolean|Specifies whether the printer/printerShare is currently accepting new print jobs.|
|location|[printerLocation](printerlocation.md)|The physical and/or organizational location of the printer/printerShare.|
|manufacturer|String|The manufacturer of the printer/printerShare.|
|model|String|The model name of the printer/printerShare.|
|status|[printerStatus](printerstatus.md)|The processing status of the printer/printerShare, including any errors.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|jobs|[printJob](printjob.md) collection|The list of jobs that are queued for printing by the printer/printerShare.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.printerBase",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.printerBase",
  "id": "String (identifier)",
  "displayName": "String",
  "manufacturer": "String",
  "model": "String",
  "isAcceptingJobs": "Boolean",
  "defaults": {
    "@odata.type": "microsoft.graph.printerDefaults"
  },
  "location": {
    "@odata.type": "microsoft.graph.printerLocation"
  },
  "capabilities": {
    "@odata.type": "microsoft.graph.printerCapabilities"
  },
  "status": {
    "@odata.type": "microsoft.graph.printerStatus"
  }
}
```

