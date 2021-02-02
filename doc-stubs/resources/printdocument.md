---
title: "printDocument resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# printDocument resource type

Namespace: microsoft.graph

**TODO: Add Description**

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List printDocuments](../api/printdocument-list.md)|[printDocument](../resources/printdocument.md) collection|Get a list of the [printDocument](../resources/printdocument.md) objects and their properties.|
|[Create printDocument](../api/printdocument-create.md)|[printDocument](../resources/printdocument.md)|Create a new [printDocument](../resources/printdocument.md) object.|
|[Get printDocument](../api/printdocument-get.md)|[printDocument](../resources/printdocument.md)|Read the properties and relationships of a [printDocument](../resources/printdocument.md) object.|
|[Update printDocument](../api/printdocument-update.md)|[printDocument](../resources/printdocument.md)|Update the properties of a [printDocument](../resources/printdocument.md) object.|
|[Delete printDocument](../api/printdocument-delete.md)|None|Deletes a [printDocument](../resources/printdocument.md) object.|
|[createUploadSession](../api/printdocument-createuploadsession.md)|[uploadSession](../resources/uploadsession.md)|**TODO: Add Description**|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|contentType|String|**TODO: Add Description**|
|displayName|String|**TODO: Add Description**|
|id|String|**TODO: Add Description**|
|size|Int64|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.printDocument",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.printDocument",
  "id": "String (identifier)",
  "displayName": "String",
  "contentType": "String",
  "size": "Integer"
}
```

