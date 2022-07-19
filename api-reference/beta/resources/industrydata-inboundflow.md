---
title: "inboundFlow resource type"
description: "Abstract base type for all flows bring data into the canonical store."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# inboundFlow resource type

Namespace: microsoft.graph.industryData

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Abstract base type for all flows bring data into the canonical store.
This is an abstract type.


Inherits from [industryDataActivity](../resources/industrydata-industrydataactivity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List inboundFlows](../api/industrydata-industrydatatenant-list-inboundflows.md)|[microsoft.graph.industryData.inboundFlow](../resources/industrydata-inboundflow.md) collection|Get a list of the [inboundFlow](../resources/industrydata-inboundflow.md) objects and their properties.|
|[Create inboundFlow](../api/industrydata-industrydatatenant-post-inboundflows.md)|[microsoft.graph.industryData.inboundFlow](../resources/industrydata-inboundflow.md)|Create a new [inboundFlow](../resources/industrydata-inboundflow.md) object.|
|[Get inboundFlow](../api/industrydata-inboundflow-get.md)|[microsoft.graph.industryData.inboundFlow](../resources/industrydata-inboundflow.md)|Read the properties and relationships of an [inboundFlow](../resources/industrydata-inboundflow.md) object.|
|[Update inboundFlow](../api/industrydata-inboundflow-update.md)|[microsoft.graph.industryData.inboundFlow](../resources/industrydata-inboundflow.md)|Update the properties of an [inboundFlow](../resources/industrydata-inboundflow.md) object.|
|[Delete inboundFlow](../api/industrydata-industrydatatenant-delete-inboundflows.md)|None|Deletes an [inboundFlow](../resources/industrydata-inboundflow.md) object.|
|[List industryDataConnector](../api/industrydata-industrydatatenant-list-dataconnectors.md)|[microsoft.graph.industryData.industryDataConnector](../resources/industrydata-industrydataconnector.md) collection|Get the industryDataConnector resources from the dataConnector navigation property.|
|[Add industryDataConnector](../api/industrydata-inboundflow-post-dataconnector.md)|[microsoft.graph.industryData.industryDataConnector](../resources/industrydata-industrydataconnector.md)|Add dataConnector by posting to the dataConnector collection.|
|[Remove industryDataConnector](../api/industrydata-inboundflow-delete-dataconnector.md)|None|Remove an [industryDataConnector](../resources/industrydata-industrydataconnector.md) object.|
|[List yearTimePeriodDefinition](../api/industrydata-inboundfileflow-list-year.md)|[microsoft.graph.industryData.yearTimePeriodDefinition](../resources/industrydata-yeartimeperioddefinition.md) collection|Get the yearTimePeriodDefinition resources from the year navigation property.|
|[Add yearTimePeriodDefinition](../api/industrydata-inboundflow-post-year.md)|[microsoft.graph.industryData.yearTimePeriodDefinition](../resources/industrydata-yeartimeperioddefinition.md)|Add year by posting to the year collection.|
|[Remove yearTimePeriodDefinition](../api/industrydata-inboundflow-delete-year.md)|None|Remove a [yearTimePeriodDefinition](../resources/industrydata-yeartimeperioddefinition.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|dataDomain|inboundDomain|The broad category of data that is being imported by this flow.The possible values are: `educationRostering`, `unknownFutureValue`.|
|displayName|String|Name of the process. Inherited from [industryDataActivity](../resources/industrydata-industrydataactivity.md).|
|effectiveDateTime|DateTimeOffset|The start of the time window when the flow is allowed to run. ISO 8601 format.|
|expirationDateTime|DateTimeOffset|The end of the time window when the flow is allowed to run. ISO 8601 format.|
|readinessStatus|readinessStatus|The state of the process from creation through to ready to do work. Inherited from [industryDataActivity](../resources/industrydata-industrydataactivity.md).The possible values are: `notReady`, `ready`, `failed`, `disabled`, `expired`, `unknownFutureValue`.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|dataConnector|[industryDataConnector](../resources/industrydata-industrydataconnector.md)|The data connector in the context of which this flow will pull in data from a source system|
|year|[yearTimePeriodDefinition](../resources/industrydata-yeartimeperioddefinition.md)|The year that the data being brought in via this flow applies to. ISO-8601 4-digit year.|

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
``` json
{
  "@odata.type": "#microsoft.graph.industryData.inboundFlow",
  "displayName": "String",
  "readinessStatus": "String",
  "dataDomain": "String",
  "effectiveDateTime": "String (timestamp)",
  "expirationDateTime": "String (timestamp)"
}
```

