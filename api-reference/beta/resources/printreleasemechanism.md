---
title: printReleaseMechanism resource type
description: Represents the release mechanism for print jobs.
author: jasli-985
ms.localizationpriority: medium
ms.prod: cloud-printing
doc_type: resourcePageType
---

# printReleaseMechanism resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the processing status of the printer, including any errors.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|releaseType|printReleaseType|The print job release type of the printer. The possible values are: `direct`, `qrCode`, `unknownFutureValue`.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.printReleaseMechanism"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.printReleaseMechanism",
  "releaseType": "String"
}
```

