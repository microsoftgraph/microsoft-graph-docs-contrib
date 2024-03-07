---
title: "printReleaseMechanism resource type"
description: "Represents the print job release mechanism."
author: jasli-985
ms.localizationpriority: medium
ms.subservice: universal-print
doc_type: resourcePageType
---

# printReleaseMechanism resource type

Namespace: microsoft.graph

Represents the print job release mechanism.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|releaseType|printReleaseType|The print job release type. The possible values are: `direct`, `qrCode`, and `unknownFutureValue`.|

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
