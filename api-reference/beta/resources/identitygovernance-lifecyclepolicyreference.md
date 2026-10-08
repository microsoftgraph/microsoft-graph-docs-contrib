---
title: "lifecyclePolicyReference resource type"
description: "Provides a lightweight reference to a lifecycle policy version."
author: "faithwins"
ms.date: 09/25/2026
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
---

# lifecyclePolicyReference resource type

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Provides a lightweight reference to a lifecycle policy version. Returned in the **effectivePolicy** property of a [lifecyclePolicySubjectReport](../resources/identitygovernance-lifecyclepolicysubjectreport.md).

## Properties

| Property | Type | Description |
|:---|:---|:---|
| id | String | The unique identifier of the referenced lifecycle policy. |
| version | Int32 | The version of the referenced lifecycle policy. |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.identityGovernance.lifecyclePolicyReference"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.identityGovernance.lifecyclePolicyReference",
  "id": "String",
  "version": "Integer"
}
```
