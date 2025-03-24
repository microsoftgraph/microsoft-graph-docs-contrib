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

Represents the entity that performs a bulk disaster recovery failover action. This action initiates the action to perform Cloud PC failover or failback for the Cloud PC.

Inherits from [cloudPcBulkAction](../resources/cloudpcbulkaction.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|actionSummary|[cloudPcBulkActionSummary](../resources/cloudpcbulkactionsummary.md)|Run summary of this bulk action. Inherited from [cloudPcBulkAction](../resources/cloudpcbulkaction.md).|
|cloudPcIds|String collection|IDs of the Cloud PCs the bulk action applies to. Inherited from [cloudPcBulkAction](../resources/cloudpcbulkaction.md).|
|createdDateTime|DateTimeOffset|The date and time when the bulk action was created. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Inherited from [cloudPcBulkAction](../resources/cloudpcbulkaction.md).|
|displayName|String|Name of the bulk action. Inherited from [cloudPcBulkAction](../resources/cloudpcbulkaction.md).|
|id|String|ID of the bulk action. Inherited from [cloudPcBulkAction](../resources/cloudpcbulkaction.md).|
|initiatedByUserPrincipalName|String|Indicates the user principal name (UPN) of the user who initiated this bulk action. Read-only. Inherited from [cloudPcBulkAction](../resources/cloudpcbulkaction.md).|
|scheduledDuringMaintenanceWindow|Boolean|Indicates whether the bulk action is scheduled according to the maintenance window. When `true`, the bulk action uses the maintenance window to schedule the action; `false` means that the bulk action doesn't use the maintenance window. The default value is `false`. Inherited from [cloudPcBulkAction](../resources/cloudpcbulkaction.md).|
|status|[cloudPcBulkActionStatus](../resources/cloudpcbulkaction.md#cloudpcbulkactionstatus-values)|Indicates the status of bulk actions. Possible values are `pending`, `succeeded`, `failed`, `unknownFutureValue`. The default value is `pending`. Read-only. Inherited from [cloudPcBulkAction](../resources/cloudpcbulkaction.md).|
 | capabilityType | [cloudPcDisasterRecoveryCapabilityType](#cloudpcdisasterrecoverycapabilitytype-values) | The disaster recovery action that can be performed for the Cloud PC. The possible values are: `none`, `failover`, `failback`, `unknownFutureValue`. |
 | licenseType | [cloudPcDisasterRecoveryLicenseType](#cloudpcdisasterrecoverylicensetype-values) | The disaster recovery license type that provides the disaster recovery capability. |

### cloudPcDisasterRecoveryCapabilityType values

 | Member | Description |
 | :------|:------------|
 | none | The Cloud PC device doesn't support disaster recovery actions. |
 | failover | The Cloud PC device supports disaster recovery failover action. |
 | failback | The Cloud PC device supports disaster recovery failback action. |
 | unknownFutureValue | Evolvable enumeration sentinel value. Don't use. |

### cloudPcDisasterRecoveryLicenseType values

 | Member | Description |
 | :------| :-----------|
 | none | Default. The Cloud PC has no disaster recovery license. |
 | standard | Indicates the [Cloud PC cross region disaster recovery addon license]((https://learn.microsoft.com/en-us/windows-365/enterprise/cross-region-disaster-recovery)). With this license the backup device of the Cloud PC will be provisioned after failover action is triggered. |
 | plus | Indicates the Cloud PC disaster recovery plus addon license. With this license the backup device will be provisioned after license is assigned. |
 | unknownFutureValue | Evolvable enumeration sentinel value. Don't use. |

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
  "cloudPcIds": ["String"],
  "createdDateTime": "String (timestamp)",
  "displayName": "String",
  "id": "String (identifier)",
  "initiatedByUserPrincipalName": "String",
  "scheduledDuringMaintenanceWindow": "Boolean",
  "status": "String",
  "licenseType": "String",
  "capabilityType": "String",
}
```
