---
title: "azureDataLakeConnector resource type"
description: "Representation of a way to connect data uploaded to an Azure Data Lake."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# azureDataLakeConnector resource type

Namespace: microsoft.graph.industryData

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Representation of a way to connect data uploaded to an Azure Data Lake.


Inherits from [fileDataConnector](../resources/industrydata-filedataconnector.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List azureDataLakeConnectors](../api/industrydata-azuredatalakeconnector-list.md)|[microsoft.graph.industryData.azureDataLakeConnector](../resources/industrydata-azuredatalakeconnector.md) collection|Get a list of the [azureDataLakeConnector](../resources/industrydata-azuredatalakeconnector.md) objects and their properties.|
|[Get azureDataLakeConnector](../api/industrydata-azuredatalakeconnector-get.md)|[microsoft.graph.industryData.azureDataLakeConnector](../resources/industrydata-azuredatalakeconnector.md)|Read the properties and relationships of an [azureDataLakeConnector](../resources/industrydata-azuredatalakeconnector.md) object.|
|[Update azureDataLakeConnector](../api/industrydata-azuredatalakeconnector-update.md)|[microsoft.graph.industryData.azureDataLakeConnector](../resources/industrydata-azuredatalakeconnector.md)|Update the properties of an [azureDataLakeConnector](../resources/industrydata-azuredatalakeconnector.md) object.|
|[Delete azureDataLakeConnector](../api/industrydata-azuredatalakeconnector-delete.md)|None|Deletes an [azureDataLakeConnector](../resources/industrydata-azuredatalakeconnector.md) object.|
|[getUploadSession](../api/industrydata-azuredatalakeconnector-getuploadsession.md)|[microsoft.graph.industryData.fileUploadSession](../resources/industrydata-fileuploadsession.md)|Retrieves an upload session used to supply file-based data to an inbound flow.|
|[List sourceSystemDefinition](../api/industrydata-industrydataconnector-list-sourcesystem.md)|[microsoft.graph.industryData.sourceSystemDefinition](../resources/industrydata-sourcesystemdefinition.md) collection|Get the sourceSystemDefinition resources from the sourceSystem navigation property.|
|[Add sourceSystemDefinition](../api/industrydata-azuredatalakeconnector-post-sourcesystem.md)|[microsoft.graph.industryData.sourceSystemDefinition](../resources/industrydata-sourcesystemdefinition.md)|Add sourceSystem by posting to the sourceSystem collection.|
|[Remove sourceSystemDefinition](../api/industrydata-azuredatalakeconnector-delete-sourcesystem.md)|None|Remove a [sourceSystemDefinition](../resources/industrydata-sourcesystemdefinition.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|Name of the data connector. Inherited from [industryDataConnector](../resources/industrydata-industrydataconnector.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|sourceSystem|[sourceSystemDefinition](../resources/industrydata-sourcesystemdefinition.md)|The sourceSystemDefinition this connector is connected to. Inherited from [industryDataConnector](../resources/industrydata-industrydataconnector.md)|

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
``` json
{
  "@odata.type": "#microsoft.graph.industryData.azureDataLakeConnector",
  "displayName": "String"
}
```

