---
title: "inboundFileFlow resource type"
description: "Represents a flow to import data via a set of files into the canonical store."
author: "mlafleur"
ms.localizationpriority: medium
ms.subservice: "industry-data-etl"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# inboundFileFlow resource type

Namespace: microsoft.graph.industryData

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a flow to import data via a set of files into the canonical store.

Inherits from [inboundFlow](industrydata-inboundflow.md).

## Methods

| Method                                                                  | Return type                                                                                | Description                                                                                            |
| :---------------------------------------------------------------------- | :----------------------------------------------------------------------------------------- | :----------------------------------------------------------------------------------------------------- |
| [Create](../api/industrydata-inboundfileflow-post.md)   | [microsoft.graph.industryData.inboundFileFlow](industrydata-inboundflow.md)                    | Create a new **inboundFileFlow** object.                                                               |
| [Update](../api/industrydata-inboundfileflow-update.md) | [microsoft.graph.industryData.inboundFileFlow](industrydata-inboundfileflow.md)            | Update the properties of an **inboundFileFlow** object.                 |

## Properties

| Property           | Type            | Description                                                                                                                                                                                                                                                                                           |
| :----------------- | :-------------- | :---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| dataDomain         | microsoft.graph.industryData.inboundDomain   | The category of data that this flow imports. Inherited from [inboundFlow](industrydata-inboundflow.md). The possible values are: `educationRostering`, `unknownFutureValue`.                                                                                                                    |
| displayName        | String          | The name of the activity. Inherited from [industryDataActivity](industrydata-industrydataactivity.md).                                                                                                                                                                                                |
| effectiveDateTime  | DateTimeOffset  | The start of the time window when the flow is allowed to run. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Inherited from [inboundFlow](industrydata-inboundflow.md). |
| expirationDateTime | DateTimeOffset  | The end of the time window when the flow is allowed to run. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Inherited from [inboundFlow](industrydata-inboundflow.md).   |
| readinessStatus    | microsoft.graph.industryData.readinessStatus | The state of the activity from its creation through when it is ready to do work. Inherited from [industryDataActivity](industrydata-industrydataactivity.md). The possible values are: `notReady`, `ready`, `failed`, `disabled`, `expired`, `unknownFutureValue`.                                                |

## Relationships

| Relationship  | Type                                                                 | Description                                                                                                                                         |
| :------------ | :------------------------------------------------------------------- | :-------------------------------------------------------------------------------------------------------------------------------------------------- |
| dataConnector | [microsoft.graph.industryData.industryDataConnector](industrydata-industrydataconnector.md)       | The data connector to the source system from where this flow gets its data. Inherited from [inboundFlow](industrydata-inboundflow.md). |
| year          | [microsoft.graph.industryData.yearTimePeriodDefinition](industrydata-yeartimeperioddefinition.md) | The year associated to the data that this flow brings in. Inherited from [inboundFlow](industrydata-inboundflow.md).                              |

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.industryData.inboundFileFlow",
  "baseType": "microsoft.graph.industryData.inboundFlow",
  "openType": false
}
-->

```json
{
  "@odata.type": "#microsoft.graph.industryData.inboundFileFlow",
  "dataDomain": "String",
  "displayName": "String",
  "effectiveDateTime": "String (timestamp)",
  "expirationDateTime": "String (timestamp)",
  "readinessStatus": "String"
}
```
