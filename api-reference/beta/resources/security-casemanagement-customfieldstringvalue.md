---
title: "customFieldStringValue resource type"
description: "Represents a string-typed case custom field value."
author: "alfeldsh"
ms.date: 06/03/2026
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# customFieldStringValue resource type

Namespace: microsoft.graph.security.caseManagement

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a string-typed value in [customFieldValues](../resources/security-casemanagement-customfieldvalues.md), which is returned in the **customFields** property of a [case](../resources/security-casemanagement-case.md).

Inherits from [microsoft.graph.security.caseManagement.customFieldValue](../resources/security-casemanagement-customfieldvalue.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|value|String|The string custom field value.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.caseManagement.customFieldStringValue"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.caseManagement.customFieldStringValue",
  "value": "String"
}
```

