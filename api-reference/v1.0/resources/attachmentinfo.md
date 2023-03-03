---
title: "attachmentInfo resource type"
description: "Represents the attributes of an attachment."
author: "avijityadav"
ms.localizationpriority: medium
ms.prod: "outlook"
doc_type: resourcePageType
---

# attachmentInfo resource type

Namespace: microsoft.graph

Represents the attributes of an attachment.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|attachmentType|attachmentType|The type of the attachment. The possible values are: `file`, `item`, `reference`. Required.|
|contentType|String|The nature of the data in the attachment. Optional.|
|name|String|The display name of the attachment. This can be a descriptive string and does not have to be the actual file name. Required.|
|size|Int64|The length of the attachment in bytes. Required.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.attachmentInfo"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.attachmentInfo",
  "attachmentType": "String",
  "contentType": "String",
  "name": "String",
  "size": "Int64"
}
```

