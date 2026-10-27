---
title: "slaPolicyCondition resource type"
description: "Represents a comparison condition in an SLA policy criteria block."
author: "msklotz"
ms.date: 09/06/2026
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# slaPolicyCondition resource type

Namespace: microsoft.graph.security.caseManagement

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a leaf condition that compares a case property with one or more values in the **conditions** property of an [slaPolicyCriteriaBlock](../resources/security-casemanagement-slapolicycriteriablock.md).

Inherits from [slaPolicyConditionBase](../resources/security-casemanagement-slapolicyconditionbase.md).

Set `@odata.type` to `#microsoft.graph.security.caseManagement.slaPolicyCondition` when supplying a leaf condition.

## Methods

None.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|operator|[microsoft.graph.security.caseManagement.slaPolicyConditionOperator](../resources/enums-security-casemanagement.md#slapolicyconditionoperator-values)|The comparison operator. The default value is `equals`. The possible values are: `equals`, `notEquals`, `contains`, `doesNotContain`, `isEmpty`, `isNotEmpty`, `changed`, `changedTo`, `changedFrom`, `isBefore`, `isAfter`, `greaterThan`, `lessThan`, `anyOf`, `noneOf`, `unknownFutureValue`.|
|property|String|The name of the case property to evaluate, such as `priority`.|
|values|String collection|The comparison values for the condition.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.caseManagement.slaPolicyCondition",
  "baseType": "microsoft.graph.security.caseManagement.slaPolicyConditionBase"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.caseManagement.slaPolicyCondition",
  "property": "String",
  "operator": "String",
  "values": [
    "String"
  ]
}
```
