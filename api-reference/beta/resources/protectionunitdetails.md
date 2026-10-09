---
title: "protectionUnitDetails resource type"
description: "Represents detailed count information about protection units"
author: "Vassu05"
ms.date: 01/09/2026
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: resourcePageType
---

# protectionUnitDetails resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents detailed count information about protection units associated with a backup policy, including the number of units requested to be added or removed, successfully added or removed, and failed operations.


## Properties
|Property|Type|Description|
|:---|:---|:---|
|addedCount|Int32|The number of protection units that were successfully added to the backup policy.|
|backupConfigurationType|String|The type of backup configuration applied to the protection units.|
|failedCount|Int32|The number of protection unit operations that failed during processing.|
|removedCount|Int32|The number of protection units that were successfully removed from the backup policy.|
|requestedToAddCount|Int32|The number of protection units that were requested to be added to the backup policy.|
|requestedToRemoveCount|Int32|The number of protection units that were requested to be removed from the backup policy.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.protectionUnitDetails"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.protectionUnitDetails",
  "requestedToAddCount": "Integer",
  "requestedToRemoveCount": "Integer",
  "addedCount": "Integer",
  "removedCount": "Integer",
  "failedCount": "Integer",
  "backupConfigurationType": "String"
}
```

