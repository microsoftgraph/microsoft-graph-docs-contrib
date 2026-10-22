---
title: "backupPolicyReport resource type"
description: "Represents a report that corresponds to a backup policy."
author: "rigera"
ms.date: 10/09/2026
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: resourcePageType
---

# backupPolicyReport resource type

Namespace: microsoft.graph

Represents a report that corresponds to a backup policy. This report contains metrics like backup count statistics that show the number of artifacts in various stages of protection.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|backupPolicyId|String|The ID of the backup policy.|
|countStatistics|[backupCountStatistics](../resources/backupcountstatistics.md)|The count of artifacts in various protection stages.|
|displayName|String|The display name of the backup policy.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.backupPolicyReport"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.backupPolicyReport",
  "backupPolicyId": "String",
  "countStatistics": {"@odata.type": "microsoft.graph.backupCountStatistics"},
  "displayName": "String"
}
```
