---
title: "azureDataLakeConnector resource type"
description: "Represents a way to connect data uploaded to an Azure Data Lake."
author: "mlafleur"
ms.localizationpriority: medium
ms.prod: "industry-data-etl"
doc_type: resourcePageType
---

# azureDataLakeConnector resource type

Namespace: microsoft.graph.industryData

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a way to connect data uploaded to an Azure Data Lake.

Inherits from [fileDataConnector](industrydata-filedataconnector.md).

## Methods

| Method                                                                                | Return type                                                                                              | Description                                                                                                          |
| :------------------------------------------------------------------------------------ | :------------------------------------------------------------------------------------------------------- | :------------------------------------------------------------------------------------------------------------------- |
| [Create azureDataLakeConnector](../api/industrydata-azuredatalakeconnector-post.md)   | [microsoft.graph.industryData.azureDataLakeConnector](industrydata-azuredatalakeconnector.md)            | Create a new [azureDataLakeConnector](industrydata-azuredatalakeconnector.md) object.                                |
| [List azureDataLakeConnectors](../api/industrydata-azuredatalakeconnector-list.md)    | [microsoft.graph.industryData.azureDataLakeConnector](industrydata-azuredatalakeconnector.md) collection | Get a list of the [azureDataLakeConnector](industrydata-azuredatalakeconnector.md) objects and their properties.     |
| [Get azureDataLakeConnector](../api/industrydata-azuredatalakeconnector-get.md)       | [microsoft.graph.industryData.azureDataLakeConnector](industrydata-azuredatalakeconnector.md)            | Read the properties and relationships of an [azureDataLakeConnector](industrydata-azuredatalakeconnector.md) object. |
| [Update azureDataLakeConnector](../api/industrydata-azuredatalakeconnector-update.md) | [microsoft.graph.industryData.azureDataLakeConnector](industrydata-azuredatalakeconnector.md)            | Update the properties of an [azureDataLakeConnector](industrydata-azuredatalakeconnector.md) object.                 |
| [Delete azureDataLakeConnector](../api/industrydata-azuredatalakeconnector-delete.md) | None                                                                                                     | Delete an [azureDataLakeConnector](industrydata-azuredatalakeconnector.md) object.                                  |
| [getUploadSession](../api/industrydata-azuredatalakeconnector-getuploadsession.md)    | [microsoft.graph.industryData.fileUploadSession](industrydata-fileuploadsession.md)                      | Retrieve an upload session used to supply file-based data to an inbound flow.                                       |

## Properties

| Property    | Type   | Description                                                                                                |
| :---------- | :----- | :--------------------------------------------------------------------------------------------------------- |
| displayName | String | Name of the data connector. Inherited from [industryDataConnector](industrydata-industrydataconnector.md). |

## Relationships

| Relationship | Type                                                             | Description                                                                                                                                  |
| :----------- | :--------------------------------------------------------------- | :------------------------------------------------------------------------------------------------------------------------------------------- |
| sourceSystem | [microsoft.graph.industryData.sourceSystemDefinition](industrydata-sourcesystemdefinition.md) | The **sourceSystemDefinition** this connector is connected to. Inherited from [industryDataConnector](industrydata-industrydataconnector.md) |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.industryData.azureDataLakeConnector",
  "baseType": "microsoft.graph.industryData.fileDataConnector",
  "openType": false
}
-->

```json
{
  "@odata.type": "#microsoft.graph.industryData.azureDataLakeConnector",
  "displayName": "String"
}
```
