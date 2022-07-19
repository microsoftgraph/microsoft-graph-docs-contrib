---
title: "fileDataConnector resource type"
description: "Representation of a way to connect to a file-based data source."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# fileDataConnector resource type

Namespace: microsoft.graph.industryData

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Representation of a way to connect to a file-based data source.
This is an abstract type.


Inherits from [industryDataConnector](../resources/industrydata-industrydataconnector.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List fileDataConnectors](../api/industrydata-filedataconnector-list.md)|[microsoft.graph.industryData.fileDataConnector](../resources/industrydata-filedataconnector.md) collection|Get a list of the [fileDataConnector](../resources/industrydata-filedataconnector.md) objects and their properties.|
|[Get fileDataConnector](../api/industrydata-filedataconnector-get.md)|[microsoft.graph.industryData.fileDataConnector](../resources/industrydata-filedataconnector.md)|Read the properties and relationships of a [fileDataConnector](../resources/industrydata-filedataconnector.md) object.|
|[Update fileDataConnector](../api/industrydata-filedataconnector-update.md)|[microsoft.graph.industryData.fileDataConnector](../resources/industrydata-filedataconnector.md)|Update the properties of a [fileDataConnector](../resources/industrydata-filedataconnector.md) object.|
|[Delete fileDataConnector](../api/industrydata-filedataconnector-delete.md)|None|Deletes a [fileDataConnector](../resources/industrydata-filedataconnector.md) object.|
|[validate](../api/industrydata-filedataconnector-validate.md)|None|Performs validations applicable for the specific instance of the data connector.|
|[List sourceSystemDefinition](../api/industrydata-industrydataconnector-list-sourcesystem.md)|[microsoft.graph.industryData.sourceSystemDefinition](../resources/industrydata-sourcesystemdefinition.md) collection|Get the sourceSystemDefinition resources from the sourceSystem navigation property.|
|[Add sourceSystemDefinition](../api/industrydata-filedataconnector-post-sourcesystem.md)|[microsoft.graph.industryData.sourceSystemDefinition](../resources/industrydata-sourcesystemdefinition.md)|Add sourceSystem by posting to the sourceSystem collection.|
|[Remove sourceSystemDefinition](../api/industrydata-filedataconnector-delete-sourcesystem.md)|None|Remove a [sourceSystemDefinition](../resources/industrydata-sourcesystemdefinition.md) object.|

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
  "@odata.type": "microsoft.graph.industryData.fileDataConnector",
  "baseType": "microsoft.graph.industryData.industryDataConnector",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.industryData.fileDataConnector",
  "displayName": "String"
}
```

