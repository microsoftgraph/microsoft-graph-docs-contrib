---
title: "userMfaSignInSummary resource type"
description: "Represents the total count of MFA vs non-MFA sign in counts for a given window."
ms.date: 07/23/2025
author: "egreenberg14"
ms.localizationpriority: medium
ms.subservice: "entra-monitoring-health"
doc_type: resourcePageType
---

# userMfaSignInSummary resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the total count of MFA vs non-MFA sign in counts for a given window.

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/authenticationmethodsroot-list-usermfasigninsummary.md)|[userMfaSignInSummary](../resources/usermfasigninsummary.md) collection|Get a list of the userMfaSignInSummary objects and their properties.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|The date and time (UTC) for when the summary was aggregated for. The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|id|String|The id for the summary.|
|multiFactorSignIns|Int64|The total number of MFA sign-ins for the given day.|
|singleFactorSignIns|Int64|The total number of non-MFA sign ins for the given day.|
|totalSignIns|Int64|The total number of sign-ins for the given day.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.userMfaSignInSummary",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.userMfaSignInSummary",
  "id": "String (identifier)",
  "createdDateTime": "String (timestamp)",
  "totalSignIns": "Integer",
  "singleFactorSignIns": "Integer",
  "multiFactorSignIns": "Integer"
}
```

