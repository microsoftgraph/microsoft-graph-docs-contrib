---
title: "accessPackageResourceRole resource type"
description: "A reference to a role defined in a resource."
ms.localizationpriority: medium
author: "markwahl-msft"
ms.subservice: "entra-id-governance"
doc_type: "resourcePageType"
ms.date: 05/23/2024
---

# accessPackageResourceRole resource type

Namespace: microsoft.graph

In [Microsoft Entra entitlement management](entitlementmanagement-overview.md), an access package resource role is a reference to a role defined in a resource. These roles are automatically present after a resource is added to an access package catalog. A group can have two roles, one for the owner and another for the member. An application's roles are defined the application manifest. The roles along with the scopes of a resource in a catalog can be retrieved by [listing the catalog resources](../api/accesspackagecatalog-list-resources.md) and expanding the `roles` and `scopes` of the resource. Those references to the role and scope can be used after creating an access package in that catalog, to specify the roles of each of the catalog's resources into which an access package should deliver, by [creating an access package resource role scope](../api/accesspackage-post-resourcerolescopes.md).

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [List](../api/accesspackagecatalog-list-resourceroles.md) | [accessPackageResourceRole](accesspackageresourcerole.md) collection | Retrieve a list of accessPackageResourceRole objects for a catalog. |

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|description|String|A description for the resource role.|
|displayName|String|The display name of the resource role such as the role defined by the application.|
|id|String| Read-only.|
|originId|String|The unique identifier of the resource role in the origin system. For a SharePoint Online site, the originId is the sequence number of the role in the site. |
|originSystem|String|The type of the resource in the origin system, such as `SharePointOnline`, `AadApplication`, or `AadGroup`.|

## Relationships

| Relationship | Type        | Description |
|:-------------|:------------|:------------|
|resource|[accessPackageResource](accesspackageresource.md)| Read-only. Nullable.|

## JSON representation

The following JSON representation shows the resource.

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
