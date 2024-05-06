---
title: "approvalOperation resource type"
description: "Represents an approval operation."
author: "asgautam1997"
ms.localizationpriority: medium
ms.subservice: "microsoft-approvals"
doc_type: resourcePageType
---

# approvalOperation resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an approval operation, and provides the status of the operation.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get](../api/approvaloperation-get.md)|[approvalOperation](../resources/approvaloperation.md)|Read the properties and relationships of an [approvalOperation](../resources/approvaloperation.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|The DateTimeOffset for when this operation was created.|
|error|[publicError](../resources/publicerror.md)|The error if the operation failed.|
|lastActionDateTime|DateTimeOffset|The DateTimeOffset for when this operation was last updated.|
|resourceLocation|String|The URL location for the resource that you can make a GET call for.|
|status|approvalOperationStatus|The status of the operation. The possible values are: `scheduled`, `inProgress`, `succeeded`, `failed`, `timeout`, `unknownFutureValue`.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.approvalOperation",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.approvalOperation",
  "createdDateTime": "String (timestamp)",
  "lastActionDateTime": "String (timestamp)",
  "status": "String",
  "resourceLocation": "String",
  "error": {
    "@odata.type": "microsoft.graph.publicError"
  }
}
```

