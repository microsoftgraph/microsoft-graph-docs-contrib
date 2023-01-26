---
title: "industryDataConnector resource type"
description: "Represents an abstract type that provides the resources to establish a connection with a data source."
author: "mlafleur"
ms.localizationpriority: medium
ms.prod: "industry-data-etl"
doc_type: resourcePageType
---

# industryDataConnector resource type

Namespace: microsoft.graph.industryData

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an abstract type that provides the resources to establish a connection with a data source.

Base type of [fileDataConnector](../resources/industrydata-filedataconnector.md).

## Methods

| Method                                                                              | Return type                                                                                            | Description                                                                                                        |
| :---------------------------------------------------------------------------------- | :----------------------------------------------------------------------------------------------------- | :----------------------------------------------------------------------------------------------------------------- |
| [Create industryDataConnector](../api/industrydata-industrydataconnector-post.md)   | [microsoft.graph.industryData.industryDataConnector](industrydata-industrydataconnector.md)            | Create a new [industryDataConnector](industrydata-industrydataconnector.md) object.                                |
| [List industryDataConnectors](../api/industrydata-industrydataconnector-list.md)    | [microsoft.graph.industryData.industryDataConnector](industrydata-industrydataconnector.md) collection | Get a list of the [industryDataConnector](industrydata-industrydataconnector.md) objects and their properties.     |
| [Get industryDataConnector](../api/industrydata-industrydataconnector-get.md)       | [microsoft.graph.industryData.industryDataConnector](industrydata-industrydataconnector.md)            | Read the properties and relationships of an [industryDataConnector](industrydata-industrydataconnector.md) object. |
| [Update industryDataConnector](../api/industrydata-industrydataconnector-update.md) | [microsoft.graph.industryData.industryDataConnector](industrydata-industrydataconnector.md)            | Update the properties of an [industryDataConnector](industrydata-industrydataconnector.md) object.                 |
| [Delete industryDataConnector](../api/industrydata-industrydataconnector-delete.md) | None                                                                                                   | Delete an [industryDataConnector](industrydata-industrydataconnector.md) object.                                   |
| [validate](../api/industrydata-industrydataconnector-validate.md)                   | None                                                                                                   | Perform validations applicable for the specific instance of the data connector.                                    |

## Properties

| Property    | Type   | Description                                                                 |
| :---------- | :----- | :-------------------------------------------------------------------------- |
| displayName | String | The name of the data connector. Maximum supported length is 100 characters. |

## Relationships

| Relationship | Type                                                             | Description                                                    |
| :----------- | :--------------------------------------------------------------- | :------------------------------------------------------------- |
| sourceSystem | [microsoft.graph.industryData.sourceSystemDefinition](industrydata-sourcesystemdefinition.md) | The **sourceSystemDefinition** this connector is connected to. |

## JSON representation

The following is a JSON representation of the resource.

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
