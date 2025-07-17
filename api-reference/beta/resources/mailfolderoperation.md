---
title: "mailFolderOperation resource type"
description: "Represents a long-running operation of a mailFolder object."
author: "ka-gunase"
ms.localizationpriority: medium
ms.subservice: "outlook"
doc_type: resourcePageType
ms.date: 02/25/2025
---

# mailFolderOperation resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a long-running operation of a [mailFolder](../resources/mailfolder.md) object.

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/mailfolder-list-operations.md)|[mailFolderOperation](../resources/mailfolderoperation.md) collection|List the long-running folder operations of a [mailFolder](../resources/mailfolder.md) object.|
|[Get](../api/mailfolderoperation-get.md)|[mailFolderOperation](../resources/mailfolderoperation.md)|Read the properties and relationships of a [mailFolderOperation](../resources/mailfolderoperation.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier of the long-running operation. Inherited from [entity](../resources/entity.md).|
|resourceLocation|String|The location of the long-running operation.|
|status|mailFolderOperationStatus|The status of the long-running operation. The possible values are: `notStarted`, `running`, `succeeded`, `failed`, `unknownFutureValue`.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.mailFolderOperation",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.mailFolderOperation",
  "id": "String (identifier)",
  "resourceLocation": "String",
  "status": "String"
}
```
