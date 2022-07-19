---
title: "industryDataConnector resource type"
description: "Representation of a way to connect to a data source."
author: "mlafleur"
ms.localizationpriority: medium
ms.prod: "industrydata"
doc_type: resourcePageType
---

# industryDataConnector resource type

Namespace: microsoft.graph.industryData

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Representation of a way to connect to a data source.
This is an abstract type.

## Methods

| Method                                                                                        | Return type                                                                                                         | Description                                                                                                                     |
| :-------------------------------------------------------------------------------------------- | :------------------------------------------------------------------------------------------------------------------ | :------------------------------------------------------------------------------------------------------------------------------ |
| [List industryDataConnectors](../api/industrydata-industrydataroot-list-dataconnectors.md)    | [microsoft.graph.industryData.industryDataConnector](../resources/industrydata-industrydataconnector.md) collection | Get a list of the [industryDataConnector](../resources/industrydata-industrydataconnector.md) objects and their properties.     |
| [Create industryDataConnector](../api/industrydata-industrydataroot-post-dataconnectors.md)   | [microsoft.graph.industryData.industryDataConnector](../resources/industrydata-industrydataconnector.md)            | Create a new [industryDataConnector](../resources/industrydata-industrydataconnector.md) object.                                |
| [Get industryDataConnector](../api/industrydata-industrydataconnector-get.md)                 | [microsoft.graph.industryData.industryDataConnector](../resources/industrydata-industrydataconnector.md)            | Read the properties and relationships of an [industryDataConnector](../resources/industrydata-industrydataconnector.md) object. |
| [Update industryDataConnector](../api/industrydata-industrydataconnector-update.md)           | [microsoft.graph.industryData.industryDataConnector](../resources/industrydata-industrydataconnector.md)            | Update the properties of an [industryDataConnector](../resources/industrydata-industrydataconnector.md) object.                 |
| [Delete industryDataConnector](../api/industrydata-industrydataroot-delete-dataconnectors.md) | None                                                                                                                | Deletes an [industryDataConnector](../resources/industrydata-industrydataconnector.md) object.                                  |
| [validate](../api/industrydata-industrydataconnector-validate.md)                             | None                                                                                                                | Performs validations applicable for the specific instance of the data connector.                                                |

## Properties

| Property    | Type   | Description                 |
| :---------- | :----- | :-------------------------- |
| displayName | String | Name of the data connector. |

## Relationships

| Relationship | Type                                                                          | Description                                                |
| :----------- | :---------------------------------------------------------------------------- | :--------------------------------------------------------- |
| sourceSystem | [sourceSystemDefinition](../resources/industrydata-sourcesystemdefinition.md) | The sourceSystemDefinition this connector is connected to. |

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
