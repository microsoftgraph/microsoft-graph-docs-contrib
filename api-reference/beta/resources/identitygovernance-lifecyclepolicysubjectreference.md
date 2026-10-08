---
title: "lifecyclePolicySubjectReference resource type"
description: "An abstract type that identifies a subject represented in lifecycle policy reporting. Returned in the **subject** property of a [lifecyclePolicySubjectReport](../resources/identitygovernance-lifecyclepolicysubjectreport.md)."
author: "faithwins"
ms.date: 09/25/2026
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
---

# lifecyclePolicySubjectReference resource type

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

An abstract type that identifies a subject represented in lifecycle policy reporting. Returned in the **subject** property of a [lifecyclePolicySubjectReport](../resources/identitygovernance-lifecyclepolicysubjectreport.md).

## Methods

None.

## Properties

| Property | Type | Description |
|:---|:---|:---|
| id | String | The unique identifier of the subject. |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.identityGovernance.lifecyclePolicySubjectReference"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.identityGovernance.lifecyclePolicySubjectReference",
  "id": "String"
}
```
