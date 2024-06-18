---
title: "cloudPcDisasterRecoveryCapability resource type"
description: "The disaster recovery status of the Cloud PC."
author: "xhhzuikeaiya"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: resourcePageType
---

# cloudPcDisasterRecoveryCapability resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Describe the disaster recovery status of the Cloud PC, including primary region, secondary region and capability type. Default is null, which means the disaster recovery setting is disabled. Read Only.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|primaryRegion|String|The primary and mainly used region where the Cloud PC is located in.|
|secondaryRegion|String|The secondary region where the Cloud PC can be failed over to during region outage happening.|
|capabilityType|[cloudPcDisasterRecoveryCapabilityType](#cloudpcdisasterrecoverycapabilitytype-values)|This enum value defines what action about disaster recovery can be performed for the Cloud PC.The possible values are: `none`, `failover`, `failback`, `unknownFutureValue`.|

### CloudPcDisasterRecoveryCapabilityType values

Defines what action about disaster recovery can be performed for the Cloud PC.

| Member name          | Description                                                                            | Value |
|----------------------|----------------------------------------------------------------------------------------|-------|
| `none`               | Indicates that the Cloud PC device does not support any cross region DR action          | 0     |
| `failover`           | Indicates that the cloudPcBulkDisasterRecoveryFailover is currently supported for the Cloud PC. | 1     |
| `failback`           | Indicates that the cloudPcBulkDisasterRecoveryFailback action is currently supported for the Cloud PC. | 2     |
| `unknownFutureValue` | Evolvable enumeration sentinel value. Do not use.                                      | 3     |

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
  "primaryRegion": "String",
  "secondaryRegion": "String",
  "capabilityType": "String"
}
```
