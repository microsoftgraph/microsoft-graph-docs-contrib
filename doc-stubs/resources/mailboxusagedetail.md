---
title: "mailboxUsageDetail resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# mailboxUsageDetail resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List mailboxUsageDetails](../api/mailboxusagedetail-list.md)|[mailboxUsageDetail](../resources/mailboxusagedetail.md) collection|Get a list of the [mailboxUsageDetail](../resources/mailboxusagedetail.md) objects and their properties.|
|[Get mailboxUsageDetail](../api/mailboxusagedetail-get.md)|[mailboxUsageDetail](../resources/mailboxusagedetail.md)|Read the properties and relationships of a [mailboxUsageDetail](../resources/mailboxusagedetail.md) object.|
|[Update mailboxUsageDetail](../api/mailboxusagedetail-update.md)|[mailboxUsageDetail](../resources/mailboxusagedetail.md)|Update the properties of a [mailboxUsageDetail](../resources/mailboxusagedetail.md) object.|
|[Delete mailboxUsageDetail](../api/mailboxusagedetail-delete.md)|None|Deletes a [mailboxUsageDetail](../resources/mailboxusagedetail.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdDate|Date|**TODO: Add Description**|
|deletedDate|Date|**TODO: Add Description**|
|deletedItemCount|Int64|**TODO: Add Description**|
|deletedItemSizeInBytes|Int64|**TODO: Add Description**|
|displayName|String|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
|isDeleted|Boolean|**TODO: Add Description**|
|issueWarningQuotaInBytes|Int64|**TODO: Add Description**|
|itemCount|Int64|**TODO: Add Description**|
|lastActivityDate|Date|**TODO: Add Description**|
|prohibitSendQuotaInBytes|Int64|**TODO: Add Description**|
|prohibitSendReceiveQuotaInBytes|Int64|**TODO: Add Description**|
|reportPeriod|String|**TODO: Add Description**|
|reportRefreshDate|Date|**TODO: Add Description**|
|storageUsedInBytes|Int64|**TODO: Add Description**|
|userPrincipalName|String|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.mailboxUsageDetail",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.mailboxUsageDetail",
  "id": "String (identifier)",
  "reportRefreshDate": "Date",
  "userPrincipalName": "String",
  "displayName": "String",
  "isDeleted": "Boolean",
  "deletedDate": "Date",
  "createdDate": "Date",
  "lastActivityDate": "Date",
  "itemCount": "Integer",
  "storageUsedInBytes": "Integer",
  "deletedItemCount": "Integer",
  "deletedItemSizeInBytes": "Integer",
  "issueWarningQuotaInBytes": "Integer",
  "prohibitSendQuotaInBytes": "Integer",
  "prohibitSendReceiveQuotaInBytes": "Integer",
  "reportPeriod": "String"
}
```

