---
title: "frontlineCloudPcDetail resource type"
description: "The current availability and other detail of a frontline assigned Cloud PC."
author: "AshleyYangSZ"
ms.date: 10/16/2025
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: resourcePageType
---

# frontlineCloudPcDetail resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The current detail such as availability of a frontline assigned Cloud PC.


## Properties
|Property|Type|Description|
|:---|:---|:---|
|frontlineCloudPcAvailability|[frontlineCloudPcAvailability](../resources/cloudpc.md#frontlinecloudpcavailability-values)|The current availability of a frontline assigned Cloud PC. Possible values: `notApplicable`, `available`,`notAvailable` and `unknownFutureValue`. Default value is `notApplicable`. Read Only. |

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.frontlineCloudPcDetail"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.frontlineCloudPcDetail",
  "frontlineCloudPcAvailability": "String"
}
```

