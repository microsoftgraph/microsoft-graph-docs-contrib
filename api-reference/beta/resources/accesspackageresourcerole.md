---
title: "accessPackageResourceRole resource type"
description: "A reference to a role defined in a resource."
ms.localizationpriority: medium
author: "markwahl-msft"
ms.subservice: "entra-id-governance"
doc_type: "resourcePageType"
ms.date: 05/24/2024
---

# accessPackageResourceRole resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

In [Microsoft Entra entitlement management](entitlementmanagement-overview.md), an access package resource role is a reference to a role defined in a resource. These are automatically present after [a resource is added to an access package catalog](../api/entitlementmanagement-post-accesspackageresourcerequests.md). That reference can be used after creating an access package to specify the roles of each of the catalog's resources into which an access package should deliver, by [creating an access package resource role scope](../api/accesspackage-post-accesspackageresourcerolescopes.md).

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [List](../api/accesspackagecatalog-list-accesspackageresourceroles.md) | [accessPackageResourceRole](accesspackageresourcerole.md) collection | Retrieve a list of accessPackageResourceRole objects for a catalog. |

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|description|String|A description for the resource role.|
|displayName|String|The display name of the resource role such as the role defined by the application.|
|id|String| Read-only.|
|originId|String|The unique identifier of the resource role in the origin system. For a SharePoint Online site, the originId is the sequence number of the role in the site. |
|originSystem|String|The type of the resource in the origin system, such as `SharePointOnline`, `AadApplication` or `AadGroup`.|

## Relationships

| Relationship | Type        | Description |
|:-------------|:------------|:------------|
|accessPackageResource|[accessPackageResource](accesspackageresource.md)| Read-only. Nullable.|

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.accessPackageResourceRole",
  "keyProperty": "id"
}-->

```json
{
  "description": "String",
  "displayName": "String",
  "id": "String (identifier)",
  "originId": "String",
  "originSystem": "String"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "accessPackageResourceRole resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
