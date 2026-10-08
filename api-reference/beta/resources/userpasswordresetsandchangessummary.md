---
title: "userPasswordResetsAndChangesSummary resource type"
description: "Represents the summary of password resets and changes for a specific day."
ms.date: 07/23/2025
author: "egreenberg14"
ms.localizationpriority: medium
ms.subservice: "entra-monitoring-health"
doc_type: resourcePageType
---

# userPasswordResetsAndChangesSummary resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the summary of password resets and changes for a specific day. This summary includes the number of password resets that were self-service and those triggered by an administrator. 

Inherits from [entity](../resources/entity.md).


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/authenticationmethodsroot-list-userpasswordresetsandchangessummary.md)|[userPasswordResetsAndChangesSummary](../resources/userpasswordresetsandchangessummary.md) collection|Get a list of the userPasswordResetsAndChangesSummary objects and their properties.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|aggregatedDateTime|DateTimeOffset|The aggregated day for which the summary applies to. This property will always represent the entire day. The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|changePasswordSelfServiceCount|Int64|The number of self-service password changes that occurred during this window.|
|id|String|Identifier for the report.|
|passwordResetsByAdminCount|Int64|The number of admin-triggered password resets that occurred during this window.|
|passwordResetsSelfServiceCount|Int64|The number of self-service password resets that occurred during this window.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.userPasswordResetsAndChangesSummary",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.userPasswordResetsAndChangesSummary",
  "id": "String (identifier)",
  "aggregatedDateTime": "String (timestamp)",
  "passwordResetsByAdminCount": "Integer",
  "passwordResetsSelfServiceCount": "Integer",
  "changePasswordSelfServiceCount": "Integer"
}
```

