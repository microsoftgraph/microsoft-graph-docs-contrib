---
title: "frontlineCloudPcDetail resource type"
description: "Represents current details, such as the availability of a frontline-assigned Cloud PC."
author: "AshleyYangSZ"
ms.date: 10/14/2025
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: resourcePageType
---

# frontlineCloudPcDetail resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents current details, such as the availability of a frontline-assigned Cloud PC.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|frontlineCloudPcAvailability|[frontlineCloudPcAvailability](../resources/frontlinecloudpcdetail.md#frontlinecloudpcavailability-values)|The current availability of a frontline assigned Cloud PC. Possible values are: `notApplicable`, `available`, `notAvailable`, `unknownFutureValue`. The default value is `notApplicable`. Read-only. |

### frontlineCloudPcAvailability values
|Member|Description|
|:---|:---|
|notApplicable|Default. The Cloud PC isn't a frontline-assigned type.|
|available|The current frontline Cloud PC is available and the user is able to connect to it.|
|notAvailable|The frontline Cloud PC is currently not available and the associated user isn't able to connect to it.|
|unknownFutureValue|Evolvable enumeration sentinel value. Don't use.|

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

