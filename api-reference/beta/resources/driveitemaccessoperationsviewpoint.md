---
title: "driveItemAccessOperationsViewpoint resource type"
description: "Indicates whether the user can carry out the described actions on this item."
author: "ziebd"
ms.localizationpriority: medium
ms.subservice: "sharepoint"
doc_type: resourcePageType
---

# driveItemAccessOperationsViewpoint resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Describes whether the user is able to carry out the described actions on this item.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|canComment|Boolean|Whether the user can comment on this item.|
|canCreateFile|Boolean|Whether the user can create files within this object. Returned only on folders.|
|canCreateFolder|Boolean|Whether the user can create folders within this object. Returned only on folders.|
|canDelete|Boolean|Whether the user can delete this item.|
|canDownload|Boolean|Whether the user can download this item.|
|canRead|Boolean|Whether the user can read this item.|
|canUpdate|Boolean|Whether the user can update this item.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.driveItemAccessOperationsViewpoint"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.driveItemAccessOperationsViewpoint",
  "canComment": "Boolean",
  "canCreateFile": "Boolean",
  "canCreateFolder": "Boolean",
  "canDelete": "Boolean",
  "canDownload": "Boolean",
  "canRead": "Boolean",
  "canUpdate": "Boolean"
}
```
