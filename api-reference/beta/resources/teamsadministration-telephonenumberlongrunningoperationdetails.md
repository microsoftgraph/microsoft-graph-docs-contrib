---
title: "telephoneNumberLongRunningOperationDetails resource type"
description: "Represents the telephone number asynchronous operation details."
author: "pavellatif"
ms.date: 07/23/2025
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: resourcePageType
---

# telephoneNumberLongRunningOperationDetails resource type

Namespace: microsoft.graph.teamsAdministration

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the telephone number asynchronous operation details.


## Properties
|Property|Type|Description|
|:---|:---|:---|
|resourceLocation|String|Location of the asynchronous operation. It includes the operation identifier.|
|status|longRunningOperationStatus|status of the asynchronous operation. The possible values are: `notStarted`, `running`, `succeeded`, `failed`, `unknownFutureValue`.|
|statusDetail|String|Indicates the asynchronous operation details.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.teamsAdministration.telephoneNumberLongRunningOperationDetails"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.teamsAdministration.telephoneNumberLongRunningOperationDetails",
  "resourceLocation": "String",
  "status": "String",
  "statusDetail": "String"
}
```

