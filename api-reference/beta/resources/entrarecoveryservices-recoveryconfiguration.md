---
title: "recoveryConfiguration resource type"
description: "Represents the tenant's Microsoft Entra Backup and Recovery configuration."
author: "tafra00"
ms.date: 11/12/2026
ms.localizationpriority: medium
ms.subservice: "entra-id"
doc_type: resourcePageType
---

# recoveryConfiguration resource type

Namespace: microsoft.graph.entraRecoveryServices

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the tenant's Microsoft Entra Backup and Recovery configuration. This read-only singleton is available through the **configuration** relationship of [recovery](../resources/entrarecoveryservices-recovery.md), including when the tenant hasn't enabled the premium plan.

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get](../api/entrarecoveryservices-recoveryconfiguration-get.md)|[microsoft.graph.entraRecoveryServices.recoveryConfiguration](../resources/entrarecoveryservices-recoveryconfiguration.md)|Read the tenant's recovery configuration.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|lastModifiedDateTime|DateTimeOffset|The date and time when the premium plan configuration was last changed. The value is in ISO 8601 format and UTC time. `null` if the tenant has never enabled the premium plan. Read-only.|
|premiumPlan|[microsoft.graph.entraRecoveryServices.premiumPlanConfiguration](../resources/entrarecoveryservices-premiumplanconfiguration.md)|The tenant's premium plan configuration. Not nullable. Read-only.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.entraRecoveryServices.recoveryConfiguration",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.entraRecoveryServices.recoveryConfiguration",
  "lastModifiedDateTime": "String (timestamp)",
  "premiumPlan": {
    "@odata.type": "#microsoft.graph.entraRecoveryServices.premiumPlanConfiguration"
  }
}
```
