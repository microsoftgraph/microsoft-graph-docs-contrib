---
title: "slaPolicyTimer resource type"
description: "Represents an embedded warning and breach timer in an SLA policy."
author: "msklotz"
ms.date: 09/06/2026
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# slaPolicyTimer resource type

Namespace: microsoft.graph.security.caseManagement

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an embedded warning and breach timer in the **timers** property of an [slaPolicyDefinition](../resources/security-casemanagement-slapolicydefinition.md).

Timers are evaluated in **order**, lowest first. The first timer whose **filters** match applies; otherwise, the default timer applies. Each policy supports up to 15 timers and must have exactly one timer with **isDefault** set to `true`.

Timers don't have independent GET, POST, PATCH, or DELETE endpoints. Read them through the parent policy and replace the entire **timers** collection when updating it.

## Methods

None.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|breachThresholdInMinutes|Int32|The elapsed time in minutes after which the timer is considered breached. Required when supplying a timer.|
|filters|[microsoft.graph.security.caseManagement.slaPolicyCriteriaBlock](../resources/security-casemanagement-slapolicycriteriablock.md)|The condition that a case must match for this timer to apply. Required when **isDefault** is `false`. Omit this property for the default timer.|
|isDefault|Boolean|Whether this timer is the fallback when no other timer's **filters** match. Required when supplying a timer. Exactly one timer per policy must have a value of `true`.|
|order|Int32|The evaluation order among the policy's timers, lowest first. Required when supplying a timer.|
|policyTimerId|String|The server-generated identifier for the timer. Computed on creation and immutable thereafter. Read-only. Omit this property from request bodies.|
|warningThresholdInMinutes|Int32|The elapsed time in minutes after which an early warning is raised.|

## Relationships

None.

## JSON representation

For request bodies, set `@odata.type` on the **filters** criteria block when you supply it. Service responses can omit `@odata.type` on **slaPolicyTimer** objects and their nested **filters** object.

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.caseManagement.slaPolicyTimer"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.caseManagement.slaPolicyTimer",
  "policyTimerId": "String",
  "order": "Int32",
  "filters": {
    "@odata.type": "#microsoft.graph.security.caseManagement.slaPolicyCriteriaBlock"
  },
  "isDefault": "Boolean",
  "warningThresholdInMinutes": "Int32",
  "breachThresholdInMinutes": "Int32"
}
```
