---
title: "availableAccessPackage resource type"
description: "Represents basic access package information available to end users for access package suggestions and resource discovery."
ms.localizationpriority: medium
author: "myra-ramdenbourg"
ms.subservice: "entra-id-governance"
doc_type: "resourcePageType"
ms.date: 05/14/2026
---

# availableAccessPackage resource type

Namespace: microsoft.graph

In [Microsoft Entra Entitlement Management](../resources/entitlementmanagement-overview.md), an available access package represents basic access package information (id, displayName, description) that is exposed to end users for [suggestions](../resources/accesspackagesuggestion.md) and [resource discovery](../api/availableaccesspackage-list-resourcerolescopes.md) purposes.

This resource provides a simplified view of access packages that can be used in scenarios where end users need to browse available packages without requiring full access package details.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [List resourceRoleScopes](../api/availableaccesspackage-list-resourcerolescopes.md) | [accessPackageResourceRoleScope](../resources/accesspackageresourcerolescope.md) collection | Retrieve the resource role scopes for an available access package. |

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|description|String|The description of the access package.|
|displayName|String|The display name of the access package.|
|id|String|Identifier of the access package. Read-only.|

## Relationships

| Relationship | Type        | Description |
|:-------------|:------------|:------------|
|resourceRoleScopes|[accessPackageResourceRoleScope](../resources/accesspackageresourcerolescope.md) collection|The resource role scopes associated with this available access package.|

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.availableAccessPackage",
  "keyProperty": "id"
}-->

```json
{
  "@odata.type": "#microsoft.graph.availableAccessPackage",
  "id": "String (identifier)",
  "displayName": "String",
  "description": "String"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2026-05-14 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "availableAccessPackage resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
