---
title: "industryDataActivity resource type"
description: "Base class for all processes that the underlying scheduler executes."
author: "mlafleur"
ms.localizationpriority: medium
ms.prod: "industrydata"
doc_type: resourcePageType
---

# industryDataActivity resource type

Namespace: microsoft.graph.industryData

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Base class for all processes that the underlying scheduler executes.
This is an abstract type.

## Properties

| Property        | Type            | Description                                                                                                                                                             |
| :-------------- | :-------------- | :---------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| displayName     | String          | Name of the process.                                                                                                                                                    |
| readinessStatus | readinessStatus | The state of the process from creation through to ready to do work.The possible values are: `notReady`, `ready`, `failed`, `disabled`, `expired`, `unknownFutureValue`. |

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.industryData.industryDataActivity",
  "openType": false
}
-->

```json
{
  "@odata.type": "#microsoft.graph.industryData.industryDataActivity",
  "displayName": "String",
  "readinessStatus": "String"
}
```
