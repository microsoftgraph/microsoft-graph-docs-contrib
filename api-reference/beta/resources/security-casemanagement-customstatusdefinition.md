---
title: "customStatusDefinition resource type"
description: "A custom status returned inline within a top-level case status."
author: "noamlandress"
ms.date: 07/20/2026
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# customStatusDefinition resource type

Namespace: microsoft.graph.security.caseManagement

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a custom status returned inline within a top-level [statusDefinition](../resources/security-casemanagement-statusdefinition.md). Because it's an inline complex type rather than an entity, a custom status isn't separately addressable and carries its own **customStatusId** rather than an **id**.

A case that's in a final custom status can't transition to another status. A custom status that was never marked final is treated as not final.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|customStatusId|String|The immutable identifier of the custom status.|
|displayName|String|The human-readable label of the custom status.|
|isFinal|Boolean|`true` if this is a terminal status; a case in a final status can't transition to another status. Otherwise, `false`.|
|sortOrder|Int32|The display order of the custom status within its parent status.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.caseManagement.customStatusDefinition"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.caseManagement.customStatusDefinition",
  "customStatusId": "String",
  "displayName": "String",
  "sortOrder": "Int32",
  "isFinal": "Boolean"
}
```
