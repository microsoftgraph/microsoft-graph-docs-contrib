---
title: "industryDataConnector resource type"
description: "Represents a base type for connectors that provides the resources to establish a connection with a data source."
author: "mlafleur"
ms.localizationpriority: medium
ms.subservice: "industry-data-etl"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# industryDataConnector resource type

Namespace: microsoft.graph.industryData

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a base type for connectors that provides the resources to establish a connection with a data source. This is an abstract type.

Base type of [fileDataConnector](../resources/industrydata-filedataconnector.md) and [oneRosterApiDataConnector](../resources/industrydata-onerosterapidataconnector.md).

## Methods

| Method                                                                              | Return type                                                                                            | Description                                                                                                        |
| :---------------------------------------------------------------------------------- | :----------------------------------------------------------------------------------------------------- | :----------------------------------------------------------------------------------------------------------------- |
| [List](../api/industrydata-industrydataconnector-list.md)    | [microsoft.graph.industryData.industryDataConnector](industrydata-industrydataconnector.md) collection | Get a list of the [industryDataConnector](industrydata-industrydataconnector.md) objects and their properties.     |
| [Get](../api/industrydata-industrydataconnector-get.md)       | [microsoft.graph.industryData.industryDataConnector](industrydata-industrydataconnector.md)            | Read the properties and relationships of an [industryDataConnector](industrydata-industrydataconnector.md) object. |
| [Delete](../api/industrydata-industrydataconnector-delete.md) | None                                                                                                   | Delete an [industryDataConnector](industrydata-industrydataconnector.md) object.                                   |
| [Validate](../api/industrydata-industrydataconnector-validate.md)                   | None                                                                                                   | Perform validations applicable for the specific instance of the data connector.                                    |

## Properties

| Property    | Type   | Description                                                                 |
| :---------- | :----- | :-------------------------------------------------------------------------- |
| displayName | String | The name of the data connector. Maximum supported length is 100 characters. |

## Relationships

| Relationship | Type                                                             | Description                                                    |
| :----------- | :--------------------------------------------------------------- | :------------------------------------------------------------- |
| sourceSystem | [microsoft.graph.industryData.sourceSystemDefinition](industrydata-sourcesystemdefinition.md) | The **sourceSystemDefinition** this connector is connected to. |

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.industryData.industryDataConnector",
  "openType": false
}
-->

```json
{
  "@odata.type": "#microsoft.graph.industryData.industryDataConnector",
  "displayName": "String"
}
```
