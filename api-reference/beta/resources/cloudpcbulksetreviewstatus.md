---
title: "cloudPcBulkSetReviewStatus resource type"
description: "Represents the entity that performs a bulk set review status action."
author: "doudoujinjin"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: resourcePageType
ms.date: 09/30/2024
---

# cloudPcBulkSetReviewStatus resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the entity that sets the review status on Cloud PCs in bulk.

Inherits from [cloudPcBulkAction](../resources/cloudpcbulkaction.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|actionSummary|[cloudPcBulkActionSummary](../resources/cloudpcbulkactionsummary.md)|The run summary of this bulk action. Inherited from [cloudPcBulkAction](../resources/cloudpcbulkaction.md). |
|cloudPcIds|String collection|The IDs of the Cloud PCs the bulk action applies to. Inherited from [cloudPcBulkAction](../resources/cloudpcbulkaction.md). |
|createdDateTime|DateTimeOffset|The date and time when the bulk action was created. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Inherited from [cloudPcBulkAction](../resources/cloudpcbulkaction.md). |
|displayName|String|Name of the bulk action. Inherited from [cloudPcBulkAction](../resources/cloudpcbulkaction.md). |
|id|String|The ID of the bulk action. Inherited from [cloudPcBulkAction](../resources/cloudpcbulkaction.md). |
|initiatedByUserPrincipalName|String|The user principal name (UPN) of the user who initiated this bulk action. Read-only. Inherited from [cloudPcBulkAction](../resources/cloudpcbulkaction.md).|
|scheduledDuringMaintenanceWindow|Boolean|Indicates whether the bulk action is scheduled according to the maintenance window. When `true`, the bulk action uses the maintenance window to schedule the action; `false` means that the bulk action doesn't use the maintenance window. The default value is `false`. Inherited from [cloudPcBulkAction](../resources/cloudpcbulkaction.md).|
|status|[cloudPcBulkActionStatus](../resources/cloudpcbulkaction.md#cloudpcbulkactionstatus-values)|The status of bulk actions. Possible values are `pending`, `succeeded`, `failed`, `unknownFutureValue`. The default value is `pending`. Read-only. Inherited from [cloudPcBulkAction](../resources/cloudpcbulkaction.md).|
|reviewStatus|[cloudPcReviewStatus](../resources/cloudpcreviewstatus.md)|Indicates the new review status of the Cloud PC. Read-only.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.cloudPcBulkSetReviewStatus",
  "baseType": "microsoft.graph.cloudPcBulkAction",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.cloudPcBulkSetReviewStatus",
  "actionSummary": {"@odata.type": "microsoft.graph.cloudPcBulkActionSummary"},
  "cloudPcIds": ["String"],
  "createdDateTime": "String (timestamp)",
  "displayName": "String",
  "id": "String (identifier)",
  "initiatedByUserPrincipalName": "String",
  "scheduledDuringMaintenanceWindow": "Boolean",
  "status": "String",
  "reviewStatus": {
    "inReview": "Boolean",
    "userAccessLevel": "String",
    "azureStorageAccountId": "String"
  }
}
```
