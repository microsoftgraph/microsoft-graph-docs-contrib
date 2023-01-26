---
title: "industryDataActivity resource type"
description: "Represents an abstract base type for all activities that are run by the underlying scheduler."
author: "mlafleur"
ms.localizationpriority: medium
ms.prod: "industry-data-etl"
doc_type: resourcePageType
---

# industryDataActivity resource type

Namespace: microsoft.graph.industryData

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an abstract base type for all activities that are run by the underlying scheduler.

Base type of [inboundFlow](../resources/industrydata-inboundflow.md).

## Properties

| Property        | Type            | Description                                                                                                                                                               |
| :-------------- | :-------------- | :------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| displayName     | String          | The name of the activity. Maximum supported length is 100 characters.                                                                                                                                                 |
| readinessStatus | microsoft.graph.industryData.readinessStatus | The state of the activity from creation through to ready to do work. The possible values are: `notReady`, `ready`, `failed`, `disabled`, `expired`, `unknownFutureValue`. |

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
