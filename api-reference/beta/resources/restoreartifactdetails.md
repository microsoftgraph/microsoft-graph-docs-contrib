---
title: "restoreArtifactDetails resource type"
description: "Represents detailed count information about restore artifacts"
author: "Vassu05"
ms.date: 01/09/2026
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: resourcePageType
---

# restoreArtifactDetails resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents detailed count information about artifacts involved in a restore operation, including the total number of artifacts, the number successfully restored, and the number that failed.


## Properties
|Property|Type|Description|
|:---|:---|:---|
|failedCount|Int32|The number of artifacts that failed to be restored during the restore operation.|
|restoredCount|Int32|The number of artifacts that were successfully restored during the restore operation.|
|totalArtifactsCount|Int32|The total number of artifacts included in the restore operation.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.restoreArtifactDetails"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.restoreArtifactDetails",
  "totalArtifactsCount": "Integer",
  "restoredCount": "Integer",
  "failedCount": "Integer"
}
```

