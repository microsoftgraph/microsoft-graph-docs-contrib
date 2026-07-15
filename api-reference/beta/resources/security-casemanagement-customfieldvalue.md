---
title: "customFieldValue resource type"
description: "Represents the abstract base type for a tenant-defined case custom field value."
author: "alfeldsh"
ms.date: 06/03/2026
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# customFieldValue resource type

Namespace: microsoft.graph.security.caseManagement

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the abstract base type for values in [customFieldValues](../resources/security-casemanagement-customfieldvalues.md), which is returned in the **customFields** property of a [case](../resources/security-casemanagement-case.md). Use derived types such as [customFieldStringValue](../resources/security-casemanagement-customfieldstringvalue.md), [customFieldNumberValue](../resources/security-casemanagement-customfieldnumbervalue.md), [customFieldDateTimeValue](../resources/security-casemanagement-customfielddatetimevalue.md), or [customFieldOptionsValue](../resources/security-casemanagement-customfieldoptionsvalue.md) for concrete value payloads.

## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.caseManagement.customFieldValue"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.caseManagement.customFieldValue"
}
```

