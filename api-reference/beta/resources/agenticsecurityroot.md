---
title: "agenticSecurityRoot resource type"
description: "Provides access to playbook definitions and agentic security sessions."
author: "berver"
ms.date: 10/22/2026
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# agenticSecurityRoot resource type

Namespace: microsoft.graph

Provides access to playbook definitions and agentic security sessions. Use its child collections; reading, updating, or deleting this container directly isn't supported.

Inherits from [entity](../resources/entity.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List playbookDefinitions](../api/agenticsecurityroot-list-playbookdefinitions.md)|[playbookDefinition](../resources/playbookdefinition.md) collection|Get the playbook catalog.|
|[List sessions](../api/agenticsecurityroot-list-sessions.md)|[investigationSession](../resources/investigationsession.md) collection|Get the caller's sessions.|
|[Create session](../api/agenticsecurityroot-post-sessions.md)|[investigationSession](../resources/investigationsession.md)|Start a playbook execution.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique, read-only identifier of the resource.|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|playbookDefinitions|[playbookDefinition](../resources/playbookdefinition.md) collection|The read-only playbook catalog. Supports list and keyed GET with `$select`. Doesn't support `$filter`, `$orderby`, `$search`, `$expand`, `$count`, `$top`, `$skip`, or delta tracking.|
|sessions|[investigationSession](../resources/investigationsession.md) collection|The agentic sessions visible to the caller. Supports list with `$filter` on **status** (`eq`, `or`, `in`), `$top`, and `$select`; session creation; and keyed reads. Doesn't support `$count`, `$orderby`, `$search`, `$expand`, `$skip`, or delta tracking.|

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.agenticSecurityRoot",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.agenticSecurityRoot",
  "id": "String (identifier)"
}
```
