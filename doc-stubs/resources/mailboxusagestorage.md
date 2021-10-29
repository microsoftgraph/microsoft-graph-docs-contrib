---
title: "mailboxUsageStorage resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# mailboxUsageStorage resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List mailboxUsageStorages](../api/mailboxusagestorage-list.md)|[mailboxUsageStorage](../resources/mailboxusagestorage.md) collection|Get a list of the [mailboxUsageStorage](../resources/mailboxusagestorage.md) objects and their properties.|
|[Get mailboxUsageStorage](../api/mailboxusagestorage-get.md)|[mailboxUsageStorage](../resources/mailboxusagestorage.md)|Read the properties and relationships of a [mailboxUsageStorage](../resources/mailboxusagestorage.md) object.|
|[Update mailboxUsageStorage](../api/mailboxusagestorage-update.md)|[mailboxUsageStorage](../resources/mailboxusagestorage.md)|Update the properties of a [mailboxUsageStorage](../resources/mailboxusagestorage.md) object.|
|[Delete mailboxUsageStorage](../api/mailboxusagestorage-delete.md)|None|Deletes a [mailboxUsageStorage](../resources/mailboxusagestorage.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
|reportDate|Date|**TODO: Add Description**|
|reportPeriod|String|**TODO: Add Description**|
|reportRefreshDate|Date|**TODO: Add Description**|
|storageUsedInBytes|Int64|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.mailboxUsageStorage",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.mailboxUsageStorage",
  "id": "String (identifier)",
  "reportRefreshDate": "Date",
  "storageUsedInBytes": "Integer",
  "reportDate": "Date",
  "reportPeriod": "String"
}
```

