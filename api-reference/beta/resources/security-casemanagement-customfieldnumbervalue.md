---
title: "customFieldNumberValue resource type"
description: "Represents a number-typed case custom field value."
author: "alfeldsh"
ms.date: 06/03/2026
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# customFieldNumberValue resource type

Namespace: microsoft.graph.security.caseManagement

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a number-typed value in [customFieldValues](../resources/security-casemanagement-customfieldvalues.md), which is returned in the **customFields** property of a [case](../resources/security-casemanagement-case.md).

Inherits from [microsoft.graph.security.caseManagement.customFieldValue](../resources/security-casemanagement-customfieldvalue.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|value|Int32|The numeric custom field value.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.caseManagement.customFieldNumberValue"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.caseManagement.customFieldNumberValue",
  "value": "Integer"
}
```

