---
title: "approvalOperation resource type"
description: "Represents an approval operation."
author: "asgautam1997"
ms.localizationpriority: medium
ms.subservice: "approvals"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# approvalOperation resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the status and details for an operation performed on an [approvalItem](../resources/approvalitem.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get](../api/approvaloperation-get.md)|[approvalOperation](../resources/approvaloperation.md)|Read the properties and relationships of an [approvalOperation](../resources/approvaloperation.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|The date and time when the operation was created.|
|error|[publicError](../resources/publicerror.md)|The error if the operation failed.|
|lastActionDateTime|DateTimeOffset|The date and time when this operation was most recently updated.|
|resourceLocation|String|The URL for the resource that was newly created or acted upon.|
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

