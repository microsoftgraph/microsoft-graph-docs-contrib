---
title: "directoryRoleManagementDeletedItemContainer resource type"
description: "Contains soft-deleted custom role definitions for Microsoft Entra directory role management."
author: "simransaxena21"
ms.date: 09/29/2026
ms.localizationpriority: medium
ms.subservice: "entra-directory-management"
doc_type: resourcePageType
---

# directoryRoleManagementDeletedItemContainer resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Contains soft-deleted custom [unifiedRoleDefinition](unifiedroledefinition.md) objects for Microsoft Entra directory role management. Use this container to list, inspect, restore, or permanently delete custom role definitions that have been soft-deleted.

Inherits from [entity](entity.md).

## Methods

| Method | Return type | Description |
|:---|:---|:---|
| [List role definitions](../api/directoryrolemanagementdeleteditemcontainer-list-roledefinitions.md) | [unifiedRoleDefinition](unifiedroledefinition.md) collection | List soft-deleted custom role definitions. |

## Properties

| Property | Type | Description |
|:---|:---|:---|
| id | String | The unique identifier for the container. Inherited from [entity](entity.md). |

## Relationships

| Relationship | Type | Description |
|:---|:---|:---|
| roleDefinitions | [unifiedRoleDefinition](unifiedroledefinition.md) collection | The soft-deleted custom role definitions in the directory. |

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.directoryRoleManagementDeletedItemContainer",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->

```json
{
  "@odata.type": "#microsoft.graph.directoryRoleManagementDeletedItemContainer",
  "id": "String (identifier)"
}
```
