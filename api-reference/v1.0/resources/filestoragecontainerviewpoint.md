---
title: "fileStorageContainerViewpoint resource type"
description: "Represents data specific to the current user of a fileStorageContainer".
author: "tonchan-msft"
ms.localizationpriority: medium
ms.subservice: "onedrive"
doc_type: resourcePageType
---

# fileStorageContainerViewpoint resource type

Namespace: microsoft.graph

Represents data specific to the current user of a  [fileStorageContainer](../resources/filestoragecontainer.md).


## Properties
|Property|Type|Description|
|:---|:---|:---|
|effectiveRole|String|The current user's effective role. Read-only.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type. 

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.fileStorageContainerViewpoint"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.fileStorageContainerViewpoint",
  "effectiveRole": "String"
}
```

