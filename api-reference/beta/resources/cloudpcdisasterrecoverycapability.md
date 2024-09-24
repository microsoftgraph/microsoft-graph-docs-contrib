---
title: "cloudPcDisasterRecoveryCapability resource type"
description: "Represents the disaster recovery status of a Cloud PC, including the primary region, secondary region, capability type and license type."
author: "xhhzuikeaiya"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: resourcePageType
---

# cloudPcDisasterRecoveryCapability resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the disaster recovery status of a Cloud PC, including the primary region, secondary region, capability type and license type.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|capabilityType|[cloudPcDisasterRecoveryCapabilityType](#cloudpcdisasterrecoverycapabilitytype-values)|The disaster recovery action that can be performed for the Cloud PC. The possible values are: `none`, `failover`, `failback`, `unknownFutureValue`.|
|licenseType|[cloudPcDisasterRecoveryLicenseType](#cloudpcdisasterrecoverylicensetype-values)|Defines the disaster recovery license type assigned to the Cloud PC.|
|primaryRegion|String|The primary and mainly used region where the Cloud PC is located.|
|secondaryRegion|String|The secondary region to which the Cloud PC can be failed over during a regional outage.|

### cloudPcDisasterRecoveryCapabilityType values

| Member             | Description                                                                            |
|:-------------------|:---------------------------------------------------------------------------------------|
| none               | Indicates that the Cloud PC device doesn't support any cross-region disaster recovery action.          |
| failover           | Indicates that the [cloudPcBulkDisasterRecoveryFailover](../resources/cloudpcbulkdisasterrecoveryfailover.md) action is currently supported for the Cloud PC. |
| failback           | Indicates that the [cloudPcBulkDisasterRecoveryFailback](../resources/cloudpcbulkdisasterrecoveryfailback.md) action is currently supported for the Cloud PC. |
| unknownFutureValue | Evolvable enumeration sentinel value. Don't use.                                      |

### cloudPcDisasterRecoveryLicenseType values

| Member             |Description                                                                                                                                      |
|:-------------------- |:------------------------------------------------------------------------------------------------------------------------------------------------ |
| none               | Default. Indicates that the cloud PC has no disaster recovery license.                                                                           |
| standard           | Indicates that the cloud PC has a standard tier license with which the backup device will be provisioned after failover action is triggered.     |
| premium            | Indicates that the cloud PC has a premium tier license with which the backup device will be provisioned after license is assigned.               |
| unknownFutureValue | Evolvable enumeration sentinel value. Do not use.                                                                                                |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.cloudPcDisasterRecoveryCapability"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.cloudPcDisasterRecoveryCapability",
  "capabilityType": "String",
  "licenseType": "String",
  "primaryRegion": "String",
  "secondaryRegion": "String"
}
```
