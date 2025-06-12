---
title: "updateAllMessagesReadStateOperation resource type"
description: "Represents a long-running operation in a mailFolder of type updateAllMessagesReadState."
author: "ka-gunase"
ms.date: 03/24/2025
ms.localizationpriority: medium
ms.subservice: "outlook"
doc_type: resourcePageType
---

# updateAllMessagesReadStateOperation resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a long-running operation in a [mailFolder](../resources/mailfolder.md) of type **updateAllMessagesReadState**.

Inherits from [mailFolderOperation](../resources/mailfolderoperation.md).

## Methods
For the list of supported methods, see [mailFolderOperation](../resources/mailfolderoperation.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier of the long-running operation. Inherited from [mailFolderOperation](../resources/mailfolderoperation.md).|
|resourceLocation|String|The location of the long-running operation. Inherited from [mailFolderOperation](../resources/mailfolderoperation.md).|
|status|mailFolderOperationStatus|The status of the long-running operation. The possible values are: `notStarted`, `running`, `succeeded`, `failed`, `unknownFutureValue`. Inherited from [mailFolderOperation](../resources/mailfolderoperation.md).|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.updateAllMessagesReadStateOperation",
  "baseType": "microsoft.graph.mailFolderOperation",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.updateAllMessagesReadStateOperation",
  "id": "String (identifier)",
  "resourceLocation": "String",
  "status": "String"
}
```
