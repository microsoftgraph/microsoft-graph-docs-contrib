---
title: "azureDataLakeConnector resource type"
description: "Represents a way to connect data uploaded to an Azure Data Lake."
author: "mlafleur"
ms.localizationpriority: medium
ms.prod: "industrydata"
doc_type: resourcePageType
---

# azureDataLakeConnector resource type

Namespace: microsoft.graph.industryData

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a way to connect data uploaded to an Azure Data Lake.

Inherits from [fileDataConnector](industrydata-filedataconnector.md).

## Scenarios

### Upload and Validate CSV Data

For more information:

- [Data Ingestion with SDS v2.1 CSV](schooldatasync/Data-Ingestion-with-SDS-v2.1-CSV.md)
- [SDS V2.1 CSV file format](schooldatasync/sds-v2.1-csv-file-format.md)
  - File names and column headers are case-sensitive
  - CSV files must be in UTF-8 format
  - We don't accept line breaks in incoming data.
  - To review and download sample set of SDS V2.1 CSV files, [see the SDS GitHub Repository](https://github.com/OfficeDev/O365-EDU-Tools/tree/master/CSV%20Samples).

> [!NOTE]
> After the initial upload during the creation of the inbound flow, you'll need to always supply the same set of files for subsequent uploads, regardless of data changes made in the optional files or not. If you do not the system will determine that the records are no longer active and will mark them as such.

#### Get Data Connector List

Retrieves the list of `industryDataAzureDataLakeConnector` to supply to the `getUploadSession()`.

#### Request an Upload Session

The `industryDataAzureDataLakeConnector` uses CSV files uploaded to a secure container. This container only lives for a finite period of time. The container is created by calling `getUploadSesion()`. The customer then uploads the required CSV files to the provided SAS URI in `sessionUri`.

_For more information, see [FileUploadSession](industrydata-fileuploadsession.md)_

#### Upload Files to the Data Connector

Loop through the list to upload the latest CSVs in preparation for basic file validation.

_For more information, see [FileValidateOperation](industrydata-filevalidateoperation.md)_

#### Validating Uploaded Files

Once the files have been uploaded, call `validate()` to validate the uploaded files and finalize the upload session. Once the files have been validated, they're moved to an internal container for processing by an `industryDataInboundFlow`.

The `validate()` action is a long-running operation. The link to the operation is returned in the `Location` header. Once validation is complete, the results can be obtained through the `Location` URI.

Recommend to poll no less than every 5 seconds while the status is 'in progress'.

_For more information, see [FileValidateOperation](industrydata-filevalidateoperation.md)_

## Methods

| Method                                                                                       | Return type                                                                                              | Description                                                                                                          |
| :------------------------------------------------------------------------------------------- | :------------------------------------------------------------------------------------------------------- | :------------------------------------------------------------------------------------------------------------------- |
| [Create azureDataLakeConnector](../api/industrydata-industrydataroot-post-dataconnectors.md) | [microsoft.graph.industryData.azureDataLakeConnector](industrydata-industrydataconnector.md)             | Create a new [azureDataLakeConnector](industrydata-azuredatalakeconnector.md) object.                                |
| [List azureDataLakeConnectors](../api/industrydata-azuredatalakeconnector-list.md)           | [microsoft.graph.industryData.azureDataLakeConnector](industrydata-azuredatalakeconnector.md) collection | Get a list of the [azureDataLakeConnector](industrydata-azuredatalakeconnector.md) objects and their properties.     |
| [Get azureDataLakeConnector](../api/industrydata-azuredatalakeconnector-get.md)              | [microsoft.graph.industryData.azureDataLakeConnector](industrydata-azuredatalakeconnector.md)            | Read the properties and relationships of an [azureDataLakeConnector](industrydata-azuredatalakeconnector.md) object. |
| [Update azureDataLakeConnector](../api/industrydata-azuredatalakeconnector-update.md)        | [microsoft.graph.industryData.azureDataLakeConnector](industrydata-azuredatalakeconnector.md)            | Update the properties of an [azureDataLakeConnector](industrydata-azuredatalakeconnector.md) object.                 |
| [Delete azureDataLakeConnector](../api/industrydata-azuredatalakeconnector-delete.md)        | None                                                                                                     | Deletes an [azureDataLakeConnector](industrydata-azuredatalakeconnector.md) object.                                  |
| [getUploadSession](../api/industrydata-azuredatalakeconnector-getuploadsession.md)           | [microsoft.graph.industryData.fileUploadSession](industrydata-fileuploadsession.md)                      | Retrieves an upload session used to supply file-based data to an inbound flow.                                       |

## Properties

| Property    | Type   | Description                                                                                                |
| :---------- | :----- | :--------------------------------------------------------------------------------------------------------- |
| displayName | String | Name of the data connector. Inherited from [industryDataConnector](industrydata-industrydataconnector.md). |

## Relationships

| Relationship | Type                                                             | Description                                                                                                                              |
| :----------- | :--------------------------------------------------------------- | :--------------------------------------------------------------------------------------------------------------------------------------- |
| sourceSystem | [sourceSystemDefinition](industrydata-sourcesystemdefinition.md) | The sourceSystemDefinition this connector is connected to. Inherited from [industryDataConnector](industrydata-industrydataconnector.md) |

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
