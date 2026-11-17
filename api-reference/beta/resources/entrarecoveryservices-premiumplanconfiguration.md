---
title: "premiumPlanConfiguration resource type"
description: "Represents the tenant's Microsoft Entra Backup Premium plan configuration."
author: "tafra00"
ms.date: 11/12/2026
ms.localizationpriority: medium
ms.subservice: "entra-id"
doc_type: resourcePageType
---

# premiumPlanConfiguration resource type

Namespace: microsoft.graph.entraRecoveryServices

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the tenant's Microsoft Entra Backup Premium plan configuration. The **premiumPlan** property of [recoveryConfiguration](../resources/entrarecoveryservices-recoveryconfiguration.md) uses this type.


## Methods
None.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|enabledDateTime|DateTimeOffset|The date and time when the premium plan most recently entered the `enabled` state, in ISO 8601 format and UTC time. Retained while the status is `protectionPaused` or `billingStopped`; `null` when the status is `disabled`. Read-only.|
|status|[microsoft.graph.entraRecoveryServices.premiumPlanStatus](#premiumplanstatus-values)|The tenant's current premium plan status. The possible values are: `disabled`, `enabled`, `protectionPaused`, `billingStopped`, `unknownFutureValue`. Not nullable. Read-only.|

### premiumPlanStatus values

|Member|Description|
|:---|:---|
|disabled|Premium protection and billing are disabled.|
|enabled|Premium protection and billing are enabled. The service creates daily premium snapshots.|
|protectionPaused|New premium snapshots are paused. Retained snapshots and difference reports remain readable. New preview and recovery jobs are allowed while retained snapshots are available, for up to 30 days.|
|billingStopped|Retained snapshots and difference reports remain readable. New premium snapshots, preview jobs, and recovery jobs aren't allowed.|
|unknownFutureValue|Evolvable enumeration sentinel value. Don't use.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.entraRecoveryServices.premiumPlanConfiguration"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.entraRecoveryServices.premiumPlanConfiguration",
  "enabledDateTime": "String (timestamp)",
  "status": "String"
}
```
