---
title: "scopedRoleMembership resource type"
description: "A scoped-role membership describes a user's membership of a directory role, that is further scoped to an Administrative Unit.  Scoped-role membership provides a mechanism to allow a tenant-wide company administrator to delegate administrative privileges to a user to manage users and groups in a subset of the organization.
ms.localizationpriority: medium
doc_type: resourcePageType
ms.subservice: "entra-directory-management"
author: "DougKirschner"
---

# scopedRoleMembership resource type

Namespace: microsoft.graph

A scoped-role membership describes a user's membership of a directory role that is further scoped to an Administrative Unit.  Scoped-role membership provides a mechanism to allow a tenant-wide company administrator to delegate administrative privileges to a user, to manage users and groups in a subset of the organization.

## Methods
Direct queries to this resource aren't supported.  See the [administrative units](administrativeunit.md) article to see information on how to query for scoped-role memberships, and adding and removing scoped-role memberships.

## Properties
| Property   | Type | Description |
|:---------------|:--------|:----------|
|administrativeUnitId|string|Unique identifier for the administrative unit that the directory role is scoped to|
|ID|string| Unique identifier for the scoped-role membership. Read-only.|
|roleId|string| Unique identifier for the directory role that the member is in.|
|roleMemberInfo|[identity](identity.md)| Role member identity information. Represents the user that is a member of this scoped-role.|

## Relationships
None


## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.scopedRoleMembership"
}-->

```json
{
  "administrativeUnitId": "string",
  "id": "string (identifier)",
  "roleId": "string",
  "roleMemberInfo": {"@odata.type": "microsoft.graph.identity"}
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "scopedRoleMembership resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
