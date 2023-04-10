---
title: "inboundFlow resource type"
description: "An abstract base type for all flows that bring data into the canonical store in the Azure Data Lake."
author: "mlafleur"
ms.localizationpriority: medium
ms.prod: "industry-data-etl"
doc_type: resourcePageType
---

# inboundFlow resource type

Namespace: microsoft.graph.industryData

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

An abstract base type for all flows that bring data into the canonical store in the Azure Data Lake. An **inboundFlow** represents an activity that a service runs.

By default, the inbound flow activates twice (2x) daily. For more details, see [industryDataRun](industrydata-industrydatarun.md).

Inherits from [industryDataActivity](industrydata-industrydataactivity.md).

Base type of [inboundFileFlow](../resources/industrydata-inboundfileflow.md).

## Methods

| Method                                                          | Return type                                                                        | Description                                                                                    |
| :-------------------------------------------------------------- | :--------------------------------------------------------------------------------- | :--------------------------------------------------------------------------------------------- |
| [Create inboundFlow](../api/industrydata-inboundflow-post.md)   | [microsoft.graph.industryData.inboundFlow](industrydata-inboundflow.md)            | Create a new [inboundFlow](industrydata-inboundflow.md) object.                                |
| [List inboundFlows](../api/industrydata-inboundflow-list.md)    | [microsoft.graph.industryData.inboundFlow](industrydata-inboundflow.md) collection | Get a list of the [inboundFlow](industrydata-inboundflow.md) objects and their properties.     |
| [Get inboundFlow](../api/industrydata-inboundflow-get.md)       | [microsoft.graph.industryData.inboundFlow](industrydata-inboundflow.md)            | Read the properties and relationships of an [inboundFlow](industrydata-inboundflow.md) object. |
| [Update inboundFlow](../api/industrydata-inboundflow-update.md) | [microsoft.graph.industryData.inboundFlow](industrydata-inboundflow.md)            | Update the properties of an [inboundFlow](industrydata-inboundflow.md) object.                 |
| [Delete inboundFlow](../api/industrydata-inboundflow-delete.md) | None                                                                               | Delete an [inboundFlow](industrydata-inboundflow.md) object.                                   |

## Properties

| Property           | Type            | Description                                                                                                                                                                                                                                            |
| :----------------- | :-------------- | :----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| dataDomain         | microsoft.graph.industryData.inboundDomain   | The broad category of data that this flow imports. The possible values are: `educationRostering`, `unknownFutureValue`.                                                                                                                                |
| displayName        | String          | The name of the activity. Inherited from [industryDataActivity](industrydata-industrydataactivity.md).                                                                                                                                                 |
| effectiveDateTime  | DateTimeOffset  | The start of the time window when the flow is allowed to run. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.             |
| expirationDateTime | DateTimeOffset  | The end of the time window when the flow is allowed to run. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.               |
| readinessStatus    | microsoft.graph.industryData.readinessStatus | The state of the activity from creation through to ready to do work. Inherited from [industryDataActivity](industrydata-industrydataactivity.md). The possible values are: `notReady`, `ready`, `failed`, `disabled`, `expired`, `unknownFutureValue`. |

## Relationships

| Relationship  | Type                                                                 | Description                                                                              |
| :------------ | :------------------------------------------------------------------- | :--------------------------------------------------------------------------------------- |
| dataConnector | [microsoft.graph.industryData.industryDataConnector](industrydata-industrydataconnector.md)       | The data connector in the context of which this flow pulls in data from a source system. |
| year          | [microsoft.graph.industryData.yearTimePeriodDefinition](industrydata-yeartimeperioddefinition.md) | The year that the data brought in via this flow applies to.                              |

## JSON representation

The following is a JSON representation of the resource.

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
