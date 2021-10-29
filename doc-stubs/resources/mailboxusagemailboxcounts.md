---
title: "mailboxUsageMailboxCounts resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# mailboxUsageMailboxCounts resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List mailboxUsageMailboxCounts](../api/mailboxusagemailboxcounts-list.md)|[mailboxUsageMailboxCounts](../resources/mailboxusagemailboxcounts.md) collection|Get a list of the [mailboxUsageMailboxCounts](../resources/mailboxusagemailboxcounts.md) objects and their properties.|
|[Get mailboxUsageMailboxCounts](../api/mailboxusagemailboxcounts-get.md)|[mailboxUsageMailboxCounts](../resources/mailboxusagemailboxcounts.md)|Read the properties and relationships of a [mailboxUsageMailboxCounts](../resources/mailboxusagemailboxcounts.md) object.|
|[Update mailboxUsageMailboxCounts](../api/mailboxusagemailboxcounts-update.md)|[mailboxUsageMailboxCounts](../resources/mailboxusagemailboxcounts.md)|Update the properties of a [mailboxUsageMailboxCounts](../resources/mailboxusagemailboxcounts.md) object.|
|[Delete mailboxUsageMailboxCounts](../api/mailboxusagemailboxcounts-delete.md)|None|Deletes a [mailboxUsageMailboxCounts](../resources/mailboxusagemailboxcounts.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|active|Int64|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
|reportDate|Date|**TODO: Add Description**|
|reportPeriod|String|**TODO: Add Description**|
|reportRefreshDate|Date|**TODO: Add Description**|
|total|Int64|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.mailboxUsageMailboxCounts",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.mailboxUsageMailboxCounts",
  "id": "String (identifier)",
  "reportRefreshDate": "Date",
  "total": "Integer",
  "active": "Integer",
  "reportDate": "Date",
  "reportPeriod": "String"
}
```

