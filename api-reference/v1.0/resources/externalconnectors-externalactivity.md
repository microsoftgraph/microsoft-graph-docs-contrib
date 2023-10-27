---
title: "externalActivity resource type"
description: "Represents a record of a user interaction with an externalItem object."
author: "sacampbe-msft"
ms.localizationpriority: medium
ms.prod: "search"
doc_type: resourcePageType
---

# externalActivity resource type

Namespace: microsoft.graph.externalConnectors

Represents a record of a user interaction with an [externalItem](externalconnectors-externalitem.md) object.

Base type of [externalActivityResult](../resources/externalconnectors-externalactivityresult.md).

## Methods

None.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|startDateTime|DateTimeOffset|The date and time when the particular activity occurred. The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|type|microsoft.graph.externalConnectors.externalActivityType|The type of activity performed. The possible values are: `viewed`, `modified`, `created`, `commented`, `unknownFutureValue`.|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|performedBy|[microsoft.graph.externalConnectors.identity](../resources/externalconnectors-identity.md)|Represents an identity used to identify who is responsible for the activity.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.externalConnectors.externalActivity"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.externalConnectors.externalActivity",
  "startDateTime": "String (timestamp)",
  "type": "String"
}
```
