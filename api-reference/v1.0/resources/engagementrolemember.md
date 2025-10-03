---
title: "engagementRoleMember resource type"
description: "Represents the role member management in Viva Engage which involves assigning and managing various administrative roles and corp comm role within the Viva Engage platform."
author: "richafnu"
ms.date: 09/22/2025
ms.localizationpriority: medium
ms.subservice: "viva-engage"
doc_type: resourcePageType
---

# engagementRoleMember resource type

Namespace: microsoft.graph

<!-- Viva Engage handles role member management by assigning and managing various member roles within the platform.  -->

The engagement role member resource type represents the assignment of a Viva Engage role to a user. Each role member links a predefined role to a specific user, and multiple users can be assigned to the same role.

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/engagementrole-list-members.md)|[engagementRoleMember](../resources/engagementrolemember.md) collection|Get a list of users with assigned roles in Viva Engage.|
|[Create](../api/engagementrole-post-members.md)|None|Assign Viva Engage role to a user.|
|[Delete](../api/engagementrole-delete-members.md)|None|Revoke assigned Viva Engage role for a user.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|The timestamp when the role was assigned to the user.|
|id|String|The unique identifier of the role member resource. Read-only. Inherited from [entity](../resources/entity.md). |
|userId|String|The Microsoft Entra ID of the user who has the role assigned.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.engagementrolemember",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.engagementRoleMember",
  "id": "String (identifier)",
  "userId": "String",
  "createdDateTime": "String (timestamp)"
}
```
