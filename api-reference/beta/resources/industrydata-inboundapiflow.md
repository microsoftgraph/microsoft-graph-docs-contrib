---
title: "inboundApiFlow resource type"
description: "Represents a flow to import data via an external API into the canonical store."
author: "dakelle"
ms.localizationpriority: medium
ms.subservice: "industry-data-etl"
doc_type: resourcePageType
---

# inboundApiFlow resource type

Namespace: microsoft.graph.industryData

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a flow to import data via an external API into the canonical store.


Inherits from [microsoft.graph.industryData.inboundFlow](../resources/industrydata-inboundflow.md).

## Methods
| Method| Return type| Description|
| :------------------------------------------------------------------------------------- | :---------------------------------------------------------------------------------------------------- | :------------------------------------------------------------------------------------------------------------------------------------------- |
| [Create inboundApiFlow](../api/industrydata-inboundfileflow-post.md)                   | [microsoft.graph.industryData.inboundFlow](industrydata-inboundflow.md)                               | Create a new **inboundApiFlow** object.                                                                                                      |
| [List inboundApiFlow](../api/industrydata-inboundapiflow-list.md)                      | [microsoft.graph.industryData.inboundApiFlow](../resources/industrydata-inboundapiflow.md) collection | Get a list of the [microsoft.graph.industryData.inboundApiFlow](../resources/industrydata-inboundapiflow.md) objects and their properties.   |
| [Get inboundApiFlow](../api/industrydata-inboundapiflow-get.md)                        | [microsoft.graph.industryData.inboundApiFlow](../resources/industrydata-inboundapiflow.md)            | Read the properties and relationships of a [microsoft.graph.industryData.inboundApiFlow](../resources/industrydata-inboundapiflow.md) object.|
| [Update inboundApiFlow](../api/industrydata-inboundapiflow-update.md)                  | [microsoft.graph.industryData.inboundApiFlow](../resources/industrydata-inboundapiflow.md)            | Update the properties of a [microsoft.graph.industryData.inboundApiFlow](../resources/industrydata-inboundapiflow.md) object.                |
| [Delete inboundApiFlow](../api/industrydata-inboundapiflow-delete.md)                  | None                                                                                                  | Delete a [microsoft.graph.industryData.inboundApiFlow](../resources/industrydata-inboundapiflow.md) object.                                  |
              

## Properties
|Property|Type|Description|
|:---|:---|:---|
| dataDomain         | microsoft.graph.industryData.inboundDomain   | The broad category of data that this flow imports. Inherited from [microsoft.graph.industryData.inboundFlow](../resources/industrydata-inboundflow.md).The possible values are: `educationRostering`, `unknownFutureValue`.                                                                                                                     |
| displayName        | String                                       | The name of the activity. Inherited from [microsoft.graph.industryData.industryDataActivity](../resources/industrydata-industrydataactivity.md).                                                                                                                                                                                                |
| effectiveDateTime  | DateTimeOffset                               | The start of the time window when the flow is allowed to run. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Inherited from [microsoft.graph.industryData.inboundFlow](../resources/industrydata-inboundflow.md). |
| expirationDateTime | DateTimeOffset                               | The end of the time window when the flow is allowed to run. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Inherited from [microsoft.graph.industryData.inboundFlow](../resources/industrydata-inboundflow.md).   |
| readinessStatus    | microsoft.graph.industryData.readinessStatus | The state of the activity from creation through to ready to do work. Inherited from [microsoft.graph.industryData.industryDataActivity](../resources/industrydata-industrydataactivity.md).The possible values are: `notReady`, `ready`, `failed`, `disabled`, `expired`, `unknownFutureValue`.                                                 |

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
| dataConnector | [industryDataConnector](industrydata-industrydataconnector.md)       | The data connector in the context of which this flow pulls in data from a source system. Inherited from [microsoft.graph.industryData.inboundFlow](../resources/industrydata-inboundflow.md) |
| year          | [yearTimePeriodDefinition](industrydata-yeartimeperioddefinition.md) | The year that the data brought in via this flow applies to. Inherited from [microsoft.graph.industryData.inboundFlow](../resources/industrydata-inboundflow.md)                              |

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.industryData.inboundApiFlow",
  "baseType": "microsoft.graph.industryData.inboundFlow",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.industryData.inboundApiFlow",
  "displayName": "String",
  "readinessStatus": "String",
  "dataDomain": "String",
  "effectiveDateTime": "String (timestamp)",
  "expirationDateTime": "String (timestamp)"
}
```

