---
title: "azureDataLakeConnector resource type"
description: "Represents a connection to data uploaded to an Azure Data Lake."
author: "mlafleur"
ms.localizationpriority: medium
ms.subservice: "industry-data-etl"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# azureDataLakeConnector resource type

Namespace: microsoft.graph.industryData

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a connection to data uploaded to an Azure Data Lake.

Inherits from [fileDataConnector](industrydata-filedataconnector.md).

## Methods

| Method                                                                                | Return type                                                                                              | Description                                                                                                          |
| :------------------------------------------------------------------------------------ | :------------------------------------------------------------------------------------------------------- | :------------------------------------------------------------------------------------------------------------------- |
| [Create](../api/industrydata-azuredatalakeconnector-post.md)   | [microsoft.graph.industryData.azureDataLakeConnector](industrydata-azuredatalakeconnector.md)            | Create a new **azureDataLakeConnector** object.                                |
| [Update](../api/industrydata-azuredatalakeconnector-update.md) | [microsoft.graph.industryData.azureDataLakeConnector](industrydata-azuredatalakeconnector.md)            | Update the properties of an **azureDataLakeConnector** object.                 |
| [Get upload session](../api/industrydata-azuredatalakeconnector-getuploadsession.md)    | [microsoft.graph.industryData.fileUploadSession](industrydata-fileuploadsession.md)                      | Retrieve an upload session used to supply file-based data to an inbound flow.                                       |

## Properties

| Property    | Type   | Description                                                                                                |
| :---------- | :----- | :--------------------------------------------------------------------------------------------------------- |
| displayName | String | The name of the data connector. Inherited from [industryDataConnector](industrydata-industrydataconnector.md). |
| fileFormat  |[microsoft.graph.industryData.fileFormatReferenceValue](../resources/industrydata-fileformatreferencevalue.md)|The file format that external systems can upload using this connector.|

## Relationships

| Relationship | Type                                                             | Description                                                                                                                                  |
| :----------- | :--------------------------------------------------------------- | :------------------------------------------------------------------------------------------------------------------------------------------- |
| sourceSystem | [microsoft.graph.industryData.sourceSystemDefinition](industrydata-sourcesystemdefinition.md) | The **sourceSystemDefinition** object that this connector is connected to. Inherited from [industryDataConnector](industrydata-industrydataconnector.md) |

## JSON representation

The following JSON representation shows the resource type.

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
  "displayName": "String",
  "fileFormat": {
    "@odata.type": "microsoft.graph.industryData.fileFormatReferenceValue"
  }
}
```
