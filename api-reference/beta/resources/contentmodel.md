---
title: "contentModel resource type"
description: "A content model is an AI model used to process documents in SharePoint document libraries."
author: "travislius"
ms.localizationpriority: medium
ms.subservice: "sharepoint"
doc_type: resourcePageType
---

# contentModel resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A content model is an AI model used to process documents in SharePoint document libraries. It can either classify documents, or extract metadata from the documents. Some content models set content types to present the classification results.

Extraction results are filled in document library columns.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get](../api/contentmodel-get.md)|[contentModel](../resources/contentmodel.md)|Read the properties and relationships of a [contentModel](../resources/contentmodel.md) object.|
|[getAppliedDrives](../api/contentmodel-getapplieddrives.md)|[contentModelUsage](../resources/contentmodelusage.md) collection|List all the applied document libraries of a [contentModel](../resources/contentmodel.md).|
|[getByName](../api/contentmodel-getbyname.md)|[contentModel](../resources/contentmodel.md)|Read the properties and relationships of a [contentModel](../resources/contentmodel.md) object by its model name.|
|[addToDrive](../api/contentmodel-addtodrive.md)|[contentModelUsage](../resources/contentmodelusage.md)|If a content model is properly trained or configured, users use this API to apply the model to document libraries. The model automatically processes new documents in the library.|
|[removeFromDrive](../api/contentmodel-removefromdrive.md)|None|Use this API to remove the [contentModel](../resources/contentmodel.md) from the document library.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdBy|[identitySet](../resources/identityset.md)|Identity of the user, device, or application, which created the item. Read-only.|
|createdDateTime|DateTimeOffset|Date and time of item creation. Read-only.|
|ID|String|The ID of the content model. Read-only.|
|lastModifiedBy|[identitySet](../resources/identityset.md)|	The name of the [contentModel](../resources/contentmodel.md).|
|lastModifiedDateTime|DateTimeOffset|Date and time of item last modification. Read-only.|
|modelType|contentModelType|The type of the [contentModel](../resources/contentmodel.md). The possible values are: `teachingMethod`, `layoutMethod`, `freeformSelectionMethod`, `prebuiltContractModel`, `prebuiltInvoiceModel`, `prebuiltReceiptModel`, `unknownFutureValue`.|
|name|String|The name of the [contentModel](../resources/contentmodel.md).|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.contentModel",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.contentModel",
  "id": "String (identifier)",
  "name": "String",
  "createdDateTime": "String (timestamp)",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "lastModifiedBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "lastModifiedDateTime": "String (timestamp)",
  "modelType": "String"
}
```

