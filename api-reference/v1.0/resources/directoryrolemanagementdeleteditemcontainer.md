---
title: "directoryRoleManagementDeletedItemContainer resource type"
description: "Contains soft-deleted custom role definitions for Microsoft Entra directory role management."
author: "simransaxena21"
ms.date: 10/07/2026
ms.localizationpriority: medium
ms.subservice: "entra-directory-management"
doc_type: resourcePageType
---

# directoryRoleManagementDeletedItemContainer resource type

Namespace: microsoft.graph

Contains soft-deleted custom [unifiedRoleDefinition](../resources/unifiedroledefinition.md) objects for Microsoft Entra directory role management. Use this container to list, inspect, restore, or permanently delete custom role definitions that have been soft-deleted.

Inherits from [entity](../resources/entity.md).

## Methods

| Method | Return type | Description |
|:---|:---|:---|
| [List roleDefinitions](../api/directoryrolemanagementdeleteditemcontainer-list-roledefinitions.md) | [unifiedRoleDefinition](../resources/unifiedroledefinition.md) collection | List soft-deleted custom role definitions. |

## Properties

| Property | Type | Description |
|:---|:---|:---|
| id | String | The unique identifier for the container. Inherited from [entity](../resources/entity.md). |

## Relationships

| Relationship | Type | Description |
|:---|:---|:---|
| roleDefinitions | [unifiedRoleDefinition](../resources/unifiedroledefinition.md) collection | The soft-deleted custom role definitions in the directory. |

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
