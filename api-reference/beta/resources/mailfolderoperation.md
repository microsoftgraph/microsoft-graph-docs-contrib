---
title: "mailFolderOperation resource type"
description: "Represents a long-running operation of a mailFolder."
author: "ka-gunase"
ms.localizationpriority: medium
ms.subservice: "outlook"
doc_type: resourcePageType
---

# mailFolderOperation resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a long-running operation of a [mailFolder](../resources/mailfolder.md).


Inherits from [entity](../resources/entity.md).


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/mailfolder-list-operations.md)|[mailFolderOperation](../resources/mailfolderoperation.md) collection|Get a list of the mailFolderOperation objects and their properties.|
|[Get](../api/mailfolderoperation-get.md)|[mailFolderOperation](../resources/mailfolderoperation.md)|Read the properties and relationships of a mailFolderOperation object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier of long running operation. Inherited from [entity](../resources/entity.md).|
|resourceLocation|String|The location of the long running operation.|
|status|mailFolderOperationStatus|The status of long running operation. The possible values are: `notStarted`, `running`, `succeeded`, `failed`, `unknownFutureValue`.|

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

