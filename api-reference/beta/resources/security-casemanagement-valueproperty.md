---
title: "valueProperty resource type"
description: "Represents the base complex type for values recorded in a modified property."
author: "alfeldsh"
ms.date: 05/29/2026
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# valueProperty resource type

Namespace: microsoft.graph.security.caseManagement

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the abstract base type for values in a [modifiedProperty](../resources/security-casemanagement-modifiedproperty.md). Returned in the **oldValue** and **newValue** properties. Use derived types such as [stringValueProperty](../resources/security-casemanagement-stringvalueproperty.md) or [booleanValueProperty](../resources/security-casemanagement-booleanvalueproperty.md) for concrete value payloads.

## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.caseManagement.valueProperty"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.caseManagement.valueProperty"
}
```
