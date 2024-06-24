---
title: "assignedLabel resource type"
description: "Represents a sensitivity label assigned to a Microsoft 365 group."
ms.localizationpriority: medium
author: "yuhko-msft"
ms.reviewer: "mbhargav, khotzteam, aadgroupssg"
ms.subservice: "entra-groups"
doc_type: resourcePageType
---

# assignedLabel resource type

Namespace: microsoft.graph

Represents a sensitivity label assigned to a Microsoft 365 group. Sensitivity labels allow administrators to enforce specific group settings on a group by assigning a classification to the group (such as Confidential, Highly Confidential or General). Sensitivity labels are published by administrators in Microsoft 365 Security and Compliance Center as part of Microsoft Purview Information Protection capabilities. For more information about sensitivity labels, see [Sensitivity labels overview](/microsoft-365/compliance/sensitivity-labels).

## Properties

| Property    | Type   | Description                               |
| :---------- | :----- | :---------------------------------------- |
| displayName | String | The display name of the label. Read-only. |
| labelId     | String | The unique identifier of the label.       |

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [
  ],
  "@odata.type": "microsoft.graph.assignedLabel"
}-->

```json
{
  "displayName": "String",
  "labelId": "String"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "assignedLabel resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
