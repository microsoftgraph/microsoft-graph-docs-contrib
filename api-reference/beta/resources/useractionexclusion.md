---
title: "userActionExclusion resource type"
description: "Represents a user-action exclusion from Conditional Access policies that target all resources."
author: "vromanchik"
ms.reviewer: conditionalaccesspm
ms.date: 10/28/2026
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# userActionExclusion resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a user-action exclusion in the **userActionExclusions** collection of [allResourcesExclusions](../resources/allresourcesexclusions.md).

## Methods

None.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|state|[conditionalAccessPolicyState](#conditionalaccesspolicystate-values)|The exclusion state.|
|userAction|String|The user action identifier, for example, `accountrecovery`.|

### conditionalAccessPolicyState values

The **state** property supports the following values.

|Member|Description|
|:---|:---|
|enabled|The exclusion is enabled.|
|disabled|The exclusion is disabled.|
|enabledForReportingButNotEnforced|The exclusion is evaluated in report-only mode.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.userActionExclusion"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.userActionExclusion",
  "state": "String",
  "userAction": "String"
}
```
