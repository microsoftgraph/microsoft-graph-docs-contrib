---
title: "recovery resource type"
description: "Represents the entry point for the Microsoft Entra Backup and Recovery service for a tenant."
author: "yuhko-msft"
ms.date: 03/04/2026
ms.localizationpriority: medium
ms.subservice: "entra-id"
doc_type: resourcePageType
---

# recovery resource type

Namespace: microsoft.graph.entraRecoveryServices

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the entry point for the Microsoft Entra Backup and Recovery service. Provides access to snapshots and recovery jobs for a tenant, enabling administrators to restore directory objects to a previous state.

Inherits from [microsoft.graph.entity](../resources/entity.md).

## Methods
None.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier for the recovery resource. Inherited from [entity](../resources/entity.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|jobs|[microsoft.graph.entraRecoveryServices.recoveryJobBase](../resources/entrarecoveryservices-recoveryjobbase.md) collection|Collection of all recovery jobs (both preview and recovery) for the tenant.|
|snapshots|[microsoft.graph.entraRecoveryServices.snapshot](../resources/entrarecoveryservices-snapshot.md) collection|Collection of backup snapshots available for the tenant.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.entraRecoveryServices.recovery",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.entraRecoveryServices.recovery",
  "id": "String (identifier)"
}
```
