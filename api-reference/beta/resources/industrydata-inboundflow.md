---
title: "inboundFlow resource type"
description: "Represents a base type for all flows that bring data into the canonical store in the Azure Data Lake."
author: "mlafleur"
ms.localizationpriority: medium
ms.subservice: "industry-data-etl"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# inboundFlow resource type

Namespace: microsoft.graph.industryData

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a base type for all flows that bring data into the canonical store in the Azure Data Lake. An **inboundFlow** represents an activity that a service runs. This is an abstract type.

By default, the inbound flow activates twice (2x) daily. For more details, see [industryDataRun](industrydata-industrydatarun.md).

Inherits from [industryDataActivity](industrydata-industrydataactivity.md).

Base type of [inboundFileFlow](../resources/industrydata-inboundfileflow.md) and [inboundApiFlow](../resources/industrydata-inboundapiflow.md).

## Methods

| Method                                                          | Return type                                                                        | Description                                                                                    |
| :-------------------------------------------------------------- | :--------------------------------------------------------------------------------- | :--------------------------------------------------------------------------------------------- |
| [List](../api/industrydata-inboundflow-list.md)     | [microsoft.graph.industryData.inboundFlow](industrydata-inboundflow.md) collection | Get a list of the [inboundFlow](industrydata-inboundflow.md) objects and their properties.     |
| [Get](../api/industrydata-inboundflow-get.md)       | [microsoft.graph.industryData.inboundFlow](industrydata-inboundflow.md)            | Read the properties and relationships of an [inboundFlow](industrydata-inboundflow.md) object. |
| [Delete](../api/industrydata-inboundflow-delete.md) | None                                                                               | Delete an [inboundFlow](industrydata-inboundflow.md) object.                                   |

## Properties

| Property           | Type            | Description                                                                                                                                                                                                                                            |
| :----------------- | :-------------- | :----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| dataDomain         | microsoft.graph.industryData.inboundDomain   | The category of data that this flow imports. The possible values are: `educationRostering`, `unknownFutureValue`.                                                                                                                                |
| displayName        | String          | The name of the activity. Inherited from [industryDataActivity](industrydata-industrydataactivity.md).                                                                                                                                                 |
| effectiveDateTime  | DateTimeOffset  | The start of the time window when the flow is allowed to run. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.             |
| expirationDateTime | DateTimeOffset  | The end of the time window when the flow is allowed to run. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.               |
| readinessStatus    | microsoft.graph.industryData.readinessStatus | The state of the activity from its creation through when it is ready to do work. Inherited from [industryDataActivity](industrydata-industrydataactivity.md). The possible values are: `notReady`, `ready`, `failed`, `disabled`, `expired`, `unknownFutureValue`. |

## Relationships

| Relationship  | Type                                                                 | Description                                                                              |
| :------------ | :------------------------------------------------------------------- | :--------------------------------------------------------------------------------------- |
| dataConnector | [microsoft.graph.industryData.industryDataConnector](industrydata-industrydataconnector.md)       | The data connector to the source system from where this flow gets its data. |
| year          | [microsoft.graph.industryData.yearTimePeriodDefinition](industrydata-yeartimeperioddefinition.md) | The year associated to the data that this flow brings in.                              |

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.industryData.inboundFlow",
  "baseType": "microsoft.graph.industryData.industryDataActivity",
  "openType": false
}
-->

```json
{
  "@odata.type": "#microsoft.graph.industryData.inboundFlow",
  "dataDomain": "String",
  "displayName": "String",
  "effectiveDateTime": "String (timestamp)",
  "expirationDateTime": "String (timestamp)",
  "readinessStatus": "String"
}
```
