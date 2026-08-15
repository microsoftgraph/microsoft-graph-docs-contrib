---
title: "recovery resource type"
description: "Represents the entry point for the Microsoft Entra Backup and Recovery service for a tenant."
author: "yuhko-msft"
ms.date: 06/05/2026
ms.localizationpriority: medium
ms.subservice: "entra-id"
doc_type: resourcePageType
---

# recovery resource type

Namespace: microsoft.graph.entraRecoveryServices

Represents the entry point for the Microsoft Entra Backup and Recovery service. Provides access to snapshots and recovery jobs for a tenant, enabling administrators to restore directory objects to a previous state.

## Methods
None.

## Properties
None.

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|jobs|[microsoft.graph.entraRecoveryServices.recoveryJobBase](../resources/entrarecoveryservices-recoveryjobbase.md) collection|Collection of all recovery jobs (both preview and recovery) for the tenant.|
|snapshots|[microsoft.graph.entraRecoveryServices.snapshot](../resources/entrarecoveryservices-snapshot.md) collection|Collection of backup snapshots available for the tenant.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.entraRecoveryServices.recovery",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.entraRecoveryServices.recovery"
}
```
