---
title: "contentModel resource type"
description: "Represents an AI model used to process documents in SharePoint document libraries."
author: "travislius"
ms.localizationpriority: medium
ms.subservice: "sharepoint"
doc_type: resourcePageType
ms.date: 06/11/2024
---

# contentModel resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an AI model used to process documents in SharePoint document libraries. It can either classify documents, or extract metadata from the documents. Some content models set content types to present the classification results.

The extracted metadata is added to columns in the document library. Columns are created when a content model is applied. 

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get](../api/contentmodel-get.md)|[contentModel](../resources/contentmodel.md)|Read the properties and relationships of a **contentModel** object.|
|[Get applied drives](../api/contentmodel-getapplieddrives.md)|[contentModelUsage](../resources/contentmodelusage.md) collection|List all the [contentModelUsage](../resources/contentmodel.md) information related to an applied **contentModel**.|
|[Get by name](../api/contentmodel-getbyname.md)|[contentModel](../resources/contentmodel.md)|Read the properties and relationships of a **contentModel** object by its model name.|
|[Add to drive](../api/contentmodel-addtodrive.md)|[contentModelUsage](../resources/contentmodelusage.md)|Automatically process new documents in the library.|
|[Remove from drive](../api/contentmodel-removefromdrive.md)|None|Remove the **contentModel** from the document library.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdBy|[identitySet](../resources/identityset.md)|Identity of the user, device, or applicationthat created the item. Read-only.|
|createdDateTime|DateTimeOffset|Date and time of item creation. Read-only.|
|id|String|The ID of the content model. Read-only.|
|lastModifiedBy|[identitySet](../resources/identityset.md)|	Identity of the user, device, or application that modified the item. Read-only.|
|lastModifiedDateTime|DateTimeOffset|Date and time of item last modification. Read-only.|
|modelType|contentModelType|The type of the **contentModel**. The possible values are: `teachingMethod`, `layoutMethod`, `freeformSelectionMethod`, `prebuiltContractModel`, `prebuiltInvoiceModel`, `prebuiltReceiptModel`, `unknownFutureValue`.|
|name|String|The name of the **contentModel**.|

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

