---
title: "fileDataConnector resource type"
description: "Represents an abstract type that provides the resources to establish a connection with a file-based data source."
author: "mlafleur"
ms.localizationpriority: medium
ms.prod: "industrydata"
doc_type: resourcePageType
---

# fileDataConnector resource type

Namespace: microsoft.graph.industryData

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an abstract type that provides the resources to establish a connection with a file-based data source.

Inherits from [industryDataConnector](../resources/industrydata-industrydataconnector.md).

## Methods

| Method                                                                                        | Return type                                                                                                           | Description                                                                                                            |
| :-------------------------------------------------------------------------------------------- | :-------------------------------------------------------------------------------------------------------------------- | :--------------------------------------------------------------------------------------------------------------------- |
| [List fileDataConnectors](../api/industrydata-filedataconnector-list.md)                      | [microsoft.graph.industryData.fileDataConnector](../resources/industrydata-filedataconnector.md) collection           | Get a list of the [fileDataConnector](../resources/industrydata-filedataconnector.md) objects and their properties.    |
| [Get fileDataConnector](../api/industrydata-filedataconnector-get.md)                         | [microsoft.graph.industryData.fileDataConnector](../resources/industrydata-filedataconnector.md)                      | Read the properties and relationships of a [fileDataConnector](../resources/industrydata-filedataconnector.md) object. |
| [Update fileDataConnector](../api/industrydata-filedataconnector-update.md)                   | [microsoft.graph.industryData.fileDataConnector](../resources/industrydata-filedataconnector.md)                      | Update the properties of a [fileDataConnector](../resources/industrydata-filedataconnector.md) object.                 |
| [Delete fileDataConnector](../api/industrydata-filedataconnector-delete.md)                   | None                                                                                                                  | Delete a [fileDataConnector](../resources/industrydata-filedataconnector.md) object.                                  |
| [validate](../api/industrydata-filedataconnector-validate.md)                                 | None                                                                                                                  | Perform validations applicable for the specific instance of the data connector.                                       |

## Properties

| Property    | Type   | Description                                                                                                             |
| :---------- | :----- | :---------------------------------------------------------------------------------------------------------------------- |
| displayName | String | The name of the data connector. Inherited from [industryDataConnector](../resources/industrydata-industrydataconnector.md). |

## Relationships

| Relationship | Type                                                                          | Description                                                                                                                                           |
| :----------- | :---------------------------------------------------------------------------- | :---------------------------------------------------------------------------------------------------------------------------------------------------- |
| sourceSystem | [sourceSystemDefinition](../resources/industrydata-sourcesystemdefinition.md) | The **sourceSystemDefinition** this connector is connected to. Inherited from [industryDataConnector](../resources/industrydata-industrydataconnector.md) |

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
