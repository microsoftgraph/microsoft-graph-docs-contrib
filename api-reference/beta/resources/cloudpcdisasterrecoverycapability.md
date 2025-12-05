---
title: "cloudPcDisasterRecoveryCapability resource type"
description: "Represents the disaster recovery status of a Cloud PC, including the primary region, secondary region, capability type, and license type."
author: "xhhzuikeaiya"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: resourcePageType
ms.date: 1/10/2024
---

# cloudPcDisasterRecoveryCapability resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the disaster recovery status of a Cloud PC, including the primary region, secondary region, capability type, and license type.

## Properties

 | Property | Type | Description |
 | :--- | :--- | :--- |
 | capabilityType | [cloudPcDisasterRecoveryCapabilityType](#cloudpcdisasterrecoverycapabilitytype-values) | The disaster recovery action that can be performed for the Cloud PC. The possible values are: `none`, `failover`, `failback`, `unknownFutureValue`. |
 | licenseType | [cloudPcDisasterRecoveryLicenseType](#cloudpcdisasterrecoverylicensetype-values) | The disaster recovery license type that provides the capability. The possible values are: `none`, `standard`, `unknownFutureValue`, `plus`. Use the `Prefer: include-unknown-enum-members` request header to get the following members in this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `plus`. |
 | primaryRegion | String | The primary and mainly used region where the Cloud PC is located. |
 | secondaryRegion | String | The secondary region to which the Cloud PC can be failed over during a regional outage. |

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
 | standard | Indicates the Cloud PC cross-region disaster recovery add-in license. With this license, the backup device for the Cloud PC is provisioned after the failover action is triggered. |
 | unknownFutureValue | Evolvable enumeration sentinel value. Don't use. |
 | plus | Indicates the Cloud PC disaster recovery plus add-in license. With this license, the backup device is provisioned after the license is assigned. |

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
