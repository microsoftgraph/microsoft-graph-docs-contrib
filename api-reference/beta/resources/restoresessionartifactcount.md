---
title: "restoreSessionArtifactCount resource type"
description: "Represents artifact count metadata for a restore session."
author: "satpatel1"
ms.reviewer: "satpatel1"
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: resourcePageType
toc.title: RestoreSessionArtifactCount
---

# restoreSessionArtifactCount resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents artifact count metadata for a [restore session](../resources/restoreSessionBase.md). Restore session APIs are used by SharePoint, OneDrive, and Exchange Online admins to perform restore-related tasks on artifacts that are protected as part of a protection policy.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|total|Int32|The number of artifacts present in the restore session.|
|inProgress|Int32|The number of artifacts whose restoration is in progress.|
|completed|Int32|The number of artifacts whose restoration completed.|
|failed|Int32|The number of artifacts whose restoration failed.|

## Relationships
None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.restoreSessionArtifactCount",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.restoreSessionArtifactCount",
  "total": "Int32",
  "inProgress": "Int32",
  "completed": "Int32",
  "failed": "Int32"
}
```
