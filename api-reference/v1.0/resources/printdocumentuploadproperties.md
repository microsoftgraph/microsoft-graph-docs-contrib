---
author: nilakhan
description: "Represents information for print document upload"
title: "printDocumentUploadProperties resource type"
ms.localizationpriority: medium
doc_type: "resourcePageType"
ms.subservice: universal-print
ms.date: 07/26/2024
---

# printDocumentUploadProperties resource type

Namespace: microsoft.graph

Describes the document that is being uploaded

## Properties
|Property|Type|Description|
|:---|:---|:---|
|contentType|String|The document's content (MIME) type.|
|documentName|String|The document's name.|
|size|Int64|The document's size in bytes.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.printDocumentUploadProperties"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.printDocumentUploadProperties",
  "contentType": "String",
  "documentName": "String",
  "size": "Integer"
}
```

