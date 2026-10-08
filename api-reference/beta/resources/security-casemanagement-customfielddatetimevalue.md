---
title: "customFieldDateTimeValue resource type"
description: "Represents a date and time-typed case custom field value."
author: "alfeldsh"
ms.date: 06/03/2026
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# customFieldDateTimeValue resource type

Namespace: microsoft.graph.security.caseManagement

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a date and time-typed value in [customFieldValues](../resources/security-casemanagement-customfieldvalues.md), which is returned in the **customFields** property of a [case](../resources/security-casemanagement-case.md).

Inherits from [microsoft.graph.security.caseManagement.customFieldValue](../resources/security-casemanagement-customfieldvalue.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|valueDateTime|DateTimeOffset|The date and time custom field value.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.caseManagement.customFieldDateTimeValue"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.caseManagement.customFieldDateTimeValue",
  "valueDateTime": "String (timestamp)"
}
```

