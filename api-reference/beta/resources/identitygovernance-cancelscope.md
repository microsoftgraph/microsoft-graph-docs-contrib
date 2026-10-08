---
title: "cancelScope resource type"
description: "An abstract base type that defines the scope for canceling workflow processing."
author: "KristinaSmith"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
ms.date: 03/26/2026
---

# cancelScope resource type

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

An abstract base type that defines the scope for canceling workflow processing when using the [cancelProcessing](../api/identitygovernance-workflow-cancelprocessing.md) action. This type can't be instantiated directly; use one of the derived types such as [cancelRunsScope](identitygovernance-cancelrunsscope.md) instead.

Base type of [cancelRunsScope](identitygovernance-cancelrunsscope.md).

## Properties

None.

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.identityGovernance.cancelScope"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.identityGovernance.cancelScope"
}
```
