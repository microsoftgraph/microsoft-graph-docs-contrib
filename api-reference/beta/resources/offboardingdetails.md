---
title: "offboardingDetails resource type"
description: "Represents detailed information about an offboarding operation."
author: "Vassu05"
ms.date: 01/09/2026
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: resourcePageType
---

# offboardingDetails resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents detailed information about an offboarding operation, including counts of protection units that were successfully offboarded, failed, or cancelled, along with the timing and status of the offboarding process.


## Properties
|Property|Type|Description|
|:---|:---|:---|
|cancelledCount|Int32|The number of protection units whose offboarding was cancelled during the operation.|
|failedCount|Int32|The number of protection units that failed to be offboarded during the operation.|
|offboardedCount|Int32|The number of protection units that were successfully offboarded during the operation.|
|offboardEndDateTime|DateTimeOffset|The date and time when the offboarding operation ended.|
|offboardingStatus|String|The current status of the offboarding operation.|
|offboardStartDateTime|DateTimeOffset|The date and time when the offboarding operation started.|
|totalRequestedCount|Int32|The total number of protection units that were requested to be offboarded in this operation.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.offboardingDetails"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.offboardingDetails",
  "totalRequestedCount": "Integer",
  "offboardedCount": "Integer",
  "failedCount": "Integer",
  "cancelledCount": "Integer",
  "offboardStartDateTime": "String (timestamp)",
  "offboardEndDateTime": "String (timestamp)",
  "offboardingStatus": "String"
}
```

