---
title: "administrativeUnit resource type"
description: "An administrative unit provides a conceptual container for User and Group directory objects."
ms.localizationpriority: medium
author: "DougKirschner"
ms.subservice: "entra-directory-management"
doc_type: resourcePageType
ms.date: 11/26/2024
---

# administrativeUnit resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

An administrative unit provides a conceptual container for user, group, and device directory objects. With administrative units, a company administrator can now delegate administrative responsibilities to manage the users, groups, and devices contained within or scoped to an administrative unit to a regional or departmental administrator. For more information about administrative units, see [Administrative units in Microsoft Entra ID](/entra/identity/role-based-access-control/administrative-units).

This resource is an open type that allows additional properties beyond those documented here.

This resource supports:

- Adding your own data to custom properties as [extensions](/graph/extensibility-overview).
- Using [delta query](/graph/delta-query-overview) to track incremental additions, deletions, and updates, by providing a [delta](../api/user-delta.md) function.
- [OData query capabilities](/graph/query-parameters) including `$select`, `$filter`, `$search`, and `$top`. Specific usages are supported only with [Advanced query capabilities](/graph/aad-advanced-queries#group-properties).

## Methods

| Method | Return Type | Description |
|:---------------|:--------|:----------|
|[Create](../api/directory-post-administrativeunits.md) | [administrativeUnit](administrativeunit.md) | Create a new administrative unit.|
|[List](../api/directory-list-administrativeunits.md) | [administrativeUnit](administrativeunit.md) collection |List properties of all administrativeUnits.|
|[Get](../api/administrativeunit-get.md) | [administrativeUnit](administrativeunit.md) |Read properties and relationships of a specific administrativeUnit object.|
|[Update](../api/administrativeunit-update.md) | [administrativeUnit](administrativeunit.md)    |Update administrativeUnit object. |
|[Delete](../api/administrativeunit-delete.md) | None |Delete administrativeUnit object. |
|[Get delta](../api/administrativeunit-delta.md)|[administrativeUnit](administrativeunit.md)|Get newly created, updated, or deleted **administrativeUnits** without having to perform a full read of the entire resource collection.|
|**Memberships**| | |
|[Add member](../api/administrativeunit-post-members.md) |[directoryObject](directoryobject.md)| Add a member (user or group).|
|[List members](../api/administrativeunit-list-members.md) |[directoryObject](directoryobject.md) collection| Get the list of (user and group) members.|
|[Get member](../api/administrativeunit-get-members.md) |[directoryObject](directoryobject.md)| Get a specific member.|
|[Remove member](../api/administrativeunit-delete-members.md) |[directoryObject](directoryobject.md)| Remove a member.|
|**Role assignments**| | |
|[Assign role with scope](../api/administrativeunit-post-scopedrolemembers.md) |[scopedRoleMembership](scopedrolemembership.md)| Assign a Microsoft Entra role with administrative unit scope.|
|[List role assignments with scope](../api/administrativeunit-list-scopedrolemembers.md) |[scopedRoleMembership](scopedrolemembership.md) collection| List Microsoft Entra role assignments with administrative unit scope.|
|[Get role assignment with scope](../api/administrativeunit-get-scopedrolemembers.md) |[scopedRoleMembership](scopedrolemembership.md)| Get a Microsoft Entra role assignment with administrative unit scope.|
|[Remove role assignment with scope](../api/administrativeunit-delete-scopedrolemembers.md) |[scopedRoleMembership](scopedrolemembership.md)| Remove a Microsoft Entra role assignment with administrative unit scope.|
|**Deleted items**| | |
|[List](../api/directory-deleteditems-list.md) | [directoryObject](directoryobject.md) collection | Retrieve a list of recently deleted administrative units from a collection of directory objects. |
|[Get](../api/directory-deleteditems-get.md) | [directoryObject](directoryobject.md) | Retrieve the properties of a recently deleted administrative unit object. |
|[Restore](../api/directory-deleteditems-restore.md) | [directoryObject](directoryobject.md) | Restore a recently deleted administrative unit object. |

> [!NOTE]
> The URL endpoint for calling the **administrativeUnits** API is `/administrativeUnits` in the `beta` endpoint but `/directory/administrativeUnits` in the `v1.0` endpoint.

## Properties

> [!IMPORTANT]
> Specific usage of `$filter` and the `$search` query parameter is supported only when you use the **ConsistencyLevel** header set to `eventual` and `$count`. For more information, see [Advanced query capabilities on directory objects](/graph/aad-advanced-queries#administrative-unit-properties).

| Property.  | Type    |Description|
|:---------------|:--------|:----------|
|description|String|An optional description for the administrative unit. Supports `$filter` (`eq`, `ne`, `in`, `startsWith`), `$search`.|
|displayName|String|Display name for the administrative unit. Maximum length is 256 characters. Supports `$filter` (`eq`, `ne`, `not`, `ge`, `le`, `in`, `startsWith`, and `eq` on `null` values), `$search`, and `$orderby`.|
|id|String|Unique identifier for the administrative unit. Read-only. Supports `$filter` (`eq`).|
|isMemberManagementRestricted|Boolean|`true` if members of this administrative unit should be treated as sensitive, which requires specific permissions to manage. If not set, the default value is `null` and the default behavior is false. Use this property to define administrative units with roles that don't inherit from tenant-level administrators, and where the management of individual member objects is limited to administrators scoped to a restricted management administrative unit. This property is immutable and can't be changed later. <br/><br/> For more information on how to work with restricted management administrative units, see [Restricted management administrative units in Microsoft Entra ID](/entra/identity/role-based-access-control/admin-units-restricted-management).|
| membershipRule | String | The dynamic membership rule for the administrative unit. For more information about the rules you can use for dynamic administrative units and dynamic groups, see [Manage rules for dynamic membership groups in Microsoft Entra ID](/entra/identity/users/groups-dynamic-membership). |
| membershipRuleProcessingState | String | Controls whether the dynamic membership rule is actively processed. Set to `On` to activate the dynamic membership rule, or `Paused` to stop updating membership dynamically. |
| membershipType | String | Indicates the membership type for the administrative unit. The possible values are: `dynamic`, `assigned`. If not set, the default value is `null` and the default behavior is assigned. |
| visibility | String | Controls whether the administrative unit and its members are hidden or public. Can be set to `HiddenMembership` or `Public`. If not set, the default value is `null` and the default behavior is public. When set to `HiddenMembership`, only members of the administrative unit can list other members of the administrative unit. |

> [!TIP]
> Directory extensions and associated data are returned by default while schema extensions and associated data returned only on `$select`.

## Relationships
| Relationship | Type    |Description|
|:---------------|:--------|:----------|
|extensions|[extension](extension.md) collection|The collection of open extensions defined for this administrative unit. Nullable.|
|members|[directoryObject](directoryobject.md) collection|Users and groups that are members of this administrative unit. Supports `$expand`.|
|scopedRoleMembers|[scopedRoleMembership](scopedrolemembership.md) collection| Scoped-role members of this administrative unit.|

## JSON representation

The following JSON representation shows the resource type.

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
  "isMemberManagementRestricted": "Boolean",
  "membershipRule": "String",
  "membershipRuleProcessingState": "String",
  "membershipType": "String",
  "visibility": "String"
}
```


## Related content

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
