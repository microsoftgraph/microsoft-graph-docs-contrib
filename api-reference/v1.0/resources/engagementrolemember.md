---
title: "engagementRoleMember resource type"
description: "Represents the role of member management in Viva Engage, which involves assigning and managing various administrative roles and the corporate communications role within the Viva Engage platform."
author: "richafnu"
ms.date: 09/22/2025
ms.localizationpriority: medium
ms.subservice: "viva-engage"
doc_type: resourcePageType
---

# engagementRoleMember resource type

Namespace: microsoft.graph

<!-- Viva Engage handles role member management by assigning and managing various member roles within the platform.  -->

Represents the role of member management in Viva Engage, which involves assigning and managing various administrative roles and the corporate communications role within the Viva Engage platform. Each role member links a predefined role to a specific user, and multiple users can be assigned to the same role.

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/engagementrole-list-members.md)|[engagementRoleMember](../resources/engagementrolemember.md) collection|Get a list of users with assigned [roles](../resources/engagementrole.md) in Viva Engage.|
|[Create](../api/engagementrole-post-members.md)|[engagementRoleMember](../resources/engagementrolemember.md)|Create a new [engagementRoleMember](../resources/engagementrolemember.md) object that assigns a Viva Engage role to a user.|
|[Delete](../api/engagementrole-delete-members.md)|None|Delete a Viva Engage [role](../resources/engagementrolemember.md) from a user.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|The date and time when the role was assigned to the user. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|id|String|The unique identifier of the **engagementRoleMember** object. Read-only. Inherited from [entity](../resources/entity.md). |
|userId|String|The Microsoft Entra ID of the user who has the role assigned.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|user|[user](../resources/user.md)|The user who has this role assigned.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.engagementRoleMember",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.engagementRoleMember",
  "createdDateTime": "String (timestamp)",
  "id": "String (identifier)",
  "userId": "String"
}
```
