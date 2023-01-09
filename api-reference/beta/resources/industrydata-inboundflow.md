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

Inherits from [industryDataActivity](industrydata-industrydataactivity.md).

A **inboundFlow** represents an activity that gets executed by the service. 

The following data is required before using this resource:

- [sourceSystemDefinition](../api/industrydata-industrydataroot-post-sourcesystems.md)
- [dataConnector](../api/industrydata-industrydataroot-post-dataconnectors.md)
- [yearTimePeriodDefinition](../api/industrydata-industrydataroot-post-years.md)

By default, your inbound flow will activate twice (2x) daily. For more details, see [industryDataRun](industrydata-industrydatarun.md).

## Methods

| Method                                                                            | Return type                                                                        | Description                                                                                    |
| :-------------------------------------------------------------------------------- | :--------------------------------------------------------------------------------- | :--------------------------------------------------------------------------------------------- |
| [Create inboundFlow](../api/industrydata-industrydataroot-post-inboundflows.md)   | [microsoft.graph.industryData.inboundFlow](industrydata-inboundflow.md)            | Create a new [inboundFlow](industrydata-inboundflow.md) object.                                |
| [List inboundFlows](../api/industrydata-industrydataroot-list-inboundflows.md)    | [microsoft.graph.industryData.inboundFlow](industrydata-inboundflow.md) collection | Get a list of the [inboundFlow](industrydata-inboundflow.md) objects and their properties.     |
| [Get inboundFlow](../api/industrydata-inboundflow-get.md)                         | [microsoft.graph.industryData.inboundFlow](industrydata-inboundflow.md)            | Read the properties and relationships of an [inboundFlow](industrydata-inboundflow.md) object. |
| [Update inboundFlow](../api/industrydata-inboundflow-update.md)                   | [microsoft.graph.industryData.inboundFlow](industrydata-inboundflow.md)            | Update the properties of an [inboundFlow](industrydata-inboundflow.md) object.                 |
| [Delete inboundFlow](../api/industrydata-industrydataroot-delete-inboundflows.md) | None                                                                               | Delete an [inboundFlow](industrydata-inboundflow.md) object.                                   |

## Properties

| Property           | Type            | Description                                                                                                                                                                                                                                            |
| :----------------- | :-------------- | :----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| dataDomain         | inboundDomain   | The broad category of data that is being imported by this flow. The possible values are: `educationRostering`, `unknownFutureValue`.                                                                                                                   |
| displayName        | String          | The name of the activity. Inherited from [industryDataActivity](industrydata-industrydataactivity.md).                                                                                                                                                 |
| effectiveDateTime  | DateTimeOffset  | The start of the time window when the flow is allowed to run. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.             |
| expirationDateTime | DateTimeOffset  | The end of the time window when the flow is allowed to run. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.               |
| readinessStatus    | readinessStatus | The state of the activity from creation through to ready to do work. Inherited from [industryDataActivity](industrydata-industrydataactivity.md). The possible values are: `notReady`, `ready`, `failed`, `disabled`, `expired`, `unknownFutureValue`. |

## Relationships

| Relationship  | Type                                                                 | Description                                                                                  |
| :------------ | :------------------------------------------------------------------- | :------------------------------------------------------------------------------------------- |
| dataConnector | [industryDataConnector](industrydata-industrydataconnector.md)       | The data connector in the context of which this flow will pull in data from a source system. |
| year          | [yearTimePeriodDefinition](industrydata-yeartimeperioddefinition.md) | The year that the data being brought in via this flow applies to.                            |

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
  "dataDomain": "String",
  "effectiveDateTime": "String (timestamp)",
  "expirationDateTime": "String (timestamp)",
  "readinessStatus": "String"
}
```
