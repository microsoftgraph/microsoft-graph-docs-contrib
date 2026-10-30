---
title: "slaPolicyRecalculateCondition resource type"
description: "Represents elapsed-time reset settings for SLA policy recalculation."
author: "msklotz"
ms.date: 09/06/2026
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# slaPolicyRecalculateCondition resource type

Namespace: microsoft.graph.security.caseManagement

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents elapsed-time reset settings in the **recalculateCondition** property of an [slaPolicyDefinition](../resources/security-casemanagement-slapolicydefinition.md).

## Methods

None.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|shouldResetTime|Boolean|Whether elapsed time resets when the policy is recalculated, for example, when a case reenters its scope.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.caseManagement.slaPolicyRecalculateCondition"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.caseManagement.slaPolicyRecalculateCondition",
  "shouldResetTime": "Boolean"
}
```
