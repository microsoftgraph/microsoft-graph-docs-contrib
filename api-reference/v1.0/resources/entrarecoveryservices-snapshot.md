---
title: "snapshot resource type"
description: "Represents a backup snapshot of the tenant's directory data at a specific point in time."
author: "yuhko-msft"
ms.date: 06/05/2026
ms.localizationpriority: medium
ms.subservice: "entra-id"
doc_type: resourcePageType
---

# snapshot resource type

Namespace: microsoft.graph.entraRecoveryServices

Represents a backup snapshot of the tenant's directory data at a specific point in time. Each snapshot defines a timestamp to which a tenant's state can be recovered. The **id** property is a base64-encoded representation of the snapshot timestamp.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List snapshots](../api/entrarecoveryservices-recovery-list-snapshots.md)|[microsoft.graph.entraRecoveryServices.snapshot](../resources/entrarecoveryservices-snapshot.md) collection|Get a list of the snapshot objects and their properties.|
|[Get snapshot](../api/entrarecoveryservices-snapshot-get.md)|[microsoft.graph.entraRecoveryServices.snapshot](../resources/entrarecoveryservices-snapshot.md)|Read the properties and relationships of a snapshot object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|The date and time when the snapshot was created.|
|id|String|The unique identifier for the snapshot. This ID is the base64-encoded representation of the snapshot timestamp.|
|totalChangedObjects|Int32|The total number of changed objects identified in this snapshot.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|recoveryJobs|[microsoft.graph.entraRecoveryServices.recoveryJob](../resources/entrarecoveryservices-recoveryjob.md) collection|Collection of recovery jobs created for this snapshot.|
|recoveryPreviewJobs|[microsoft.graph.entraRecoveryServices.recoveryPreviewJob](../resources/entrarecoveryservices-recoverypreviewjob.md) collection|Collection of preview jobs created for this snapshot.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.entraRecoveryServices.snapshot",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.entraRecoveryServices.snapshot",
  "id": "String (identifier)",
  "createdDateTime": "String (timestamp)",
  "totalChangedObjects": "Integer"
}
```
