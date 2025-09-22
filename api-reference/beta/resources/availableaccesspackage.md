---
title: "availableAccessPackage resource type"
description: "Represents basic access package information available to end users for access package suggestions and resource discovery."
ms.localizationpriority: medium
author: "myra-ramdenbourg"
ms.subservice: "entra-id-governance"
doc_type: "resourcePageType"
ms.date: 09/18/2025
---

# availableAccessPackage resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

In [Microsoft Entra Entitlement Management](entitlementmanagement-overview.md), an available access package represents basic access package information (id, displayName, description) that is exposed to end users for suggestions and resource discovery purposes.

This resource provides a simplified view of access packages that can be used in scenarios where end users need to browse available packages without requiring full access package details.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [List](../api/availableaccesspackage-list-resourcerolescopes.md) | [accessPackageResourceRoleScope](accesspackageresourcerolescope.md) collection | Retrieve the resource role scopes for an available access package. |

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|description|String|The description of the access package.|
|displayName|String|The display name of the access package.|
|id|String|Identifier of the access package. Read-only.|

## Relationships

| Relationship | Type        | Description |
|:-------------|:------------|:------------|
|resourceRoleScopes|[accessPackageResourceRoleScope](accesspackageresourcerolescope.md) collection|The resource role scopes associated with this available access package.|

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
  "id": "360fa7de-90be-48dc-a2ce-fc40094a93dd",
  "displayName": "Marketing Team Access",
  "description": "Access package providing marketing team resources and permissions"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2025-09-18 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "availableAccessPackage resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->