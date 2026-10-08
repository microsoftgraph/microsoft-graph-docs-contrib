---
title: "cloudPcBulkDisasterRecovery resource type"
description: "Represents the entity that performs a bulk disaster recovery action."
author: "xiaoliu"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: resourcePageType
ms.date: 03/24/2025
---

# cloudPcBulkDisasterRecovery resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the entity that performs a bulk disaster recovery action. This action initiates the failover or failback process for a Cloud PC.

Inherits from [cloudPcBulkAction](../resources/cloudpcbulkaction.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|actionSummary|[cloudPcBulkActionSummary](../resources/cloudpcbulkactionsummary.md)|Run summary of this bulk action. Inherited from [cloudPcBulkAction](../resources/cloudpcbulkaction.md).|
|capabilityType | [cloudPcDisasterRecoveryCapabilityType](../resources/cloudpcdisasterrecoverycapability.md#cloudpcdisasterrecoverycapabilitytype-values) | The disaster recovery action that can be performed for the Cloud PC. The possible values are: `none`, `failover`, `failback`, `unknownFutureValue`. |
|cloudPcIds|String collection|IDs of the Cloud PCs the bulk action applies to. Inherited from [cloudPcBulkAction](../resources/cloudpcbulkaction.md).|
|createdDateTime|DateTimeOffset|The date and time when the bulk action was created. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Inherited from [cloudPcBulkAction](../resources/cloudpcbulkaction.md).|
|displayName|String|Name of the bulk action. Inherited from [cloudPcBulkAction](../resources/cloudpcbulkaction.md).|
|id|String|ID of the bulk action. Inherited from [cloudPcBulkAction](../resources/cloudpcbulkaction.md).|
|initiatedByUserPrincipalName|String|Indicates the user principal name (UPN) of the user who initiated this bulk action. Read-only. Inherited from [cloudPcBulkAction](../resources/cloudpcbulkaction.md).|
|licenseType | [cloudPcDisasterRecoveryLicenseType](../resources/cloudpcdisasterrecoverycapability.md#cloudpcdisasterrecoverylicensetype-values) | The disaster recovery license type that provides the disaster recovery capability. The possible values are: `none`, `standard`, `unknownFutureValue`, `plus`. Use the `Prefer: include-unknown-enum-members` request header to get the following members in this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `plus`. |
|scheduledDuringMaintenanceWindow|Boolean|Indicates whether the bulk action is scheduled according to the maintenance window. When `true`, the bulk action uses the maintenance window to schedule the action; `false` means that the bulk action doesn't use the maintenance window. The default value is `false`. Inherited from [cloudPcBulkAction](../resources/cloudpcbulkaction.md).|
|status|[cloudPcBulkActionStatus](../resources/cloudpcbulkaction.md#cloudpcbulkactionstatus-values)|Indicates the status of bulk actions. Possible values are `pending`, `succeeded`, `failed`, `unknownFutureValue`. The default value is `pending`. Read-only. Inherited from [cloudPcBulkAction](../resources/cloudpcbulkaction.md).|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.cloudPcBulkDisasterRecovery",
  "baseType": "microsoft.graph.cloudPcBulkAction",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.cloudPcBulkDisasterRecovery",
  "actionSummary": {"@odata.type": "microsoft.graph.cloudPcBulkActionSummary"},
  "capabilityType": "String",
  "cloudPcIds": ["String"],
  "createdDateTime": "String (timestamp)",
  "displayName": "String",
  "id": "String (identifier)",
  "initiatedByUserPrincipalName": "String",
  "licenseType": "String",
  "scheduledDuringMaintenanceWindow": "Boolean",
  "status": "String"
}
```
