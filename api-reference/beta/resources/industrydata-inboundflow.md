---
title: "inboundFlow resource type"
description: "Represents an abstract base type for all flows that bring data into the canonical store in the Azure Data Lake."
author: "mlafleur"
ms.localizationpriority: medium
ms.prod: "industrydata"
doc_type: resourcePageType
---

# inboundFlow resource type

Namespace: microsoft.graph.industryData

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an abstract base type for all flows that bring data into the canonical store in the Azure Data Lake.

Inherits from [industryDataActivity](../resources/industrydata-industrydataactivity.md).

A **industryDataInboundFlow** represents an activity that gets executed by the service. The `dataDomain` property defines the type of data being imported and is used determine the common data model format it will be stored in.

## Prerequisites

You will need to have **sourceSystemDefinition**, **dataConnector**, and **yearTimePeriodDefinition**.

- **[sourceSystemDefinition](../api/industrydata-industrydataroot-post-sourcesystems.md)**
- **[dataConnector](../api/industrydata-industrydataroot-post-dataconnectors.md)**
- **[yearTimePeriodDefinition](../api/industrydata-industrydataroot-post-years.md)**

By default, your Inbound Flow will activate twice (2x) daily, see [IndustryDataRun](industrydata-industrydatarun.md).

## Methods

| Method                                                                            | Return type                                                                                     | Description                                                                                                 |
| :-------------------------------------------------------------------------------- | :---------------------------------------------------------------------------------------------- | :---------------------------------------------------------------------------------------------------------- |
| [List inboundFlows](../api/industrydata-industrydataroot-list-inboundflows.md)    | [microsoft.graph.industryData.inboundFlow](../resources/industrydata-inboundflow.md) collection | Get a list of the [inboundFlow](../resources/industrydata-inboundflow.md) objects and their properties.     |
| [Create inboundFlow](../api/industrydata-industrydataroot-post-inboundflows.md)   | [microsoft.graph.industryData.inboundFlow](../resources/industrydata-inboundflow.md)            | Create a new [inboundFlow](../resources/industrydata-inboundflow.md) object.                                |
| [Get inboundFlow](../api/industrydata-inboundflow-get.md)                         | [microsoft.graph.industryData.inboundFlow](../resources/industrydata-inboundflow.md)            | Read the properties and relationships of an [inboundFlow](../resources/industrydata-inboundflow.md) object. |
| [Update inboundFlow](../api/industrydata-inboundflow-update.md)                   | [microsoft.graph.industryData.inboundFlow](../resources/industrydata-inboundflow.md)            | Update the properties of an [inboundFlow](../resources/industrydata-inboundflow.md) object.                 |
| [Delete inboundFlow](../api/industrydata-industrydataroot-delete-inboundflows.md) | None                                                                                            | Delete an [inboundFlow](../resources/industrydata-inboundflow.md) object.                                  |

## Properties

| Property           | Type            | Description                                                                                                                                                                                                                                                       |
| :----------------- | :-------------- | :---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| dataDomain         | inboundDomain   | The broad category of data that is being imported by this flow. The possible values are: `educationRostering`, `unknownFutureValue`.                                                                                                                               |
| displayName        | String          | The name of the process. Inherited from [industryDataActivity](../resources/industrydata-industrydataactivity.md).                                                                                                                                                    |
| effectiveDateTime  | DateTimeOffset  | The start of the time window when the flow is allowed to run. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.                                                                                                                                                                                    |
| expirationDateTime | DateTimeOffset  | The end of the time window when the flow is allowed to run. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.                                                                                                                                                                                      |
| readinessStatus    | readinessStatus | The state of the process from creation through to ready to do work. Inherited from [industryDataActivity](../resources/industrydata-industrydataactivity.md).The possible values are: `notReady`, `ready`, `failed`, `disabled`, `expired`, `unknownFutureValue`. |

## Relationships

| Relationship  | Type                                                                              | Description                                                                                 |
| :------------ | :-------------------------------------------------------------------------------- | :------------------------------------------------------------------------------------------ |
| dataConnector | [industryDataConnector](../resources/industrydata-industrydataconnector.md)       | The data connector in the context of which this flow will pull in data from a source system.|
| year          | [yearTimePeriodDefinition](../resources/industrydata-yeartimeperioddefinition.md) | The year that the data being brought in via this flow applies to. ISO-8601 4-digit year.    |

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
  "displayName": "String",
  "readinessStatus": "String",
  "dataDomain": "String",
  "effectiveDateTime": "String (timestamp)",
  "expirationDateTime": "String (timestamp)"
}
```
