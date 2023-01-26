---
title: "fileDataConnector resource type"
description: "Represents an abstract type that provides the resources to establish a connection with a file-based data source."
author: "mlafleur"
ms.localizationpriority: medium
ms.prod: "industry-data-etl"
doc_type: resourcePageType
---

# fileDataConnector resource type

Namespace: microsoft.graph.industryData

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an abstract type that provides the resources to establish a connection with a file-based data source.

Inherits from [industryDataConnector](industrydata-industrydataconnector.md).

Base type of [azureDataLakeConnector](../resources/industrydata-azuredatalakeconnector.md).

## Properties

| Property    | Type   | Description                                                                                                    |
| :---------- | :----- | :------------------------------------------------------------------------------------------------------------- |
| displayName | String | The name of the data connector. Inherited from [industryDataConnector](industrydata-industrydataconnector.md). |

## Relationships

| Relationship | Type                                                             | Description                                                                                                                                   |
| :----------- | :--------------------------------------------------------------- | :-------------------------------------------------------------------------------------------------------------------------------------------- |
| sourceSystem | [microsoft.graph.industryData.sourceSystemDefinition](industrydata-sourcesystemdefinition.md) | The **sourceSystemDefinition** this connector is connected to. Inherited from [industryDataConnector](industrydata-industrydataconnector.md). |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.industryData.fileDataConnector",
  "baseType": "microsoft.graph.industryData.industryDataConnector",
  "openType": false
}
-->

```json
{
  "@odata.type": "#microsoft.graph.industryData.fileDataConnector",
  "displayName": "String"
}
```
