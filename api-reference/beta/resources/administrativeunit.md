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

An administrative unit provides a conceptual container for user, group, and device directory objects. Using administrative units, a company administrator can now delegate administrative responsibilities to manage the users, groups, and devices contained within or scoped to an administrative unit to a regional or departmental administrator. This resource is an open type that allows other properties to be passed in.

This resource supports using [delta query](/graph/delta-query-overview) to track incremental additions, deletions, and updates, by providing a [delta](../api/administrativeunit-delta.md) function. 

Let's look at an example. Imagine that Contoso Corp is made up of two divisions - a West Coast Division and an East Coast Division. Directory roles at Contoso are scoped to the entire tenant. Lee, a Contoso company administrator, wants to delegate administrative responsibilities, but scope them to the West Coast Division or the East Coast division.  Lee can create a *West Coast admistrative unit* and place all West Coast users into this administrative unit.  Similarly, Lee can create an *East Coast adminstrative unit*.  Now Lee, can start delegating administrative responsibilities to others, but **scoped** to the new administrative units he's created. Lee places Jennifer in a *helpdesk administrator* role **scoped** to the *West Coast administrative unit*.  This allows Jennifer to reset any user's password, but only if those users are in the *West Coast administrative unit*.  Similarly, Lee places Dave in a *user account administrator* role **scoped** to the *East Coast administrative unit*.  This allows Dave to update users, assign licenses and reset any user's password, but only if those users are in the *East Coast administrative unit*. For a video overview, please see [Introduction to Azure Active Directory Administrative Units](https://channel9.msdn.com/Series/Windows-Azure-Active-Directory/Introduction-to-Azure-Active-Directory-Administrative-Units).

This resource supports:

- Adding your own data to custom properties as [extensions](/graph/extensibility-overview).
- Using [delta query](/graph/delta-query-overview) to track incremental additions, deletions, and updates, by providing a [delta](../api/user-delta.md) function.


## Methods

| Method   | Return Type | Description |
|:---------------|:--------|:----------|
|[Create](../api/directory-post-administrativeunits.md) | [administrativeUnit](administrativeunit.md) | Create a new administrative unit.|
|[List](../api/directory-list-administrativeunits.md) | [administrativeUnit](administrativeunit.md) collection |List properties of all administrativeUnits.|
|[Get](../api/administrativeunit-get.md) | [administrativeUnit](administrativeunit.md) |Read properties and relationships of a specific administrativeUnit object.|
|[Update](../api/administrativeunit-update.md) | [administrativeUnit](administrativeunit.md)	|Update administrativeUnit object. |
|[Delete](../api/administrativeunit-delete.md) | None |Delete administrativeUnit object. |
|[Get delta](../api/administrativeunit-delta.md)|[administrativeUnit](administrativeunit.md)|Get newly created, updated, or deleted **administrativeUnits** without having to perform a full read of the entire resource collection.|
|[Add a member](../api/administrativeunit-post-members.md) |[directoryObject](directoryobject.md)| Add a member (user or group).|
|[List members](../api/administrativeunit-list-members.md) |[directoryObject](directoryobject.md) collection| Get the list of (user and group) members.|
|[Get a member](../api/administrativeunit-get-members.md) |[directoryObject](directoryobject.md)| Get a specific member.|
|[Remove a member](../api/administrativeunit-delete-members.md) |[directoryObject](directoryobject.md)| Remove a member.|
|[Add a scopedRoleMember](../api/administrativeunit-post-scopedrolemembers.md) |[scopedRoleMembership](scopedrolemembership.md)| Assign an Azure AD role with administrative unit scope.|
|[List scopedRoleMembers](../api/administrativeunit-list-scopedrolemembers.md) |[scopedRoleMembership](scopedrolemembership.md) collection| List Azure AD role assignments with administrative unit scope.|
|[Get a scopedRoleMember](../api/administrativeunit-get-scopedrolemembers.md) |[scopedRoleMembership](scopedrolemembership.md)| Get an Azure AD role assignment with administrative unit scope.|
|[Remove a scopedRoleMember](../api/administrativeunit-delete-scopedrolemembers.md) |[scopedRoleMembership](scopedrolemembership.md)| Remove an Azure AD role assignment with administrative unit scope.|
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
|isMemberManagementRestricted|Boolean|`true` if members of this administrative unit should be treated as sensitive, which requires specific permissions to manage. Default value is `false`. Use this property to define administrative units whose roles don't inherit from tenant-level administrators, and management of individual member objects is limited to administrators scoped to a restricted management administrative unit. Immutable, so cannot be changed later. <br/><br/> For more information about working with restricted management administrative units, see [Restricted management administrative units in Azure Active Directory](/azure/active-directory/roles/admin-units-restricted-management).|
| membershipRule | String | Dynamic membership rule for the administrative unit. For more about the rules that you can use for dynamic administrative units and dynamic groups, see [Using attributes to create advanced rules](https://azure.microsoft.com/documentation/articles/active-directory-accessmanagement-groups-with-advanced-rules/). |
| membershipRuleProcessingState | String | Used to control whether the dynamic membership rule is actively processed. Set to `On` when you want the dynamic membership rule to be active and `Paused` if you want to stop updating membership dynamically. If not set, the default behavior is `Paused`. |
| membershipType | String | Membership type for the administrative unit. Can be `dynamic` or `assigned`. If not set, the default behavior is `assigned`. |
| visibility | String | Controls whether the administrative unit and its members are hidden or public. Can be set to `HiddenMembership` or `Public`. If not set, the default behavior is `Public`. When set to `HiddenMembership`, only members of the administrative unit can list other members of the administrative unit. |

> [!TIP]
> Directory extensions and associated data are returned by default while schema extensions and associated data returned only on `$select`.

## Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|extensions|[extension](extension.md) collection|The collection of open extensions defined for this administrative unit. Nullable.|
|members|[directoryObject](directoryobject.md) collection|Users and groups that are members of this administrative unit. Supports `$expand`.|
|scopedRoleMembers|[scopedRoleMembership](scopedrolemembership.md) collection| Scoped-role members of this administrative unit.|

## JSON representation

Here is a JSON representation of the resource.

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
  "visibility": "String",
  "membershipType": "String",
  "membershipRule": "String",
  "membershipRuleProcessingState": "String"
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


