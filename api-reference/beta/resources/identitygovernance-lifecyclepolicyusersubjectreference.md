---
title: "lifecyclePolicyUserSubjectReference resource type"
description: "Identifies a user represented in a lifecycle policy report. Returned in the **subject** property of a [lifecyclePolicySubjectReport](../resources/identitygovernance-lifecyclepolicysubjectreport.md)."
author: "faithwins"
ms.date: 09/25/2026
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
---

# lifecyclePolicyUserSubjectReference resource type

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Identifies a user represented in a lifecycle policy report. Returned in the **subject** property of a [lifecyclePolicySubjectReport](../resources/identitygovernance-lifecyclepolicysubjectreport.md).
Inherits from [microsoft.graph.identityGovernance.lifecyclePolicySubjectReference](../resources/identitygovernance-lifecyclepolicysubjectreference.md).

## Methods

None.

## Properties

| Property | Type | Description |
|:---|:---|:---|
| id | String | The unique identifier of the user. Inherited from [lifecyclePolicySubjectReference](../resources/identitygovernance-lifecyclepolicysubjectreference.md). |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.identityGovernance.lifecyclePolicyUserSubjectReference",
  "baseType": "microsoft.graph.identityGovernance.lifecyclePolicySubjectReference"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.identityGovernance.lifecyclePolicyUserSubjectReference",
  "id": "String"
}
```
