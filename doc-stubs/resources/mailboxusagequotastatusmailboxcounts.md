---
title: "mailboxUsageQuotaStatusMailboxCounts resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# mailboxUsageQuotaStatusMailboxCounts resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List mailboxUsageQuotaStatusMailboxCounts](../api/mailboxusagequotastatusmailboxcounts-list.md)|[mailboxUsageQuotaStatusMailboxCounts](../resources/mailboxusagequotastatusmailboxcounts.md) collection|Get a list of the [mailboxUsageQuotaStatusMailboxCounts](../resources/mailboxusagequotastatusmailboxcounts.md) objects and their properties.|
|[Get mailboxUsageQuotaStatusMailboxCounts](../api/mailboxusagequotastatusmailboxcounts-get.md)|[mailboxUsageQuotaStatusMailboxCounts](../resources/mailboxusagequotastatusmailboxcounts.md)|Read the properties and relationships of a [mailboxUsageQuotaStatusMailboxCounts](../resources/mailboxusagequotastatusmailboxcounts.md) object.|
|[Update mailboxUsageQuotaStatusMailboxCounts](../api/mailboxusagequotastatusmailboxcounts-update.md)|[mailboxUsageQuotaStatusMailboxCounts](../resources/mailboxusagequotastatusmailboxcounts.md)|Update the properties of a [mailboxUsageQuotaStatusMailboxCounts](../resources/mailboxusagequotastatusmailboxcounts.md) object.|
|[Delete mailboxUsageQuotaStatusMailboxCounts](../api/mailboxusagequotastatusmailboxcounts-delete.md)|None|Deletes a [mailboxUsageQuotaStatusMailboxCounts](../resources/mailboxusagequotastatusmailboxcounts.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
|indeterminate|Int64|**TODO: Add Description**|
|reportDate|Date|**TODO: Add Description**|
|reportPeriod|String|**TODO: Add Description**|
|reportRefreshDate|Date|**TODO: Add Description**|
|sendProhibited|Int64|**TODO: Add Description**|
|sendReceiveProhibited|Int64|**TODO: Add Description**|
|underLimit|Int64|**TODO: Add Description**|
|warningIssued|Int64|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.mailboxUsageQuotaStatusMailboxCounts",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.mailboxUsageQuotaStatusMailboxCounts",
  "id": "String (identifier)",
  "reportRefreshDate": "Date",
  "underLimit": "Integer",
  "warningIssued": "Integer",
  "sendProhibited": "Integer",
  "sendReceiveProhibited": "Integer",
  "indeterminate": "Integer",
  "reportDate": "Date",
  "reportPeriod": "String"
}
```

