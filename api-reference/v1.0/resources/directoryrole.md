---
title: "directoryRole resource type"
description: "Represents a Microsoft Entra directory role. Microsoft Entra directory roles are also known as *administrator roles*."
ms.localizationpriority: high
author: "DougKirschner"
ms.reviewer: msodsrbac
ms.subservice: "entra-directory-management"
doc_type: resourcePageType
ms.date: 10/18/2024
---

# directoryRole resource type

Namespace: microsoft.graph

> [!NOTE]
> Microsoft recommends that you use the unified RBAC API instead of this API. The unified RBAC API provides more functionality and flexibility. For more information, see [unifiedRoleDefinition resource type](./unifiedroledefinition.md).

Represents a Microsoft Entra directory role. Microsoft Entra directory roles are also known as *administrator roles*. For more information about directory (administrator) roles, see [Assigning Microsoft Entra administrator roles](/azure/active-directory/users-groups-roles/directory-assign-admin-roles). With the Microsoft Graph, you can assign users to directory roles to grant them the permissions of the target role. To read a directory role or update its members, it must first be activated in the tenant. Only the Company Administrators directory role is activated by default. To activate other available directory roles you send a POST request with the ID of the [directoryRoleTemplate](directoryroletemplate.md) on which the directory role is based. [List directory role templates](../api/directoryroletemplate-list.md) to get all the other available directory roles. Inherits from [directoryObject](directoryobject.md).

This resource supports:

- Using [delta query](/graph/delta-query-overview) to track incremental additions, deletions, and updates, by providing a [delta](../api/directoryrole-delta.md) function.

## Methods

| Method       | Return Type  |Description|
|:---------------|:--------|:----------|
|[Get directory role](../api/directoryrole-get.md) | [directoryRole](directoryrole.md) | Read properties and relationships of directoryRole object. |
|[List directory roles](../api/directoryrole-list.md) | [directoryRole](directoryrole.md) collection | List the directory roles that are activated in the tenant. |
|[Add member](../api/directoryrole-post-members.md) |[directoryObject](directoryobject.md)| Add a user to the directory role by posting to the members navigation property.|
|[List members](../api/directoryrole-list-members.md) |[directoryObject](directoryobject.md) collection| Get the users that are members of the directory role from the members navigation property.|
|[Remove member](../api/directoryrole-delete-member.md) |[directoryObject](directoryobject.md)| Remove a user from the directory role.|
|[Activate directory role](../api/directoryrole-post-directoryroles.md) |[directoryRole](directoryrole.md) | Activate a directory role.|
|[List scoped members](../api/directoryrole-list-scopedmembers.md) |[scopedRoleMembership](scopedrolemembership.md) collection| List the members of this directory role that are scoped to [administrative units](administrativeunit.md), through the scopedRoleMembership resource collection.|
|[Get delta](../api/directoryrole-delta.md)|directoryRole collection| Get incremental changes for directory roles. |

## Properties
| Property   | Type | Description |
|:---------------|:--------|:----------|
|description|String|The description for the directory role. Read-only. Supports `$filter` (`eq`), `$search`, `$select`. |
|displayName|String|The display name for the directory role. Read-only. Supports `$filter` (`eq`), `$search`, `$select`. |
|id|String|The unique identifier for the directory role. Inherited from [directoryObject](directoryobject.md). Key, Not nullable, Read-only. Supports `$filter` (`eq`), `$select`.|
|roleTemplateId|String| The **id** of the [directoryRoleTemplate](directoryroletemplate.md) that this role is based on. The property must be specified when activating a directory role in a tenant with a POST operation. After the directory role has been activated, the property is read only. Supports `$filter` (`eq`), `$select`. |

## Relationships
| Relationship | Type |Description|
|:---------------|:--------|:----------|
|members|[directoryObject](directoryobject.md) collection|Users that are members of this directory role. HTTP Methods: GET, POST, DELETE. Read-only. Nullable. Supports `$expand`.|
|scopedMembers|[scopedRoleMembership](scopedrolemembership.md) collection| Members of this directory role that are scoped to [administrative units](administrativeunit.md). Read-only. Nullable.|

## JSON representation

The following JSON representation shows the resource type.

<!--{
  "blockType": "resource",
  "openType": true,
  "optionalProperties": [
    "memberOf",
    "members",
    "ownedObjects",
    "owners"
  ],
  "keyProperty": "id",
  "baseType": "microsoft.graph.directoryObject",
  "@odata.type": "microsoft.graph.directoryRole",
  "@odata.annotations": [
    {
      "capabilities": {
        "toppable": false
      }
    }
  ]
}-->

```json
{
  "description": "string",
  "displayName": "string",
  "id": "string (identifier)",
  "roleTemplateId": "string"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "directoryRole resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
