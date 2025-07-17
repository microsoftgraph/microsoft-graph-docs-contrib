---
title: "fileStorageContainerViewpoint resource type"
description: "Represents data for the current user of a fileStorageContainer."
author: "tonchan-msft"
ms.localizationpriority: medium
ms.subservice: "onedrive"
doc_type: resourcePageType
ms.date: 05/21/2024
---

# fileStorageContainerViewpoint resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents data for the current user of a  [fileStorageContainer](../resources/filestoragecontainer.md). 


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

