---
title: "fileStorage resource type"
description: "Represents the structure of active and deleted fileStorageContainer objects."
author: "tonchan-msft"
ms.localizationpriority: medium
ms.subservice: "onedrive"
doc_type: resourcePageType
ms.date: 05/21/2024
---

# fileStorage resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the structure of active and deleted [fileStorageContainer](../resources/filestoragecontainer.md) objects.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Remove deleted containers](../api/filestorage-delete-deletedcontainers.md)|[fileStorage](../resources/filestorage.md) collection|Delete the [fileStorageContainer](../resources/filestoragecontainer.md) objects and their properties.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|containers|[fileStorageContainer](../resources/filestoragecontainer.md) collection|The collection of active **fileStorageContainer** resources.|
|deletedContainers|[fileStorageContainer](../resources/filestoragecontainer.md) collection|The collection of deleted **fileStorageContainer** resources.|
