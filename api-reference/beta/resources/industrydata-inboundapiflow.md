---
title: "inboundApiFlow resource type"
description: "Represents a flow to import data via an external API into the canonical store."
author: "dakelle"
ms.localizationpriority: medium
ms.subservice: "industry-data-etl"
doc_type: resourcePageType
ms.date: 06/05/2024
---

# inboundApiFlow resource type

Namespace: microsoft.graph.industryData

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a flow to import data via an external API into the canonical store.

Inherits from [inboundFlow](industrydata-inboundflow.md).

## Methods
| Method| Return type| Description|
| :------------------------------------------------------------------------------------- | :---------------------------------------------------------------------------------------------------- | :------------------------------------------------------------------------------------------------------------------------------------------- |
| [Create](../api/industrydata-inboundapiflow-post.md)                   | [microsoft.graph.industryData.inboundApiFlow](industrydata-inboundapiflow.md)                               | Create a new **inboundApiFlow** object.                                                                                                      |
| [Update](../api/industrydata-inboundapiflow-update.md)                  | [microsoft.graph.industryData.inboundApiFlow](industrydata-inboundapiflow.md)            | Update the properties of an **inboundApiFlow** object.                |
              

## Properties
|Property|Type|Description|
|:---|:---|:---|
| dataDomain         | microsoft.graph.industryData.inboundDomain   | The category of data that this flow imports. Inherited from [inboundFlow](industrydata-inboundflow.md).The possible values are: `educationRostering`, `unknownFutureValue`.                                                                                                                     |
| displayName        | String                                       | The name of the activity. Inherited from [industryDataActivity](industrydata-industrydataactivity.md).                                                                                                                                                                                                |
| effectiveDateTime  | DateTimeOffset                               | The time when the flow is first allowed to run. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Inherited from [inboundFlow](industrydata-inboundflow.md). |
| expirationDateTime | DateTimeOffset                               | The time when the flow is no longer allowed to run. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Inherited from [inboundFlow](industrydata-inboundflow.md).   |
| readinessStatus    | microsoft.graph.industryData.readinessStatus | The state of the activity from its creation through when it is ready to do work. Inherited from [industryDataActivity](industrydata-industrydataactivity.md).The possible values are: `notReady`, `ready`, `failed`, `disabled`, `expired`, `unknownFutureValue`.                                                 |

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
| dataConnector | [microsoft.graph.industryData.industryDataConnector](industrydata-industrydataconnector.md)       | The data connector to the source system from where this flow gets its data. Inherited from [inboundFlow](industrydata-inboundflow.md) |
| year          | [microsoft.graph.industryData.yearTimePeriodDefinition](industrydata-yeartimeperioddefinition.md) | The year associated to the data that this flow brings in. Inherited from [inboundFlow](industrydata-inboundflow.md)                              |

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

