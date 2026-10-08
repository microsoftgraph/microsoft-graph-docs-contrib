---
title: "policyConfiguration resource type"
description: "Represents the effective configuration that applies to policy evaluation scenarios."
author: "zhengnlu"
ms.date: 09/23/2026
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# policyConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the effective configuration that applies to policy evaluation scenarios. This type is used by the **policyConfiguration** property of [policyScopeBase](../resources/policyscopebase.md).

## Methods

None.

## Properties

| Property | Type | Description |
| :--- | :--- | :--- |
| errorSettings | [errorSettings](../resources/errorsettings.md) | Settings that control enforcement behavior when policy evaluation can't be completed. |
| lastModifiedDateTime | DateTimeOffset | The date and time when the effective policy configuration was last modified. The timestamp is always in UTC. |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.policyConfiguration"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.policyConfiguration",
  "errorSettings": {
    "@odata.type": "#microsoft.graph.errorSettings"
  },
  "lastModifiedDateTime": "DateTimeOffset"
}
```
