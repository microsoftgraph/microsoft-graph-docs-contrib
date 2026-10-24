---
title: "evaluationScope resource type"
description: "Represents the scope used for data protection policy evaluation."
author: "psanyal"
ms.date: 09/02/2026
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# evaluationScope resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the scope used for data protection policy evaluation.

Set in the **evaluationScope** property of [processContentRequest](processcontentrequest.md) or the **evaluationScope** parameter of [tenantProtectionScopeContainer: compute](../api/tenantprotectionscopecontainer-compute.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|type|[evaluationScopeType](enums.md#evaluationscopetype-values)|The evaluation scope. Possible values are `tenant`, `agent`, `anonymousUser`, and `unknownFutureValue`. Required. Use `agent` to evaluate data loss prevention policies for agent interactions.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.evaluationScope"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.evaluationScope",
  "type": "String"
}
```
