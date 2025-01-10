---
title: "cloudPcDisasterRecoveryCapability resource type"
description: "Represents the disaster recovery status of a Cloud PC, including the primary region, secondary region, capability type, and license type."
author: "xhhzuikeaiya"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: resourcePageType
ms.date: 07/08/2024
---

# cloudPcDisasterRecoveryCapability resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the disaster recovery status of a Cloud PC, including the primary region, secondary region, capability type, and license type.

## Properties

 | Property | Type | Description |
 | :--- | :--- | :--- |
 | capabilityType | [cloudPcDisasterRecoveryCapabilityType](#cloudpcdisasterrecoverycapabilitytype-values) | The disaster recovery action that can be performed for the Cloud PC. The possible values are: `none`, `failover`, `failback`, `unknownFutureValue`. |
 | licenseType | [cloudPcDisasterRecoveryLicenseType](#cloudpcdisasterrecoverylicensetype-values) | The disaster recovery license type that provides the capability. |
 | primaryRegion | String | The primary and mainly used region where the Cloud PC is located. |
 | secondaryRegion | String | The secondary region to which the Cloud PC can be failed over during a regional outage. |

### cloudPcDisasterRecoveryCapabilityType values

 | Member | Description |
 | :------|:------------|
 | none | The Cloud PC device doesn't support cross-region disaster recovery actions. |
 | failover | The Cloud PC device supports the [cloudPcBulkDisasterRecoveryFailover](../resources/cloudpcbulkdisasterrecoveryfailover.md) action. |
 | failback | The Cloud PC device supports the [cloudPcBulkDisasterRecoveryFailback](../resources/cloudpcbulkdisasterrecoveryfailback.md) action. |
 | unknownFutureValue | Evolvable enumeration sentinel value. Don't use. |

### cloudPcDisasterRecoveryLicenseType values

 | Member | Description |
 | :------| :-----------|
 | none | Default. The Cloud PC has no disaster recovery license. |
 | standard | A standard tier license with which the backup device of a Cloud PC is provisioned after failover action is triggered. |
 | unknownFutureValue | Evolvable enumeration sentinel value. Don't use. |

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
