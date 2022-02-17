---
title: "administrativeUnit resource type"
description: "An administrative unit provides a conceptual container for User and Group directory objects."
ms.localizationpriority: medium
author: "DougKirschner"
ms.prod: "directory-management"
doc_type: resourcePageType
---

# administrativeUnit resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

An administrative unit provides a conceptual container for user, group, and device directory objects. Using administrative units, a company administrator can now delegate administrative responsibilities to manage the users, groups, and devices contained within or scoped to an administrative unit to a regional or departmental administrator.

This resource supports using [delta query](/graph/delta-query-overview) to track incremental additions, deletions, and updates, by providing a [delta](../api/administrativeunit-delta.md) function. This resource is an open type that allows other properties to be passed in.

Let's look at an example. Imagine that Contoso Corp is made up of two divisions - a West Coast Division and an East Coast Division. Directory roles at Contoso are scoped to the entire tenant. Lee, a Contoso company administrator, wants to delegate administrative responsibilities, but scope them to the West Coast Division or the East Coast division.  Lee can create a *West Coast admistrative unit* and place all West Coast users into this administrative unit.  Similarly, Lee can create an *East Coast adminstrative unit*.  Now Lee, can start delegating administrative responsibilities to others, but **scoped** to the new administrative units he's created. Lee places Jennifer in a *helpdesk administrator* role **scoped** to the *West Coast administrative unit*.  This allows Jennifer to reset any user's password, but only if those users are in the *West Coast administrative unit*.  Similarly, Lee places Dave in a *user account administrator* role **scoped** to the *East Coast administrative unit*.  This allows Dave to update users, assign licenses and reset any user's password, but only if those users are in the *East Coast administrative unit*. For a video overview, please see [Introduction to Azure Active Directory Administrative Units](https://channel9.msdn.com/Series/Windows-Azure-Active-Directory/Introduction-to-Azure-Active-Directory-Administrative-Units).

This resource lets you add your own data to custom properties using [extensions](/graph/extensibility-overview).

This topic provides descriptions of the declared properties and navigation properties exposed by the administrativeUnit entity, as well as the operations and functions that can be called on the administrativeUnits resource.


## Methods

| Method   | Return Type | Description |
|:---------------|:--------|:----------|
|[Create](../api/directory-post-administrativeunits.md) | [administrativeUnit](administrativeunit.md) | Create a new administrative unit.|
|[List](../api/directory-list-administrativeunits.md) | [administrativeUnit](administrativeunit.md) collection |List properties of all administrativeUnits.|
|[Get](../api/administrativeunit-get.md) | [administrativeUnit](administrativeunit.md) |Read properties and relationships of a specific administrativeUnit object.|
|[Update](../api/administrativeunit-update.md) | [administrativeUnit](administrativeunit.md)	|Update administrativeUnit object. |
|[Delete](../api/administrativeunit-delete.md) | None |Delete administrativeUnit object. |
|[Get delta](../api/administrativeunit-delta.md)|[administrativeUnit](administrativeunit.md)|Get newly created, updated, or deleted **administrativeUnits** without having to perform a full read of the entire resource collection.|
|[Add a member](../api/administrativeunit-post-members.md) |[directoryObject](directoryobject.md)| Add a member (user, group, or device).|
|[List members](../api/administrativeunit-list-members.md) |[directoryObject](directoryobject.md) collection| Get the list of (user, group, and device) members.|
|[Get a member](../api/administrativeunit-get-members.md) |[directoryObject](directoryobject.md)| Get a specific member.|
|[Remove a member](../api/administrativeunit-delete-members.md) |[directoryObject](directoryobject.md)| Remove a member.|
|[Add scoped-role member](../api/administrativeunit-post-scopedrolemembers.md) |[scopedRoleMembership](scopedrolemembership.md)| Add a scoped-role member.|
|[List scoped-role members](../api/administrativeunit-list-scopedrolemembers.md) |[scopedRoleMembership](scopedrolemembership.md) collection| Get the list of scoped-role administrators.|
|[Get a scoped-role member](../api/administrativeunit-get-scopedrolemembers.md) |[scopedRoleMembership](scopedrolemembership.md)| Get a specific scoped-role member.|
|[Remove a scoped-role member](../api/administrativeunit-delete-scopedrolemembers.md) |[scopedRoleMembership](scopedrolemembership.md)| Remove a scoped-role member.|
|**Open extensions**| | |
|[Create open extension](../api/opentypeextension-post-opentypeextension.md) |[openTypeExtension](opentypeextension.md)| Create an open extension and add custom properties to a new or existing resource.|
|[Get open extension](../api/opentypeextension-get.md) |[openTypeExtension](opentypeextension.md) collection| Get an open extension identified by the extension name.|
|**Schema extensions**| | |
|[Add schema extension values](/graph/extensibility-schema-groups) || Create a schema extension definition and then use it to add custom typed data to a resource.|

> [!NOTE]
> The URL endpoint for calling the **administrativeUnits** API is `/administrativeUnits` in the `beta` endpoint but `/directory/administrativeUnits` in the `v1.0` endpoint.

## Properties

> [!IMPORTANT]
> Specific usage of `$filter` and the `$search` query parameter is supported only when you use the **ConsistencyLevel** header set to `eventual` and `$count`. For more information, see [Advanced query capabilities on Azure AD directory objects](/graph/aad-advanced-queries#administrative-unit-properties).

| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|description|String|An optional description for the administrative unit. Supports `$filter` (`eq`, `ne`, `in`, `startsWith`), `$search`.|
|displayName|String|Display name for the administrative unit. Supports `$filter` (`eq`, `ne`, `not`, `ge`, `le`, `in`, `startsWith`, and `eq` on `null` values), `$search`, and `$orderBy`.|
|id|String|Unique identifier for the administrative unit. Read-only. Supports `$filter` (`eq`).|
|visibility|String|Controls whether the administrative unit and its members are hidden or public. Can be set to `HiddenMembership`. If not set (value is `null`), the default behavior is public. When set to `HiddenMembership`, only members of the administrative unit can list other members of the administrative unit.|

## Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|extensions|[extension](extension.md) collection|The collection of open extensions defined for this administrative unit. Nullable.|
|members|[directoryObject](directoryobject.md) collection|Users and groups that are members of this administrative unit. Supports `$expand`.|
|scopedRoleMembers|[scopedRoleMembership](scopedrolemembership.md) collection| Scoped-role members of this administrative unit.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.administrativeUnit"
}-->

```json
{
  "description": "String",
  "displayName": "String",
  "id": "String (identifier)",
  "visibility": "String"
}

```


## See also

- [Add custom data to resources using extensions](/graph/extensibility-overview)
- [Add custom data to users using open extensions](/graph/extensibility-open-users)
- [Add custom data to groups using schema extensions](/graph/extensibility-schema-groups)


<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "administrativeUnit resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


