---
title: "fileStorageContainerViewpoint resource type"
description: "fileStorageContainerViewpoint resource type"
author: "tonchan-msft"
ms.localizationpriority: medium
ms.prod: "files"
doc_type: resourcePageType
---

# fileStorageContainerViewpoint resource type

Namespace: microsoft.graph

> [!IMPORTANT]
> APIs under the `/beta` version in Microsoft Graph are subject to change. Use of these APIs in production applications is not supported. To determine whether an API is available in v1.0, use the **Version** selector.


The **fileStorageContainerViewpoint** resource contains data specific to the current user.


## Properties
|Property|Type|Description|
|:---|:---|:---|
|effectiveRole|String|The current user's effective role. Read-only.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
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

